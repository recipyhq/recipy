module Cook
  class HomeController < Cook::BaseController
    def index
      @user = current_user
      skip_policy_scope
      @recipes = Recipe.order(view: :desc).includes(:image_attachment => :blob).first(4)
      @random_recipe = Recipe.order("RANDOM()").first
      if @random_recipe.nil?
        puts "Les recettes ne sont pas disponibles"
      end

      funny_quotes = [
        "Avez-vous faim ?", "Comment est votre blanquette ?",
        "Un bon cuisinier goûte sept fois son plat",
        "Faut pas gâcher", "Casse ta routine culinaire !",
        "Qu'est ce qu'on mange ce soir ?", "Le gras c'est la vie !",
        "Tu vas encore manger des pâtes nature ?",
      ]
      rand_sentence = rand(0..funny_quotes.length - 1)
      @sentence = funny_quotes[rand_sentence]
    end
  end
end
