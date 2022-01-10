require "test_helper"

class EmployeeControllerTest < ActionDispatch::IntegrationTest
  test "should get employee" do
    get employee_employee_url
    assert_response :success
  end
end
