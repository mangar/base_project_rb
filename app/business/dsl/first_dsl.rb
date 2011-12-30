require "#{File.dirname(__FILE__)}/base.rb"

module Dsl
  class FirstDsl < Dsl::Base
    
    def initialize
      setup do
        puts "bloco de setup......1"
      end

      setup do
        puts "bloco de setup......2"
      end      

      event "evento 1" do
        puts "execucao do evento no1"
      end
      
      event "evento 2" do
        puts "execucao do evento no2"
      end      
      
      event "evento 3" do
        puts "execucao do evento no3"
      end      
      
    end
    
  end
end




st = Dsl::FirstDsl.new.run
