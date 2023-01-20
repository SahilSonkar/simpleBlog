class Photo < ApplicationRecord

    before_create :show_status

    def show_status
        puts "hey , start the process ......."
    end
end
