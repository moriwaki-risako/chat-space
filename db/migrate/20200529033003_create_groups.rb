class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string   :name, null: false
      t.index    :name, unique: true
      t.timestamps
    end
  end
end

has_many :users,  through: :group_users
has_many :group_users
validates :name, presence: true, uniqueness: true