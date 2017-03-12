class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :comments, :commenter, :email
  end
end
