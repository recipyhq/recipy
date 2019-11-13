class SitemapsController < ApplicationController

  def index
    skip_policy_scope
    headers['Content-Type'] = 'application/xml'
    @host = "http://recipy.fr"
    respond_to do |format|
      format.xml { @recipes = Recipe.all }
    end
  end
end
