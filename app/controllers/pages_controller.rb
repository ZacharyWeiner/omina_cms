class PagesController < ApplicationController
 def show 
		@page = Page.find(params[:id])
		unless @page.is_published
			redirect_to root_path. alert:"Uh Oh Spagettios! Did the can spill? Something went wrong...."
		end
		@sections = Section.all
	end 
end
