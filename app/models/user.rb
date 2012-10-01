class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  has_secure_password
  has_many :microposts, :dependent=>:destroy #kill microposts when you kill a user 
  
  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token
  
  
  validates :name,  :presence=> true, :length=> { :maximum=> 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, :presence=>true, :format=> { :with=> VALID_EMAIL_REGEX }, :uniqueness=>{ :case_sensitive=> false }
  validates :password, :length=> { :minimum=> 6 } #:presence=>true
  validates :password_confirmation, :presence=> true
  #validates :secret_code,  :presence=> true

  def feed
    # This is preliminary. See "Following users" for the full implementation.
    #The question mark ensures that id is properly escaped before being included in the underlying SQL query, 
    #thereby avoiding a serious security hole called SQL injection. The id attribute here is just an integer, 
    #so there is no danger in this case, but always escaping variables injected into SQL statements is a good habit to cultivate.    
    Micropost.where("user_id = ?", id)
  end  
  
  private
  def create_remember_token
    self.remember_token = SecureRandom.hex#urlsafe_base64 (use this instead of hex when you have ruby 1.9)
  end  
end
