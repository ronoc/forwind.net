class NewsItem < ActiveRecord::Base
    def slug
        return @title.gsub(/(\s|\.|\')*/, '')
    end
end