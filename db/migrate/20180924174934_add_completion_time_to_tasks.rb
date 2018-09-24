class AddCompletionTimeToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column(:tasks, :completed_on, :datetime) #datetime
  end
end
