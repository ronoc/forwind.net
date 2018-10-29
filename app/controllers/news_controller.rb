class NewsController < ApplicationController

    def index
        puts "here"
        @news = News.where("published = true").order(date: :desc);        
        @new = @news.last
    
        respond_to do |format|
          format.html { render :layout => 'base'}
          format.xml  { render :xml => @news }
                format.atom { render :atom => @news }
        end
      end
    
      def show
        @news = News.find(params[:id])
        respond_to do |format|
            format.html { render :layout => 'base'}
            format.xml  { render :xml => @news }
                  format.atom { render :atom => @news }
          end  
      end
    
end  