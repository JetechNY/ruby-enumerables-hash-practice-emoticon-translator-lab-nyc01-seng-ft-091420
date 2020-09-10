require 'yaml'
# require modules here


def load_library(yaml_file)
  response = {"get_meaning" => {}, "get_emoticon" => {}}
  library = YAML.load_file(yaml_file)
  library.each do |trans, emos|
    response["get_meaning"][emos[1]] = trans
    response["get_emoticon"][emos[0]] = emos[1]
  end
  response
end


def get_japanese_emoticon(yaml_file, emoticon)
  library = load_library(yaml_file)
  response = nil
  library["get_emoticon"].each do |english, japanese|
    if emoticon == english
      response = japanese
    end
  end
  if response == nil
    return "Sorry, that emoticon was not found"
  else
    return response
  end
end


def get_english_meaning(yaml_file, emoticon)
  library = load_library(yaml_file)
  response = nil
  library["get_meaning"].each do |emo, trans|
    if emo == emoticon
      response = trans
    end
  end
  if response == nil
    return "Sorry, that emoticon was not found"
  else
    return response
  end
end

# require 'pry'
# require 'yaml'
#
#
#   def load_library (emoticon)
# emoticons = YAML.load_file('./lib/emoticons.yml')
# my_hash = {}
# emoticons.each do |key, value|
#         english = value[0]
#         japanese = value[1]
#         val = {:english => english , :japanese => japanese}
#         my_hash[key] = val
#
# end
# my_hash
# end
#
# def get_english_meaning(yaml_file, emoticon)
#   # code goes here
#   my_hash = load_library(yaml_file)
#
#   english_meaning = ()
#     binding.pry
#   english_meaning = my_hash[japanese][emoticon]
#
#   # puts english_meaning
# #   name = nil
# # binding.pry
# # library[emo].each do |k, v| #look in japanes to find value = to then return orig key
# #   binding.pry
# #   if k == emo
# #         name = v
# #       end
# #   if name == nil
# #       return "Sorry, that emoticon was not found"
# #     else
# #       return name
# #       end
# end
#
#
# # def get_japanese_emoticon(yaml_file ,emo)
# #   # code goes here
# #   library = load_library(yaml_file)
# #   name = nil
# #   library[val].each do |k, v|
# #     if k == emo
# #           name = v
# #         end
# #       end
# #       if name == nil
# #         return "Sorry, that emoticon was not found"
# #       else
# #         return name
# #       end
# #   end
