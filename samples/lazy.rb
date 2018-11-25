URLS = [1, 2, 3].freeze

def load_and_extract(url)
  sleep 1
  url
end

def stupid_billionaire
  URLS.map { |url| load_and_extract(url) }
end

def lazy_smart
  URLS.lazy.map { |url| load_and_extract(url) }
end

stupid_billionaire.each { |e| p e }
lazy_smart.each { |e| p e }
