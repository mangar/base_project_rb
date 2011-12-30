module Demo1
  MESSAGE = "Demo1::MESSAGE"  
  
  module Block
    MESSAGE = "Demo1::Block::MESSAGE"
  
    class BlockDemo1
      MESSAGE = "Demo1::Block::BlockDemo1::MESSAGE"
    
      attr_accessor :a

      def initialize
        @a = 1
      end
    
      def my_method
        puts "inside my_method"
        return yield() if block_given?
        return "inside my_method"
      end

      
      def my_other_method(&block)
        my_method(&block)
        puts "inside my_other_method"
      end

      

    end
  end
end



block = Demo1::Block::BlockDemo1.new
block.my_other_method { puts "inside the block" }

puts "-" * 100

inc = proc { puts "inside proc named..."  }
block.my_other_method &inc

puts "-" * 100

linc = lambda { puts "inside lambda named..."  }
block.my_other_method &linc

puts "-" * 100


# puts block.my_method { "outside my_method" }

# puts "Valor de Demo1::Block::BlockDemo1.a: #{block.a}"
# 
# 
# puts "-" * 40
# 
# puts Demo1::Block::BlockDemo1::MESSAGE
# puts Demo1::MESSAGE