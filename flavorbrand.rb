require_relative "./join_module.rb"

class FlavorBrand
    #extend Join::ClassMethods

    attr_accessor :flavor, :brand

    @@all = []

    def initialize(flavor_brand_hash)
        flavor_brand_hash.each {|key, value| self.send(("#{key}="), value)}
        @@all << self
    end

    def self.all
        @@all
    end
end