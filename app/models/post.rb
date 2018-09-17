class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, presence: true, if :correct_cat?(:category)

  def correct_cat?(cat)
    if cat === "Non-Fiction" || cat === "Fiction"
      true
    else
      false
    end
  end
end
