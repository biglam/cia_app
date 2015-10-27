class CountriesController < ApplicationController

  def index
    @countries = Country.all
  end 

  def new
    @country = Country.new
  end

  def create
    # render text: params.inspect
    Country.create(whitelister)
    redirect_to(countries_path)
  end

  def show
    @country = Country.find(params[:id])
  end

  def destroy
    @country = Country.find(params[:id])
    @country.destroy
    redirect_to(countries_path)
  end

  def edit
    @country = Country.find(params[:id])
  end

  def update
    country = Country.find(params[:id])
    country.update(whitelister)
    redirect_to(countries_path)
  end

  private 
  def whitelister
    params.require(:country).permit(:name, :flag, :population, :size, :language)
  end 

end