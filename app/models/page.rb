class Page < CouchRest::Model::Base
  property :title,     String
  property :body,      String
  property :slug,      String

  timestamps!

  view_by :slug

end

