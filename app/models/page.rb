class Page < CouchRest::Model::Base
  property :title,     String
  property :body,      String
  property :slug,      String

  before_validate :generate_slug

  validates_presence_of :title, :body, :slug

  timestamps!

  view_by :slug

  private
    def generate_slug
      self.slug = self.title.dup if self.slug.blank?
      self.slug.slugorize!
    end

end

