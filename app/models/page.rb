class Page < CouchRest::Model::Base
  property :title,     String
  property :body,      String
  property :slug,      String

  validates_presence_of :title, :body

  timestamps!

  view_by :slug

end

