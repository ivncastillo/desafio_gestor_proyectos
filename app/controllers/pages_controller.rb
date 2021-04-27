class PagesController < ApplicationController

  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only:
:dashboard

  def create
    Proyecto.create(name:params[:name], descripcion:params[:descripcion], start_date:params[:start_date], end_date:params[:end_date], state:params[:end_date],state2:params[:state]) 
  end

  def home
    
  end

  def dashboard
    @proyectos = Proyecto.all

    if params[:state].present?
      @proyectos = Proyecto.where(state2:params[:state])
     
    end
  end
end
