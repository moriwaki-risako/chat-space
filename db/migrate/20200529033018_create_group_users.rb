class CreateGroupUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :group_users do |t|
      t.references    :user, foreign_key: true
      t.references    :group, foreing_key: true
      t.timestamps
    end
  end
end

belongs_to :group
belongs_to :user
