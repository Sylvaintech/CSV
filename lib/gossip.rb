require_relative "controller"
require "bundler"
Bundler.require

class Gossip

    def initialize(author, content)
        @content = content
        @author = author
    end

    def save
        file = CSV.open("db/gossip.csv","a+") do |ligne|
            ligne << [@author, @content]
        end
    end
end