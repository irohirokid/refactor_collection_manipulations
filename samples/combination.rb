original_collection = [1, 2, 2, 3]

def f(arg) arg end

def detect_collision(original_collection)
  collisions = []
  checked = []

  original_collection.each do |unchecked|
    collision = checked.find do |e|
      e == unchecked
    end

    collisions << unchecked if collision
    checked << unchecked
  end

  collisions.any?
end

def detect_collision_w_combination(original_collection)
  original_collection
    .combination(2)
    .detect { |a, b| a == b }
end

p detect_collision(original_collection)
p detect_collision_w_combination(original_collection)
