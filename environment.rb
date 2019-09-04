require_relative "./brand.rb"
require_relative "./flavor.rb"
require_relative "./flavorbrand.rb"
require_relative "./join_module.rb"

require "pry"

vanilla = Flavor.new("desc", "vanilla")
berry = Flavor.new("desc", "berry")
strawberry_banana = Flavor.new("desc", "strawberry banana")
peach = Flavor.new("desc", "peach")

yoplait = Brand.new("yoplait")
dannon = Brand.new("dannon")
greek = Brand.new("greek")

vanilla.join(yoplait)
berry.join(yoplait)
peach.join(dannon)
strawberry_banana.join(dannon)
strawberry_banana.join(yoplait)



binding.pry
0