module EmployeeHelper

  def check_value(check)
    if check
      1
    else
      0
    end
  end 

  def check_save(check)
    if check.save
      message = params[:check] ? 'Successful check in' : 'Successful check out'
      message
    else
      'Failed to check'
    end
  end

end
