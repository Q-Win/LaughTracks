class Comedian < ActiveRecord::Base

  validates_presence_of :name, :age

  has_many :specials

  def self.average_age
    Comedian.average(:age).to_i
  end

  def self.cities
   distinct.pluck(:city)
 end

end
