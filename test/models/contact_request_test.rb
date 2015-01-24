require 'test_helper'

class ContactRequestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @cr = ContactRequest.new(name: "BMS Test", email:"bsegal26@gmail.com", message:"test")
  end
  
  test "should be valid" do 
    assert @cr.valid?
  end
  
  test "name should be present" do
    @cr.name = ""
    assert_not @cr.valid?
  end
  
  test "email should be present" do
    @cr.email = ""
    assert_not @cr.valid?
  end
  
  test "message should be present" do
    @cr.message = ""
    assert_not @cr.valid?
  end
  
end
