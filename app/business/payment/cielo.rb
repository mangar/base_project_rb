module Payment 
  class Cielo < Payment::CreditCard
    
    def authorize
     "AUTHORIZE by Cielo"
    end

    def capture
      "CAPTURE by Cielo"
    end
  
  end
end