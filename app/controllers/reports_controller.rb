class ReportsController < ApplicationController
  before_action :require_login
  def index
    @checks = Check.all
    @checkin = Check.where(check:true)
    @checkout = Check.where(check:false)
    @employees = Employee.all
    @checkin_avg = helpers.avg_time(@checkin)
    @checkout_avg = helpers.avg_time(@checkout)
    @absences = helpers.absences(@checkin,@employees)
    @atendance = Check.where(check:true).group(:date).count
  end

  
end
