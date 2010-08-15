class Room
  attr_accessor :title, :description, :inventory
  
  def initialize(title, description, inventory)
    self.title = title
    self.description = description
    self.inventory = inventory
  end
  
  def items_description
    if inventory.size > 1
      "There is " + inventory[0 .. -2].join(", ") + ", and " + inventory[-1] + " in the room."
    else
      "There is " + inventory[0] + " in the room."
    end
  end
  
end