class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :text
      t.timestamps
      t.references :user, foreign_key: true
    end
  end
end
