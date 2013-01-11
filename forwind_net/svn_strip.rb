#!/usr/bin/env ruby
# svn_strip
#
# deletes all svn files in named directory or current directory
# DELETES FILES WITHOUT WARNING, USE AT YOUR OWN RISK
# Free to use or distribute only as-is without warranty or restriction
# -RubyPanther

def get_dir(d)
    Dir.new(d).grep(/[^\.]/).collect do |f|
        File.join(d,f)
    end
end

def del_dir(d)
    get_dir(d).each do |filename|
        if File.directory?(filename)
            del_dir(filename)
        else
            File.unlink(filename)
        end
    end
    Dir.delete(d)
end

def del_svn(path=nil)
    path ||= ARGV[0] || ['.']
    get_dir(path).find_all do |filename|
        if File.directory?(filename)
            if File.basename(filename) == '.svn'
                puts "delete #{filename}"
                del_dir( filename )
            else
                del_svn( filename )
            end
        end
    end
end

( ARGV.any? ? ARGV : '.' ).each do |dir|
    del_svn( dir )
end
