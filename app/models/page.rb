class Page < ActiveRecord::Base
  attr_accessible :content, :page_image, :permalink, :title

  validates_uniqueness_of :permalink

  def to_param
    permalink
  end
end
