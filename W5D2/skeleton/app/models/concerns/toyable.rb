module Toyable
  extend ActiveSupport::Concern

  included do
    has_many :toys, as: :toyable
  end

  def receive_toy(name)
    # self.toys << name
    self.toys.find_or_create_by(name: name) #find the toy with this name, or we make a new toy with that name
  end
end
