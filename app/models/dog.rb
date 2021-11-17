class Dog < ActiveRecord::Base
  has_many :deeds, dependent: :destroy 

  validates :name, presence: true

#instance method on dog how many deeds in the exercise category that dog has


def exercise_deeds
  self.deeds.filter do |y|
     y.category == "Exercise"  
     end  
    end

    def self.all_exercise_deeds
      self.all.filter do |y|
        # y.category == "Exercise"
        puts y
      end
    end
end




