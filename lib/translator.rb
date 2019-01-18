require 'yaml'
require 'pry'


def load_library(file_path)
  emoticons  = YAML.load_file(file_path)
  new_hash = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  emoticons.each do |key, emoticon|
    new_hash["get_meaning"][emoticon[1]] = key
    new_hash["get_emoticon"][emoticon[0]] = emoticon[1]
  end
  new_hash
end

def get_japanese_emoticon(file_path, emoji)
  library = load_library(file_path)
  library.each do |key, value|
    if library[key][emoji].nil?
      
    end
  end
  
end

def get_english_meaning
  
end