class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.text :content
      t.integer :upvote

      t.timestamps
    end
  end
end
