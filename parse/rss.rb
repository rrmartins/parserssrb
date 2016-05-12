require 'rrsimple-rss'
require 'open-uri'

module Parse
  class Rss

    def initialize(url)
      @url = url
      @rss = nil
      parse
    end

    def parse
      @rss = RRSimpleRSS.parse open(@url)
    end

    def get_title
      @rss.channel.title
    end

    def get_description
      @rss.channel.description
    end

    def get_link
      @rss.channel.link
    end

    def get_categories
      str = []
      have_category = false
      categories = @rss.items.map(&:categories)
      categories.map{|c| have_category = true if !c.nil? }
      unless have_category
        str << "No have Categories"
      else
        categories.map{|c| str << c }
      end
      str
    end

    def get_total_items
      @rss.items.count
    end

  end
end
