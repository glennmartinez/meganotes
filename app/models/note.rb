class Note < ActiveRecord::Base
  attr_accessible :content, :name
  attr_protected :id

  has_many :labelships, :dependent => :destroy
  has_many :labels,  :through => :labelships, :dependent => :destroy


  accepts_nested_attributes_for :labelships


  def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end
end
