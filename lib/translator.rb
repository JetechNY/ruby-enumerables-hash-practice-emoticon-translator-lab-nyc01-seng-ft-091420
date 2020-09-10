require 'pry'
require 'yaml'


  def load_library (emoticon)
emoticons = YAML.load_file('./lib/emoticons.yml')
my_hash = {}
emoticons.each do |key, value|
        english = value[0]
        japanese = value[1]
        val = {:english => english , :japanese => japanese}
        my_hash[key] = val

end
my_hash
end

def get_english_meaning(yaml_file ,emoticon)
  # code goes here
  emoticon_lib = load_library(yaml_file)
  english_meaning = emoticon_lib['japanese'][emoticon]
#   name = nil
# binding.pry
# library[emo].each do |k, v| #look in japanes to find value = to then return orig key
#   binding.pry
#   if k == emo
#         name = v
#       end
#   if name == nil
#       return "Sorry, that emoticon was not found"
#     else
#       return name
#       end
end


# def get_japanese_emoticon(yaml_file ,emo)
#   # code goes here
#   library = load_library(yaml_file)
#   name = nil
#   library[val].each do |k, v|
#     if k == emo
#           name = v
#         end
#       end
#       if name == nil
#         return "Sorry, that emoticon was not found"
#       else
#         return name
#       end
#   end
