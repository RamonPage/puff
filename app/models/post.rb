class Post < CouchRest::Model::Base

  property :title,     String
  property :body,      String

  validates_presence_of :title, :body

  timestamps!

end

