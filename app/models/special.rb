class Special < ActiveRecord::Base

  validates_presence_of :name

  belongs_to :comedian

  def self.average_length
    Special.average(:length).to_i
  end

end
