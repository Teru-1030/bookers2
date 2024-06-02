class RemoveIntroductioFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :introductio, :text
  end
end
