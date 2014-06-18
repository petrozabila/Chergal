class StaticPagesController < ApplicationController
  
  def about
  	render 'static_pages/about'
  end

  def contact
  	render 'static_pages/contact'
  end
end
