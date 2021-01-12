class Like < ApplicationRecord
  belong_to :user
  belong_to :review
  belong_to :comment
end
