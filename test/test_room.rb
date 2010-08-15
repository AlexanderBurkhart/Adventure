require "test/unit"

require "adventure/room"

class TestAdventureRoom < Test::Unit::TestCase
  def test_create_room
    room = Room.new("Living Room",
                    "You are in the living room now.  You see two couches, one tv, and one wii.",
                    ['a glowing sword'])
    
    assert_instance_of Room, room
    
    # Room must have a title
    assert_equal "Living Room", room.title
    
    # Room must have a description
    assert_equal "You are in the living room now.  You see two couches, one tv, and one wii.", room.description 
    
    # Room must have an inventory
    assert_equal ['a glowing sword'], room.inventory
    
    # Room must have an items description
    assert_equal "There is a glowing sword in the room.", room.items_description
    
    # Add item to room inventory
    room.inventory << "a gold coin"
    
    # Room must have an items description
    assert_equal "There is a glowing sword, and a gold coin in the room.", room.items_description
    
    # Add item to room inventory
    room.inventory << "a lego piece"
    
    # Room must have an items description
    assert_equal "There is a glowing sword, a gold coin, and a lego piece in the room.", room.items_description
   end
end