module NewsHelper

    def format_time(time)
        t = Time.at(time)
        return "#{t.strftime("%b")}, '#{t.strftime("%y")}"   
    end
end
