class ChangeTasksNameNotNull < ActiveRecord::Migration[7.0]
  def change
    change_column_null :tasks, :name, :content, false
  end
end
