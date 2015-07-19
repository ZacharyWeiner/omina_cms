class HomeController < ApplicationController
  def show
	@featured_pages = Page.where(is_published: true).where(featured: true).order(:order)
  end
end
