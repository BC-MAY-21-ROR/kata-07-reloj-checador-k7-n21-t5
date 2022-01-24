  class EmployeeCrudController < ApplicationController
    before_action :require_login
  
    def index
      if params[:id] != nil
        @employees = Employee.where(branches_id:params[:id])
      else
        @employees = Employee.all
      end
      @branches = Branch.all
    end
    
    def logout
      session[:admin_id] = nil
      redirect_to admin_path
    end
  
    def new
      @emp = Employee.new
    end
  
    def create
      @emp = Employee.new(employee_params)
      if @emp.save
        redirect_to crud_path
      else
        render :new
      end
    end
  
    def edit
      @emp = Employee.find(params[:id])
      if @emp.update(:privateNumber=> params[:privateNumber], :employeeNumber=>params[:employeeNumber],
        :email=>params[:email],:name=>params[:name],
        :position=>params[:position],:status=>params[:status],:branches_id=>params[:branches_id])
        redirect_to crud_path
      end
    end
  
    def disable
      @emp = Employee.find(params[:id])
      if @emp.status == true
        if @emp.update(:status=>0)
          redirect_to crud_path
        end
      else
        if @emp.update(:status=>1)
          redirect_to crud_path
        end
      end
    end
  
    private 
  
    def employee_params
      params.permit(:privateNumber, :employeeNumber, :email, :name, :position, :status, :branches_id)
    end
  
  end
