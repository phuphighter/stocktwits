module Stocktwits
  
  class Client
    include HTTParty
    base_uri "http://stocktwits.com"
    format :json
    
    def streams
      mashup(self.class.get("/streams/all.json"))
    end
    
    protected
    
    def mashup(response)
      case response.code
      when 200
        if response.is_a?(Hash)
          Hashie::Mash.new(response)
        else
          if response.first.is_a?(Hash)
            response.map{|item| Hashie::Mash.new(item)}
          else
            response
          end
        end
      end
    end

  end
end