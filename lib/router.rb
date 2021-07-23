require_relative 'controller'

class Router
    attr_accessor :controller

    def initialize
        @controller = Controller.new
        perform
    end

    def perform
        puts "BIENVENUE DANS THE GOSSIP PROJET"

        while true

            puts "Tu veux faire quoi jeune mouss' ?"
            puts "1. Je veux créer un gossip"
            puts "4. Je veux quitter l'app"
            params = gets.chomp.to_i

            case params
            when 1
                puts "Tu as choisi de créer un gossip"
                @controller.create_gossip

            when 4
                puts "A bientôt !"
                break

            else
                puts "Ce choix n'existe pas, merci de ressayer"
            end
        end
    end
end