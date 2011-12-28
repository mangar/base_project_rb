require 'test_helper'

class ComputerTest < ActiveSupport::TestCase
  
  test "computer ALL_info" do
    computer = Demo1::Computer.new(42)
    
    %w(mouse_info cpu_info screen_info).each do |part|
      assert computer.send(part).to_s == part  
    end
    
  end

  
  test "computer lcd_info NoMethodError" do
    computer = Demo1::Computer.new(42)
    
    assert_raise NoMethodError do
      computer.lcd_info
    end    
    
  end


  
end

