require 'test_helper'
require File.dirname(__FILE__) + "/../../payment"


class CreditCardTest < ActiveSupport::TestCase
  
  # IMPORTANT: not needed....
  test "methods" do
    assert Payment::CreditCard.instance_methods(false).include?(:authorize)
    assert Payment::CreditCard.instance_methods(false).include?(:capture)
  end
  
  
  test "authorization" do
    expected = "AUTHORIZE method not implemented..." 
    assert Payment::CreditCard.new.authorize == expected
  end


  test "capture" do
    expected = "CAPTURE method not implemented..." 
    assert Payment::CreditCard.new.capture == expected
  end
  
  
end
