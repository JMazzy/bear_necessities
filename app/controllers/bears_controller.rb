class BearsController < ApplicationController
  def new
    @bear = Bear.new
  end

  def create
    @bear = Bear.new( bear_params )
    if @bear.save
      flash[:notice] = "Bear saved!"
    else
      flash[:alert] = "Bear not saved!"
    end

    redirect_to bear_path(@bear)
  end

  def index
    @bears = Bear.all
  end

  def show
    @bear = Bear.find( params[:id] )
  end

  def edit
    @bear = Bear.find( params[:id] )
  end

  def update
    @bear = Bear.find( params[:id] )
    if @bear.update( bear_params )
      flash[:notice] = "Bear saved!"
    else
      flash[:alert] = "Bear not saved!"
    end

    redirect_to bear_path(@bear)
  end

  def destroy
    @bear = Bear.find( params[:id] )
    if @bear.destroy
      flash[:notice] = "Bear deleted!"
    else
      flash[:alert] = "Bear not deleted!"
    end

    redirect_to root_path
  end

  private

  def bear_params
    params.require(:bear).permit(:name, :description)
  end
end
