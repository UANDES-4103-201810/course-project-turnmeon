class AddEmailConfirmColumnToFunds < ActiveRecord::Migration[5.1]
  def change
    add_column :funds, :email_confirmed, :boolean, :default => false
    add_column :funds, :confirm_token, :string
  end
end
