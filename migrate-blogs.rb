#!/usr/bin/env ruby
#require 'aws-sdk'

require 'open-uri'
require './config/application.rb'


results1 = []
results2 = []

s3_target = "https://s3-eu-west-1.amazonaws.com/forwind-images/news/"

def parse (blog)
    links = []
    images = []
    imagesLinks = []
    # it could be all done in the one regex, but keep it separate, 
    # makes it easier to identify how to handle each case individually.
    linkFinder = /(?<target>[^!|\s+]\[(\w|\s|\-|')*\])(?<source>\(\S+\))/
    imageFinder = /(?<target>\!\[(\w|\s|\-|'|\,)*\])(?<source>\(\S+\))/
    imageLinkFinder = /(?<target>\[\!\[(\w|\s|\-|')*\]\(\S+\])(?<source>\(\S+\))/

    blog.body.scan(linkFinder) {|match| links << $~} 
    blog.body.scan(imageFinder) {|match| images << $~} 
    blog.body.scan(imageLinkFinder) {|match| imagesLinks << $~}

    p "--------------------------------------"

    item = New.new()
    item.title = blog.title
    item.slug = item.slug

    original = blog.body.dup
    s3 = Aws::S3::Resource.new(region: 'eu-west-1')

    if(images.length > 0 || imagesLinks.length > 0)
        #sort by pos and assume the first image to be banner
        potentials = (images + imagesLinks).uniq.sort_by {|l| l.offset(1)[0]}
        #strip out banner image from the original content
        original.slice!(potentials.first.offset(1)[0], potentials.first.offset(2)[1])
        #assign the banner
        if(potentials.first['target'].match(/http/))
            image = potentials.first['target'].gsub(/((\!)?\[(\w|\s|\-|'|\,)*\]|\[|\(|\]|\))/, '')
            File.write image.split('/').last, open(image).read
            p "writing file " + image
            #item.banner = 
            #item.bannerlink = potentials.first['source'].gsub(/\(|\)/, '')
        else
            #item.banner = potentials.first['source'].gsub(/\(|\)/, '')
            #item.bannerlink = '#' 
        end
        #extract any inline images
        #potentials.from(2) do |thing|
        #    if(thing['target'].match(/http/))
        #        thing['target'].gsub(/((\!)?\[(\w|\s|\-|'|\,)*\]|\[|\(|\]|\))/, '')
        #        item.bannerlink = thing['source'].gsub(/\(|\)/, '')
        #    else
        #        item.banner = potentials.first['source'].gsub(/\(|\)/, '')
        #        item.bannerlink = '#' 
        #    end
        #end
        #p "we think the banner is " + item.banner.to_s
        #p "we think the bannerlink is " + item.bannerlink.to_s
        #p "banner removed " + original
    end
        #potentials.from(2).each do |l| 
        #    p "inline image/imglink convert " + l.to_s
        #end
    #else
        #p "images length " + images.length.to_s
        #p "image links length " + imagesLinks.length.to_s
        #p "couldn't find any imagelinks"
        #p blog.body
    #end
    
    p "--------------------------------------"
    #item
end

bls = BlogPost.find :all

puts "total count " + bls.size.to_s
payload = bls.select { |post| post.published}
sorted = payload.sort_by {|b| b.created_at}

puts "to be migrated count " + payload.size.to_s


sorted.each do |blog|
    item = parse(blog)
    #item.author = User.find(blog.user_id)
end

