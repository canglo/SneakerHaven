class PagesController < ApplicationController
  def about
    @about_content = Page.all
  end

  def contact
    @contact_information = Page.all
  end
end
