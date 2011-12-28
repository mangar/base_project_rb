require 'test_helper'

class MastercardTest < ActiveSupport::TestCase
  
  test "authorization" do
    expected = "AUTHORIZE method not implemented..."
    mc = Payment::Mastercard.new
    assert mc.authorize == expected
  end


  test "capture" do
    expected = "CAPTURE method not implemented..."
    mc = Payment::Mastercard.new
    assert mc.capture == expected
  end

  
  
end
