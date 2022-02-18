class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :event
    validates :comment, presence: true
    serialize :liked_by, Array
    def user
        User.unscoped { super }
    end
end
