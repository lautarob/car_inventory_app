class Car < ApplicationRecord
  enum brand: { ford: 0, chevrolet: 1, renault: 2 }
  enum condition: { brand_new: 0, used: 1}

  belongs_to :dealership

  def current_price
    created_car_at = self.created_at
    current_time = Time.now
    time_difference = current_time - created_car_at
    time_difference_in_months = (time_difference / 1.month).to_i
  
    self.price - (self.price * 0.02 * time_difference_in_months)
  end
end
