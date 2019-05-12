class Api::NotebooksController < InheritedResources::Base
  skip_before_action :verify_authenticity_token
  skip_after_action :verify_authorized

  def index
    skip_policy_scope
    # @notebooks = Notebook.all
    # @notebook_recipes_select = Recipe.all.map { |v| [v.title, v.id] }.to_a
    @notebooks = Notebook.includes(:recipes).all.with_attached_image
    render json: @notebooks.as_json(include: [
      :recipes,
    ], methods: %i(image_url))
  end

  def show
    find_notebook
    notebook = @notebook.as_json(:include => [:recipes])
    render json: notebook, status: :ok
  end

  def new
    skip_authorization
    @notebook = Notebook.new
  end

  def create
    new_notebook = Notebook.new(notebook_params_api)
    if new_notebook.title.empty? || new_notebook.description.empty?
      render json: new_notebook.errors, status: :unprocessable_entity
    else
      if new_notebook.save
        render json: new_notebook, status: :created, location: new_api_notebook_url(new_notebook)
      else
        render json: new_notebook.errors, status: :unprocessable_entity
      end
    end
  end

  def update
    find_notebook
    if @notebook.update(notebook_params_without_recipes)
      if @notebook.image.blob.content_type.starts_with?('image/')
        render :json => { Status: "OK", Cause: "Nouvelle recette créée." }.as_json
        # redirect_to notebook_path, flash: { success: t("notebook.edit.valid") }
      else
        render :json => { Status: "KO", Cause: "Fichier image invalide" }.as_json
        # redirect_to edit_notebook_path(@notebook),
        #            flash: { danger: t("notebook.edit.invalid_image") }
      end
    else
      render :json => { Status: "KO", Cause: "Recette invalide" }.as_json
    end
  end

  def add_recipe
    @notebook = Notebook.find(params[:notebook_id])
    tmp = Recipe.find_by_id(params[:notebook][:recipe_id])
    if !@notebook.recipes.exists?(:id => tmp.id)
      @notebook.recipes << tmp
      new_notebook = @notebook.as_json(:include => [:recipes])
      render json: new_notebook, status: :created, location: new_api_notebook_url(new_notebook)
    else
      new_notebook = @notebook.as_json(:include => [:recipes])
      render json: new_notebook, status: :conflict, location: new_api_notebook_url(new_notebook)
    end
  end

  def destroy
    find_notebook
    @notebook.destroy
    render :json => { Status: "OK", Cause: "Votre recette à été supprimé" }.as_json
  end

  def remove_recipe
    @notebook = Notebook.find(params[:notebook_id])
    tmp = Recipe.find_by_id(params[:notebook][:recipe_id])
    @notebook.recipes.delete(tmp)
    new_notebook = @notebook.as_json(:include => [:recipes])
    render json: new_notebook, status: :created, location: new_api_notebook_url(new_notebook)
  end

  def user_notebook_id
    skip_policy_scope
    begin
      user = User.find(params[:user_id])
    rescue ActiveRecord::RecordNotFound
      render :json => { Status: "KO", Cause: t("recipe.api.invalid_user_id") }.as_json,
             status: :not_found
      return
    end
    notebooks = Notebook.where(:user => user).all
    notebook_json = notebooks.as_json
    if notebooks.empty?
      render json: notebook_json, status: :not_found
    else
      render json: notebook_json, status: :ok
    end
  end

  private

  def find_notebook
    if !Notebook.find_by_id(params[:id]).nil?
      if params[:id].nil?
        @notebook = Notebook.find(params[:notebook][:id])
      else
        @notebook = Notebook.includes(:recipes).find(params[:id])
      end
    else
      render :json => { Status: "KO", Cause: "Carnet introuvable, mauvais id." }.as_json
    end
  end

  def notebook_params_without_recipes
    params.require(:notebook).permit(:title, :description, :image)
  end

  def notebook_params
    params.require(:notebook).permit(:title, :description, :image, :recipes)
  end

  def notebook_params_api
    params.require(:notebook).permit(:title, :description, :user_id)
  end
end
