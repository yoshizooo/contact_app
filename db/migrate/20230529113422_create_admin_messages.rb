class CreateAdminMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :admin_messages do |t|
      t.references :message,     null: false, foreign_key: true
      t.references :admin,    null: false, foreign_key: true
      t.timestamps
    end
  end
end
