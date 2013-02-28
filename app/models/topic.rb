class Topic
  include Mongoid::Document

  field :title, :type => String
  field :author, :type => String
  
  has_many :replies, :dependent => :destroy

  validates_presence_of :title
end
