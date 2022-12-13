class User < ApplicationRecord
    validates :first_name, presence: true, length: { minimum: 3 }
    validates :last_name, presence: true, length: { minimum: 3 }
    validates :birth_date_range, presence: true

    private
        def birth_date_range
            min_date = Date.today.next_year(-100)
            max_date = Date.today.next_year(-6)

            unless birth_date > min_date && birth_date < max_date
                errors.add(:birth_date, "Birth date must be from \"#{min_date.strftime("%d %b %Y")}\" to \"#{max_date.strftime("%d %b %Y")}\"")
            end
            birth_date
        end
end
