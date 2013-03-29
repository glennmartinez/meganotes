class Label < ActiveRecord::Base
  attr_accessible :name


  has_many :labelships, :dependent => :destroy
  has_many :notes,  :through => :labelships, :dependent => :destroy




	def self.search(search)
	  if search
	    where('name LIKE ?', "%#{search}%")
	  else
	    scoped
    end
  end

end
