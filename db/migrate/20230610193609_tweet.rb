class Tweet < ActiveRecord::Migration[7.0]
  def change
  create_table :tweets do |t|
    t.string :body, null: false, default: "" 
    #Ex:- :default =>''
    t.references :user, foreign_key: true
    t.timestamps
    end
  end
end