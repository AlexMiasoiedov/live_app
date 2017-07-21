class CreateNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :notifications do |t|
      t.integer :recipient_id
      t.references :user, foreign_key: true
      t.text :body
      t.string :action
      t.string :notifiable_type
      t.integer :notifiable_id

      t.timestamps
    end
  end
end
