class AddUserReferenceToMemes < ActiveRecord::Migration[5.1]
  def change
    add_reference :memes, :user, index: true, foreign_key: true
  end
end
