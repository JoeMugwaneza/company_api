class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end

  def show
    @company = Company.find_by(id:params[:id])
    redirect_to :show
  end 

  def create
    @company = Company.create(
      name: params[:name], 
      profession: params[:profession], 
      logo: params[:logo])

    render :show
  end 

  def update
    @company = Company.find_by(id: params[:id])
    @company.update(
      name: params[:name],
      profession: params[:profession],
      logo: params[:logo]

      )

    render :show
  end 

  def destroy
    @company = Company.find_by(id:params[:id])
    @company.destroy
    render json: {message: "You are fired"}
  end
end
