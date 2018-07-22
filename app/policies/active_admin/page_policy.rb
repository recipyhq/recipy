module ActiveAdmin
  class PagePolicy
    attr_reader :admin, :page

    def initialize(admin, page)
      @admin = admin
      @page = page
    end

    def show?
      true
    end
  end
end
