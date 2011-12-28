module Demo1
  
  MESSAGE = "Demo1.MESSAGE"
  
  class BlockDemo1
    
    MESSAGE = "Demo1.BlockDemo1.MESSAGE"
    
    attr_accessor :a

    def initialize
      @a = 1
    end
    
    def my_method
      return yield() if block_given?
      return "inside my_method"
    end
    



    
  end
end


# 
# block = Demo1::BlockDemo1.new
# puts block.my_method { "outside my_method" }
# 
# puts "Valor de Demo1::BlockDemo1.a: #{block.a}"
# 
# 
# puts "-" * 40
# 
# puts Demo1::BlockDemo1::MESSAGE
# puts Demo1::MESSAGE