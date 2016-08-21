class AddEmailToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :author_email, :string
  end
end
