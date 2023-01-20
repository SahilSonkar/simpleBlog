class User < ApplicationRecord

    has_many :articles
    has_and_belongs_to_many :courses 
    has_many :user_projects
    has_many :projects , through: :user_projects

    validates :first_name , :last_name , presence: true

    after_create :check_email



    def check_email
        if self.email.present?
            puts " - - - - -  email is #{self.email}  - - - - -"
        else
            puts "  - - - - - -email is not present - - - - - -"
        end
    end
end
