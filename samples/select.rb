original_collection = [1, 2, 3]

def f(arg) arg end

def filter_and_apply_f(original_collection)
  result = []

  original_collection.each do |e|
    next if e < 2
    result << f(e)
  end

  result
end

def select_and_apply_f(original_collection)
  original_collection
    .select { |e| e >= 2 }
    .map { |e| f(e) }
end

p filter_and_apply_f(original_collection) == select_and_apply_f(original_collection)
