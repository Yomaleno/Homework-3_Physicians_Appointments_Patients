class Patient < ApplicationRecord
    has_many :appointments
    has_many :physicians , through: :appointments

    def first_and_last
        "#{first_name} #{last_name}"
    end
end
