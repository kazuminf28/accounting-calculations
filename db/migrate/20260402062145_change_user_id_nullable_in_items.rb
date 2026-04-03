class ChangeUserIdNullableInItems < ActiveRecord::Migration[8.1]
  def change
    change_column_null :Items, :user_id, true
  end
end
