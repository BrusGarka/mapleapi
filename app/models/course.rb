class Course < ApplicationRecord
    enum degree: [:certificate, :diplom, :advanced_diplom]
    belongs_to :city

    def combo
        "#{self.name}  (#{self.school})"
    end
end
