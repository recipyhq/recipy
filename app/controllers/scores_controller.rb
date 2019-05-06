# rubocop:disable all
class ScoresController < ApplicationController
  before_action :skip_authorization
  before_action :authenticate_user!
  before_action :find_recipe!

  def set_value_and_content
    score = @recipe.recipe_scores.create_with(user_id: current_user.id).find_or_create_by(user_id: current_user.id)

    score.update(:value => score_params[:value])
    score.update(:content => score_params[:content])

    flash[:success] = t('feedback.notification')
    redirect_back fallback_location: recipe_path(:id => @recipe.id)
  end

  private

  def score_params
    params.require(:recipe_score).permit(:value, :content)
  end

  def find_recipe!
    @recipe = Recipe.find_by_id(params[:recipe_id])
  end
end
# rubocop:enable all
