class Newuser < ActiveRecord::Base
  belongs_to :sex
  attr_accessible :name, :year, :email, :gender, :major
end
