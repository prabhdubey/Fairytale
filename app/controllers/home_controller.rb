class HomeController < ApplicationController



  def index
      @articles = Article.where(published:true)
      respond_to do |format|
   		format.html {render :layout => 'home'}
   	end  
  end

  def  authenticated
    @articles = current_user.articles
   	respond_to do |format|
   		format.html {render :layout => 'application'}
   	end 
  end
	
end
