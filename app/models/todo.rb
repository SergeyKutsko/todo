class Todo < ActiveRecord::Base
   validates :description, :priority, presence: true
   validates :priority, numericality: { only_integer: true, greater_than: 0, less_than: 10 }
   belongs_to :user
end
