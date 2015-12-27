{"filter":false,"title":"date.rb","tooltip":"/_plugins/date.rb","undoManager":{"mark":20,"position":20,"stack":[[{"group":"doc","deltas":[{"start":{"row":0,"column":0},"end":{"row":97,"column":3},"action":"insert","lines":["module Octopress","  module Date","","    # Returns a datetime if the input is a string","    def datetime(date)","      if date.class == String","        date = Time.parse(date)","      end","      date","    end","","    # Returns an ordidinal date eg July 22 2007 -> July 22nd 2007","    def ordinalize(date)","      date = datetime(date)","      \"#{date.strftime('%b')} #{ordinal(date.strftime('%e').to_i)}, #{date.strftime('%Y')}\"","    end","","    # Returns an ordinal number. 13 -> 13th, 21 -> 21st etc.","    def ordinal(number)","      if (11..13).include?(number.to_i % 100)","        \"#{number}<span>th</span>\"","      else","        case number.to_i % 10","        when 1; \"#{number}<span>st</span>\"","        when 2; \"#{number}<span>nd</span>\"","        when 3; \"#{number}<span>rd</span>\"","        else    \"#{number}<span>th</span>\"","        end","      end","    end","","    # Formats date either as ordinal or by given date format","    # Adds %o as ordinal representation of the day","    def format_date(date, format)","      date = datetime(date)","      if format.nil? || format.empty? || format == \"ordinal\"","        date_formatted = ordinalize(date)","      else","        date_formatted = date.strftime(format)","        date_formatted.gsub!(/%o/, ordinal(date.strftime('%e').to_i))","      end","      date_formatted","    end","","  end","end","","","module Jekyll","","  class Post","    include Octopress::Date","","    # Convert this post into a Hash for use in Liquid templates.","    #","    # Returns <Hash>","    def to_liquid","      date_format = self.site.config['date_format']","      self.data.deep_merge({","        \"title\"             => self.data['title'] || self.slug.split('-').select {|w| w.capitalize! || w }.join(' '),","        \"url\"               => self.url,","        \"date\"              => self.date,","        # Monkey patch","        \"date_formatted\"    => format_date(self.date, date_format),","        \"updated_formatted\" => self.data.has_key?('updated') ? format_date(self.data['updated'], date_format) : nil,","        \"id\"                => self.id,","        \"categories\"        => self.categories,","        \"next\"              => self.next,","        \"previous\"          => self.previous,","        \"tags\"              => self.tags,","        \"content\"           => self.content })","    end","  end","","  class Page","    include Octopress::Date","","    # Initialize a new Page.","    #","    # site - The Site object.","    # base - The String path to the source.","    # dir  - The String path between the source and the file.","    # name - The String filename of the file.","    def initialize(site, base, dir, name)","      @site = site","      @base = base","      @dir  = dir","      @name = name","","      self.process(name)","      self.read_yaml(File.join(base, dir), name)","      # Monkey patch","      date_format = self.site.config['date_format']","      self.data['date_formatted']    = format_date(self.data['date'], date_format) if self.data.has_key?('date')","      self.data['updated_formatted'] = format_date(self.data['updated'], date_format) if self.data.has_key?('updated')","    end","  end","end"]}]}],[{"group":"doc","deltas":[{"start":{"row":0,"column":7},"end":{"row":0,"column":16},"action":"remove","lines":["Octopress"]},{"start":{"row":0,"column":7},"end":{"row":0,"column":8},"action":"insert","lines":["J"]}]}],[{"group":"doc","deltas":[{"start":{"row":0,"column":8},"end":{"row":0,"column":9},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":0,"column":9},"end":{"row":0,"column":10},"action":"insert","lines":["k"]}]}],[{"group":"doc","deltas":[{"start":{"row":0,"column":10},"end":{"row":0,"column":11},"action":"insert","lines":["y"]}]}],[{"group":"doc","deltas":[{"start":{"row":0,"column":11},"end":{"row":0,"column":12},"action":"insert","lines":["l"]}]}],[{"group":"doc","deltas":[{"start":{"row":0,"column":12},"end":{"row":0,"column":13},"action":"insert","lines":["l"]}]}],[{"group":"doc","deltas":[{"start":{"row":51,"column":12},"end":{"row":51,"column":21},"action":"remove","lines":["Octopress"]},{"start":{"row":51,"column":12},"end":{"row":51,"column":13},"action":"insert","lines":["J"]}]}],[{"group":"doc","deltas":[{"start":{"row":51,"column":13},"end":{"row":51,"column":14},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":51,"column":14},"end":{"row":51,"column":15},"action":"insert","lines":["k"]}]}],[{"group":"doc","deltas":[{"start":{"row":51,"column":15},"end":{"row":51,"column":16},"action":"insert","lines":["y"]}]}],[{"group":"doc","deltas":[{"start":{"row":51,"column":16},"end":{"row":51,"column":17},"action":"insert","lines":["l"]}]}],[{"group":"doc","deltas":[{"start":{"row":51,"column":17},"end":{"row":51,"column":18},"action":"insert","lines":["l"]}]}],[{"group":"doc","deltas":[{"start":{"row":51,"column":12},"end":{"row":51,"column":18},"action":"remove","lines":["Jekyll"]},{"start":{"row":51,"column":12},"end":{"row":51,"column":18},"action":"insert","lines":["Jekyll"]}]}],[{"group":"doc","deltas":[{"start":{"row":75,"column":12},"end":{"row":75,"column":21},"action":"remove","lines":["Octopress"]},{"start":{"row":75,"column":12},"end":{"row":75,"column":13},"action":"insert","lines":["J"]}]}],[{"group":"doc","deltas":[{"start":{"row":75,"column":13},"end":{"row":75,"column":14},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":75,"column":14},"end":{"row":75,"column":15},"action":"insert","lines":["k"]}]}],[{"group":"doc","deltas":[{"start":{"row":75,"column":15},"end":{"row":75,"column":16},"action":"insert","lines":["y"]}]}],[{"group":"doc","deltas":[{"start":{"row":75,"column":16},"end":{"row":75,"column":17},"action":"insert","lines":["l"]}]}],[{"group":"doc","deltas":[{"start":{"row":75,"column":17},"end":{"row":75,"column":18},"action":"insert","lines":["l"]}]}],[{"group":"doc","deltas":[{"start":{"row":75,"column":12},"end":{"row":75,"column":18},"action":"remove","lines":["Jekyll"]},{"start":{"row":75,"column":12},"end":{"row":75,"column":18},"action":"insert","lines":["Jekyll"]}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":1.5,"selection":{"start":{"row":75,"column":18},"end":{"row":75,"column":18},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1425230011000,"hash":"686dd331595acbeaf7c99c73de92a107a28d5f8c"}