require 'test_helper'

class CieloTest < ActiveSupport::TestCase
  
  test "authorization" do
    
    expected = "AUTHORIZE by Cielo"
    cielo = Payment::Cielo.new
    assert cielo.authorize == expected
    
    
  end


  test "capture" do
    
    expected = "CAPTURE by Cielo"
    cielo = Payment::Cielo.new
    assert cielo.capture == expected

  end

  
  
end
