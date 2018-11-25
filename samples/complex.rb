original_collection = [
  [1, 2],
  [nil, 3],
  [4, nil],
]

def f(arg) arg end
def g(arg) arg.to_s end

def complex_procedural(original_collection)
  result = []

  original_collection.each do |a, b|
    result << f(a) if a
    result << g(b) if b
  end

  result
end

def complex_functional(original_collection)
  original_collection
    .flat_map { |a, b| [(f(a) if a), (g(b) if b)] }
    .compact
end

p complex_procedural(original_collection) == complex_functional(original_collection)
