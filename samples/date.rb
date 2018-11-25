require 'benchmark/ips'
require 'date'

def months_functional(d1, d2)
  (d1..d2)
    .map { |d| [d.year, d.month] }
    .uniq
end

def months_procedural(d1, d2)
  result = []

  d = Date.new(d1.year, d1.month, 1)
  while d < d2
    result << [d.year, d.month]
    d = d.next_month
  end

  result
end

Benchmark.ips do |b|
  d1, d2 = Date.new(2016, 1, 31), Date.new(2019, 1, 31)
  b.report("3 years functional") { months_functional(d1, d2) }
  b.report("3 years procedural") { months_procedural(d1, d2) }

  d1, d2 = Date.new(2009, 1, 31), Date.new(2019, 1, 31)
  b.report("10 years functional") { months_functional(d1, d2) }
  b.report("10 years procedural") { months_procedural(d1, d2) }
end
