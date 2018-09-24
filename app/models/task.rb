class Task < ApplicationRecord

  def completed?
    completed_on.blank? == false #it is completed
  end
end
