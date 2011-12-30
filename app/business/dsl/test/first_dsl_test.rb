require 'test_helper'

class FirstDslTest < ActiveSupport::TestCase
  
  test "how many setups and events in FirstDsl?" do
    st = Dsl::FirstDsl.new
    assert st.setups.length == 2
    assert st.events.length == 3        
  end


end
