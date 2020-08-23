class Student < ActiveRecord::Base
  def whole_name
    self.first_name + " " + self.last_name
  end
end