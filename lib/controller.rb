require_relative "gossip"
require_relative "router"

class Controller
    attr_accessor :gossip
    def initialize 
        
    end

    def create_gossip
        
        my_gossip = Gossip.new("auteur", "ceci est un exemple content") #=> Crée une instance de potin, sauvergardée juste dans cette variable
        
        my_gossip.save

    end
end