class AddIntroductionToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :introductio, :text
  end
end
