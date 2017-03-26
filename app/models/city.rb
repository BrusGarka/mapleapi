class City < ApplicationRecord

    before_save :sum_costs

    def sum_costs
        byebug
        a = 0
        self.attributes.to_a[2..9].each do |bbb|
            a += bbb.second
        end

        self.monthly_cost = a
    end

end
