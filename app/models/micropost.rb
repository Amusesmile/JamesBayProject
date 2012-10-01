class Micropost < ActiveRecord::Base
  #In the case of the Micropost model, there is only one attribute that needs to be editable through the web, namely, the content attribute, 
  #so we need to remove :user_id from the accessible list, as shown in Listing 10.7.
  attr_accessible :content#, :user_id  
  belongs_to :user
  belongs_to :photo
  validates :content, :presence=> true, :length=> { :maximum=> 1000 }
  validates :user_id, :presence=> true
  #reverse order 
  default_scope :order=> 'microposts.created_at DESC'
end