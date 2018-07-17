module ActiveAdmin
  class PagePolicy
    attr_reader :user, :page

    def initialize(user, page)
      @user = user
      @page = page
    end

    def show?
      true
    end
  end
end
