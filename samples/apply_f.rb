original_collection = [1, 2, 3]

def f(arg) arg end

def apply_f_procedurally(original_collection)
  result = []

  original_collection.each do |e|
    result << f(e)
  end

  result
end

def apply_f_functionally(original_collection)
  original_collection.map do |e|
    f(e)
  end
end

p apply_f_procedurally(original_collection) == apply_f_functionally(original_collection)
