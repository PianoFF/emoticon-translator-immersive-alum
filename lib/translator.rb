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
#   translated_hash = > {:get_meaning=>
#   {"☜(⌒▽⌒)☞"=>"angel",
#    "ヽ(ｏ`皿′ｏ)ﾉ"=>"angry",
#    "(ΘεΘ;)"=>"bored",
#    "(゜.゜)"=>"confused",
#    "(#^.^#)"=>"embarrased",
#    ">゜))))彡"=>"fish",
#    "(^0_0^)"=>"glasses",
#    "(￣ー￣)"=>"grinning",
#    "(＾ｖ＾)"=>"happy",
#    "(*^3^)/~☆"=>"kiss",
#    "(Ｔ▽Ｔ)"=>"sad",
#    "o_O"=>"surprised",
#    "(^_-)"=>"wink"},
#  :get_emoticon=>
#   {"O:)"=>"☜(⌒▽⌒)☞",
#    ">:("=>"ヽ(ｏ`皿′ｏ)ﾉ",
#    ":O"=>"(ΘεΘ;)",
#    "%)"=>"(゜.゜)",
#    ":$"=>"(#^.^#)",
#    "><>"=>">゜))))彡",
#    "8D"=>"(^0_0^)",
#    "=D"=>"(￣ー￣)",
#    ":)"=>"(＾ｖ＾)",
#    ":*"=>"(*^3^)/~☆",
#    ":'("=>"(Ｔ▽Ｔ)",
#    ":o"=>"o_O",
#    ";)"=>"(^_-)"}}

end

def get_japanese_emoticon(path,emo)
  # code goes here
  full_hash = load_library(path)
  full_hash[:get_emoticon][emo] ? full_hash[:get_emoticon][emo] : "Sorry, that emoticon was not found"
end

def get_english_meaning
  # code goes here
end