original_collection = [1, 2, 3]

def f(arg) arg end

def partition_procedurally(original_collection)
  result1 = []
  result2 = []

  original_collection.each do |e|
    result = f(e)

    if result < 2
      result1 << result
    else
      result2 << result
    end
  end

  [result1, result2]
end

def partition_functionally(original_collection)
  original_collection
    .map { |e| f(e) }
    .partition { |r| r < 2 }
end

p partition_procedurally(original_collection) == partition_functionally(original_collection)
