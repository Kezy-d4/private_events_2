class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"

  def to_s
    "#{title} by #{creator.name}"
  end
end
