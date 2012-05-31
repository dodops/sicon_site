class PagesController < ApplicationController
  def index
    @title = "Sicon Home Page"
  end

  def about
    @title = "Sobre a empresa"
  end

  def contact
    @title = "Entre em contato"
  end
end
