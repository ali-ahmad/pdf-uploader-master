class Upload < ActiveRecord::Base
  attr_accessible :uploaded 
  has_attached_file :uploaded, :styles => { :thumb => "100x100>" }
#  validates_attachment_content_type :uploaded, :content_type => "pdf"
#  validates_attachment_presence :uploaded
end
