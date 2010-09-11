class Post < CouchRest::Model::Base

  property :title,     String
  property :body,      String
  property :tags,      [String]

  validates_presence_of :title, :body

  timestamps!

  def formated_tags
    self.tags.join(',')
  end
end

