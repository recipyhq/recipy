class NotebooksController < InheritedResources::Base
  skip_before_action :verify_authenticity_token
  skip_after_action :verify_authorized

  def index
    skip_policy_scope
    # @notebooks = Notebook.all
    @notebook_recipes_select = Recipe.all.map { |v| [v.title, v.id] }.to_a
    if user_signed_in?
      @notebooks = Notebook.includes(:image_attachment => :blob).where(:user_id => current_user.id)
    end
  end

  def show
    find_notebook
  end

  def new
    skip_authorization
    @notebook = current_user.notebooks.build
  end

  def create
    new_notebook = current_user.notebooks.build(notebook_params)
    new_notebook.save!
    redirect_to notebook_path(new_notebook.id), flash: { success: "Nouveau notebook créée." }
  end

  def add_recipe
    find_notebook
    tmp = Recipe.find_by_id(notebook_params[:recipes])
    @notebook.recipes << tmp
    redirect_to notebook_path(id: @notebook.id)
  end

  def update
    find_notebook
    if @notebook.update(notebook_params_without_recipes)
      if @notebook.image.blob.content_type.starts_with?('image/')
        redirect_to notebook_path, flash: { success: t("notebook.edit.valid") }
      else
        redirect_to edit_notebook_path(@notebook),
                    flash: { danger: t("notebook.edit.invalid_image") }
      end
    else
      redirect_to edit_notebook_path(@notebook), flash: { danger: t("notebook.edit.invalid") }
    end
  end

  def destroy
    find_notebook
    @notebook.destroy
    redirect_to notebooks_path, flash: { success: t("notebook.destroy.valid") }
  end

  def remove_recipe
    # find_notebook
    @notebook = Notebook.find(params[:notebook])
    tmp = Recipe.find_by_id(params[:id])
    @notebook.recipes.delete(tmp)
    redirect_to notebook_path(@notebook.id)
  end

  private

  def find_notebook
    if params[:id].nil?
      @notebook = Notebook.find(params[:notebook][:id])
    else
      @notebook = Notebook.find(params[:id])
    end
  end

  def notebook_params_without_recipes
    params.require(:notebook).permit(:title, :description, :image)
  end

  def notebook_params
    params.require(:notebook).permit(:title, :description, :image, :recipes)
  end
end