require_relative "./join_module.rb"

class Flavor
    #extend Join::ClassMethods
    include Join::InstanceMethods

    attr_reader :description, :label

    @@all = []

    def initialize(description, label)
        @description = description
        @label = label
        @@all << self
    end

    def self.all
        @@all
    end

    # def add_brand(brand)
    #     FlavorBrand.new(self, brand)
    # end

    def brands
        FlavorBrand.all.select{|fb| fb.flavor == self}.map(&:brand).uniq
    end
end