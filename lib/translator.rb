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
  
   #binding.pry
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end