class AddUpvoteToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :upvote, :integer
  end
end
