module Placeholder
  extend ActiveSupport::Concern

  def self.image_generator(w:,h:)
    "http://placeholder.it/wxh"
  end
end
