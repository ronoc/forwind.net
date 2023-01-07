class ReleaseLink < ActiveRecord::Base
  include ActiveModel::Model
  belongs_to :release
  class << self; attr_accessor :types end  
  @types = {:PHYSICAL => 0, :DOWNLOAD => 1, :STREAM => 2, :REVIEW => 3, :DISCOGS => 4}
end
