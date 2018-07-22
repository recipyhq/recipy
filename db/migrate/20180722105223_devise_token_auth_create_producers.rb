class DeviseTokenAuthCreateProducers < ActiveRecord::Migration[5.2]
  def change
    create_table(:producers) do |t|
      ## Required
      t.string :provider, :null => false, :default => "email"
      t.string :uid, :null => false, :default => ""

      ## Database authenticatable
      t.string :encrypted_password, :null => false, :default => ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at
      t.boolean  :allow_password_change, :default => false

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, :default => 0, :null => false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      # Only if using reconfirmable
      t.string   :unconfirmed_email

      ## Lockable

      # Only if lock strategy is :failed_attempts
      t.integer  :failed_attempts, :default => 0, :null => false
      # Only if unlock strategy is :email or :both
      t.string   :unlock_token
      t.datetime :locked_at

      ## User Info
      t.string :email

      ## Tokens
      t.json :tokens

      t.timestamps
    end

    add_index :producers, :email, unique: true
    add_index :producers, [:uid, :provider], unique: true
    add_index :producers, :reset_password_token, unique: true
    add_index :producers, :confirmation_token, unique: true
    add_index :producers, :unlock_token, unique: true
  end
end
