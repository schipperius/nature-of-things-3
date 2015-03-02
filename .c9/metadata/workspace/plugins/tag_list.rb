{"filter":false,"title":"tag_list.rb","tooltip":"/plugins/tag_list.rb","undoManager":{"mark":1,"position":1,"stack":[[{"group":"doc","deltas":[{"start":{"row":0,"column":0},"end":{"row":16,"column":61},"action":"insert","lines":["module Jekyll","  class TagListTag < Liquid::Tag","    def render(context)","      html = \"\"","      tags = context.registers[:site].tags.keys","      tags.sort.each do |tag|","        posts_in_tag = context.registers[:site].tags[tag].size","        tag_dir = context.registers[:site].config['tag_dir']","        tag_url = File.join(tag_dir, tag.gsub(/_|\\P{Word}/, '-').gsub(/-{2,}/, '-').downcase)","        html << \"<li class='tag'><a href='/#{tag_url}/'>#{tag} (#{posts_in_tag})</a></li>\\n\"","      end","      html","    end","  end","end","","Liquid::Template.register_tag('tag_list', Jekyll::TagListTag)"]}]}],[{"group":"doc","deltas":[{"start":{"row":16,"column":61},"end":{"row":17,"column":0},"action":"insert","lines":["",""]}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":17,"column":0},"end":{"row":17,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1425263456000,"hash":"c3dd4a92722ae53f45a98c449c0fc0cbf582a6e6"}