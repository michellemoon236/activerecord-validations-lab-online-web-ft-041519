class Post < ActiveRecord::Base
  validates :title, presence: true 
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  validate :clickbait?
  
  def clickbait?
    # binding.pry 
    if self.title != nil
<<<<<<< HEAD
      self.title.include?("Won't Believe") || self.title.include?("Secret") || self.title.include?("Top") || self.title.include?("Guess") ? true : errors.add(:title, "must be clickbait")
=======
      self.title.include?("Won't Believe") || self.title.include?("Secret") || self.title.include?("Top") || self.title.include?("Guess") ? errors.add(:title, "must be clickbait") : true
>>>>>>> 9d37d2f479afc4a77b673c0619341a1b04c94c34
    end
  end
end
