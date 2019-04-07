# rubocop:disable all
class Api::ScoresController < Api::BaseController
  skip_before_action :verify_authenticity_token
  skip_after_action :verify_authorized
  before_action :authenticate_user!
  before_action :find_recipe!

  def set_value_and_content
    score = @recipe.recipe_scores.create_with(user_id: current_user.id).find_or_create_by(user_id: current_user.id)

    score.update(:value => score_params[:value])
    score.update(:content => score_params[:content])

    render :json => { Status: "OK", Cause: t("recipe.creation.feedback.valid") }.as_json
  end

  private

  def score_params
    params.require(:recipe_score).permit(:value, :content)
  end

  def find_recipe!
    if !Recipe.find_by_id(params[:recipe_id]).nil?
      @recipe = Recipe.find_by_id(params[:recipe_id])
    else
      render :json => { Status: "KO", Cause: t("recipe.api.invalid_id") }.as_json
    end
  end
end
# rubocop:enable all
