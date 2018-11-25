original_collection = [1, 2, 3]

def f(arg) arg end

def apply_f_and_case(original_collection)
  result1 = []
  result2 = []
  result3 = []

  original_collection.each do |e|
    result = f(e)

    case result
    when 1
      result1 << result
    when 2
      result2 << result
    else
      result3 << result
    end
  end

  {
    result1: result1,
    result2: result2,
    result3: result3,
  }
end

def group_of(value)
  case value
  when 1
    :result1
  when 2
    :result2
  else
    :result3
  end
end

def apply_f_and_group(original_collection)
  original_collection
    .map { |e| f(e) }
    .group_by { |r| group_of(r) }
end

p apply_f_and_case(original_collection) == apply_f_and_group(original_collection)
