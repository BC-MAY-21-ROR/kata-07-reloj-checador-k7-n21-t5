class EmployeeController < ApplicationController
  def employee
  end

  def check
    @employee = Employee.find_by(privateNumber: params[:privateNumber])
    if !!@employee
      params[:check] = helpers.check_value(params[:checkin])
      params[:date] = Time.now.strftime("%d/%m/%Y")
      params[:hour] = Time.now.strftime("%H:%M")
      params[:employees_id] = @employee.id
      @check = Check.new(check_params)
      redirect_to root_path, notice: helpers.check_save(@check)
    else
      redirect_to root_path, alert: 'PrivateNumber does not exist'
    end
    
  end
  
  private

  def check_params
    params.permit(:date, :hour, :check, :employees_id)
  end

end
