class Newuser < ActiveRecord::Base
  belongs_to :sex
  attr_accessible :name, :year, :email, :gender, :major, :username, :password
  
  validates :name, presence: true
  validates :username, :password, :email, presence: true
  validates :username, :length => { :minimum => 4, :message => " must be at least 4 characters long"}
  validates :password, :length => { :minimum => 6, :maximum => 15}
  validates :password, :format => { :with =>     /\A(?=[^0-9]*[0-9])(?=[^A-Za-z]*[A-Za-z])\w+\Z/, 
    :message => " must be alpha-numeric and contain at least one number" }
  validates :email, uniqueness: true
    
  scope :class_of_2015, where('year < ?', 2015.0)
 
    
end
