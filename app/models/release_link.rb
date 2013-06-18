class ReleaseLink < ActiveRecord::Base
  belongs_to :release
  class << self; attr_accessor :types end  
  @types = {:PHYSICAL => 0, :DOWNLOAD => 1, :STREAM => 2, :REVIEW => 3}
end
