module EmployeeHelper

  def check_value(check)
    check ? 1 : 0
  end 

  def check_save(check)
    if check.save
      message = params[:check] == 1 ? 'Successful check in' : 'Successful check out'
    else
      'Failed to check'
    end
  end

end
