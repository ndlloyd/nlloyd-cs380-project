class RemovePasswordDigestFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :passwordDigest
  end

  def down
    add_column :users, :password_digest, :string
  end
end
