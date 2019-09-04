module Join
    # module ClassMethods
    #     def all
    #         @@all
    #     end
    # end

    module InstanceMethods
        def join(other_object)
            FlavorBrand.new(join_hash(other_object))
        end

        private

        def join_hash(other_object)
            self.class == Flavor ?
                join_hash = {
                    :flavor => self,
                    :brand => other_object
                } :
                join_hash = {
                    :flavor => other_object,
                    :brand => self
                }
        end

    end

end