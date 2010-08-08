class String
  def slugorize
    result = self.downcase
    result.gsub(/[^a-z0-9]/,'-').squeeze('-').gsub(/^-|-$/,'')
  end

  def slugorize!
    self.replace(self.slugorize)
  end
end

