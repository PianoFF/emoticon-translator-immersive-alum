# require modules here
require 'yaml'
require 'pry'

def load_library(yml_file)
  # code goes here
  emo_hash = YAML.load_file(yml_file) 
#   resulted hash:
#   {"angel"=>["O:)", "☜(⌒▽⌒)☞"],
#  "angry"=>[">:(", "ヽ(ｏ`皿′ｏ)ﾉ"],
#  "bored"=>[":O", "(ΘεΘ;)"],
#  "confused"=>["%)", "(゜.゜)"],
#  "embarrased"=>[":$", "(#^.^#)"],
#  "fish"=>["><>", ">゜))))彡"],
#  "glasses"=>["8D", "(^0_0^)"],
#  "grinning"=>["=D", "(￣ー￣)"],
#  "happy"=>[":)", "(＾ｖ＾)"],
#  "kiss"=>[":*", "(*^3^)/~☆"],
#  "sad"=>[":'(", "(Ｔ▽Ｔ)"],
#  "surprised"=>[":o", "o_O"],
#  "wink"=>[";)", "(^_-)"]}

  translated_hash = {
    "get_meaning":{

    },
    "get_emoticon":{}
  }

  emo_hash.each do |k,v|
    #each v is an array
    translated_hash[:get_meaning][v[1]] = k 
    translated_hash[:get_emoticon][v[0]] = v[1]
  end
  translated_hash
  # binding.pry
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end