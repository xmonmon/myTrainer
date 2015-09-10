class ChangePasswordToPasswordDigestInTrainers < ActiveRecord::Migration
  def change
  	  	rename_column :trainers, :password, :password_digest
  end
end
