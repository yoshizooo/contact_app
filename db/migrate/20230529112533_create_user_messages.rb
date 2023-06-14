class CreateUserMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :user_messages do |t|
      t.references :message,     null: false, foreign_key: true
      t.references :user,     null: false, foreign_key: true
      t.timestamps
    end
  end
end
