
module  Demo1
  class Computer
  
    def initialize(computer_id)
      @id = computer_id
    end

      
    def method_missing(method, *args)
      
      components = ["mouse_",  "cpu_",  "screen_"]
      given_component = method.to_s.split('_')[0]
      regex_component = Regexp.new("^#{given_component}")
      
      return __process_component(method, *args) if components.grep( regex_component ).count > 0       
      
      super
    end
      
    def __process_component(component)
      
      puts "*" * 60
      puts component
      puts component.class
      puts "*" * 60
      
      component
    end
      
  
  end
end
