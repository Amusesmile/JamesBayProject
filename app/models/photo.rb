class Photo < ActiveRecord::Base
  attr_accessible :photographer, :collection, :format, :size, :location, :coordinates
  attr_accessible :title, :creeSyllables, :description, :longDescription, :subjects, :imageType
  attr_accessible :aestheticRating, :ethnographicRating, :communityRating, :dateTaken, :url
    
  belongs_to :user
  has_many :microposts
  has_and_belongs_to_many :groups
  validates :title, :presence=>:true
  validates :url, :presence=>:true
end
