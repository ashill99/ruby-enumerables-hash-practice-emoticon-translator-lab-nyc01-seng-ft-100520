# require modules here
require 'yaml' 

def load_library(path)
  library = YAML.load_file(path)
  new_hash = {'get_meaning' => {},
                'get_emoticon' => {}} 
  library.each do |meaning, emoticon|
    english = emoticon[0]
    japanese = emoticon[1]
    new_hash['get_meaning'][japanese] = emoticon
    new_hash['get_emoticon'][english] = meaning 
  end 
  new_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end