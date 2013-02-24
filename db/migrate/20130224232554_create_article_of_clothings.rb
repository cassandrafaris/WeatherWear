class CreateArticleOfClothings < ActiveRecord::Migration
  def change
    create_table :article_of_clothings do |t|
      t.string :name
      t.string :clothing_type

      t.timestamps
    end
  end
end
