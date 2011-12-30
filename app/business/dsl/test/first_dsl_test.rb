require 'test_helper'

class FirstDslTest < ActiveSupport::TestCase
  
  test "test 1" do
    
    st = Dsl::FirstDsl.new.run
    
    assert true
    
  end


end
