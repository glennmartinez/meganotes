class Labelship < ActiveRecord::Base
  attr_accessible :label_id, :note_id
  attr_protected :id


  belongs_to :note
  belongs_to :label 

  
end
