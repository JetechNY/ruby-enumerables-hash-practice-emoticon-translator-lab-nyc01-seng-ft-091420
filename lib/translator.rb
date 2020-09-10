require 'pry'
require 'yaml'


  def load_library (emoticon)
emoticons = YAML.load_file('./lib/emoticons.yml')
my_hash = {}
# emoticon_lib = {'get_meaning'  => {} ,'get_emoticon' => {} }
emoticons.each do |key, value|
        eng = value[0]
        jap = value[1]
        # emoticon_lib['get_meaning'] = key
# binding.pry
        val = {:english => eng , :japanese => jap}
        my_hash[key] = val
# binding.pry
end
my_hash
end

def get_japanese_emoticon(a ,emo)
  # code goes here
  a = YAML.load_file('./lib/emoticons.yml')



end

def get_english_meaning(a ,emo)
  # code goes here
  emo = YAML.load_file('./lib/emoticons.yml')


end
