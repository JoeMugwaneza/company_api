class Api::V1::CompaniesController < ApplicationController

  def index
    @companies = Company.all
    render json: @companies
  end

  def show
    @company = Company.find_by(id:params[:id])
  end 

  def create
    @company = Company.create(
      name: params[:name], 
      profession: params[:profession], 
      logo: params[:logo])

    render json: @company
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
