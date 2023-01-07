require "redis"
$redis = Redis.new(url: ENV["REDISCLOUD_URL"])
