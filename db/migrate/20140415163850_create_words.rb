class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.text :term
      t.text :anagram

      t.timestamps
    end
  end
end
