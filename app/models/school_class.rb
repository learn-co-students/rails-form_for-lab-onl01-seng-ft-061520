class SchoolClass < ApplicationRecord

    def title_and_room
        self.title + " in room " + self.room_number.to_s
    end

end
