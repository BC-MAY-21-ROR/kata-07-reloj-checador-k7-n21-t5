class BranchesController < ApplicationController
  before_action :require_login
  def index
    @branches = Branch.all
  end

  def new
    @branch = Branch.new
  end

  def create
    @branch = Branch.new(branches_params)
    if @branch.save
      redirect_to branches_path
    else
      render :new
    end
  end

  def edit
    @branch = Branch.find(params[:id])
    redirect_to branches_path if @branch.update(store: params[:store], name: params[:name],
    address: params[:address])
  end
  
  def delete
    @branch = Branch.find(params[:id])
    redirect_to branches_path if @branch.destroy
  end

  private
  
  def branches_params
    params.permit(:store,:name,:address)
  end
  
end
