{"filter":false,"title":"category_list.rb","tooltip":"/plugins/category_list.rb","ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":17,"column":0},"end":{"row":17,"column":0},"isBackwards":false},"options":{"tabSize":2,"useSoftTabs":true,"guessTabSize":false,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"hash":"701b3968967cee5a78c65571e73963009a1eb7d2","undoManager":{"mark":1,"position":1,"stack":[[{"group":"doc","deltas":[{"start":{"row":0,"column":0},"end":{"row":16,"column":71},"action":"insert","lines":["module Jekyll","  class CategoryListTag < Liquid::Tag","    def render(context)","      html = \"\"","      categories = context.registers[:site].categories.keys","      categories.sort.each do |category|","        posts_in_category = context.registers[:site].categories[category].size","        category_dir = context.registers[:site].config['category_dir']","        category_url = File.join(category_dir, category.gsub(/_|\\P{Word}/, '-').gsub(/-{2,}/, '-').downcase)","        html << \"<li class='category'><a href='/#{category_url}/'>#{category} (#{posts_in_category})</a></li>\\n\"","      end","      html","    end","  end","end","","Liquid::Template.register_tag('category_list', Jekyll::CategoryListTag)"]}]}],[{"group":"doc","deltas":[{"start":{"row":16,"column":71},"end":{"row":17,"column":0},"action":"insert","lines":["",""]}]}]]},"timestamp":1425263284000}