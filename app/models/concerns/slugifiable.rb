module Slugifiable
  module ClassMethods
    def find_by_slug(slug)
      self.all.find { |a| a.slug == slug }
    end
  end
end
