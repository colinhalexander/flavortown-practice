require_relative "./join_module.rb"

class Brand
    #extend Join::ClassMethods
    include Join::InstanceMethods

    attr_reader :name

    @@all = [] 

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    # def add_flavor(flavor)
    #     FlavorBrand.new(flavor, self)
    # end

    def flavors
        FlavorBrand.all.select {|fb| fb.brand == self}.map(&:flavor).uniq
    end
end