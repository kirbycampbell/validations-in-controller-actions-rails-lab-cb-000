class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}

  def correct_cat?
    if cat === "Non-Fiction" || cat === "Fiction"
      true
    else
      false
    end
  end
end
