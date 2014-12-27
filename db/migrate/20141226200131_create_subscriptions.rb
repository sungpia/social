class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.references :leader, index: true
      t.references :follower, index: true

      t.timestamps null: false
    end
    add_foreign_key :subscriptions, :users, column: :leader_id
    add_foreign_key :subscriptions, :users, column: :follower_id
  end
end
