require "test/unit"

require "adventure/world"

class TestAdventureWorld < Test::Unit::TestCase
  def test_world
    world = World.new
    
    assert_instance_of(World, world)
  end
end