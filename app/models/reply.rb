class Reply
  include Mongoid::Document

  field :message, :type => String
  field :author, :type => String

  belongs_to :topic

  validates_presence_of :message
=begin
  def as_json(options={})
    { :message => self.message,
      :author => self.author,
    }
  end
=end

end
