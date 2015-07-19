class ApplicationController < ActionController::Base
	before_action :get_navigation_pages
	before_action :get_jumbotron
	before_action :get_home_blocks
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private 
  def get_navigation_pages
	@navigation_pages = Page.where(menu_display: true).where(is_published: true).order(:order)
  end

    def get_jumbotron
		@jumbotron = Block.where(position: 'jumbotron')
	end 

	def get_home_blocks
		@blocks = Block.where(position: 'block').order(order: :asc)
	end
end
