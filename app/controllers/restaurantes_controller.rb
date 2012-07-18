#encoding: utf-8
class RestaurantesController < ApplicationController
  
  def index
    @restaurantes = Restaurante.order("nome").paginate(:page => params['page'], :per_page=>3)
  end

  def show
    @restaurante = Restaurante.find(params[:id])
  end

  def new
    @restaurante = Restaurante.new
  end

  def create
    @restaurante = Restaurante.new(params[:restaurante])
    if (@restaurante.save)
      redirect_to(:action => 'index', :id => @restaurante)
    else
      render :action => 'new'
    end
  end

  def edit
    @restaurante = Restaurante.find(params[:id])
  end

  def update
    @restaurante = Restaurante.find(params[:id])
    if @restaurante.update_attributes(params[:restaurante])
      redirect_to(:action => "show", :id => @restaurante)
    else
      render :action => "edit"
    end
  end

  def destroy
    @restaurante = Restaurante.find(params[:id])
    @restaurante.destroy
    redirect_to(:action => "index")
  end

  def busca
    @restaurante = Restaurante.find_by_nome(params[:nome])
    if @restaurante
      redirect_to :action => 'show', :id => @restaurante.id
    else
      flash[:notice] = 'Restaurante não encontrado.'
      redirect_to :action => 'index'
    end
  end
end
