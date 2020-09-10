require 'pry'
require 'yaml'


  def load_library (emoticon)
emoticons = YAML.load_file('./lib/emoticons.yml')
my_hash = {}
emoticons.each do |key, value|
        eng = value[0]
        jap = value[1]
        val = {:english => eng , :japanese => jap}
        my_hash[key] = val

end
my_hash
end

def get_english_meaning(yaml_file ,emo)
  # code goes here
library = load_library(yaml_file)
name = nil
library[val].each do |k, v|
  if k == emo
        name = v
      end
  if name == nil
      return "Sorry, that emoticon was not found"
    else
      return name
end
    end
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
