class Image < ActiveRecord::Base
    include ActiveModel::Model
    has_and_belongs_to_many :news
    has_and_belongs_to_many :releases
end