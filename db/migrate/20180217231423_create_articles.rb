class CreateArticles < ActiveRecord::Migration[5.1]

# This method is use to make changes
  def change
    create_table(:articles) do |t|
      # this is creating a table named :articles......you dont need parentheses in ruby
      # then it is assigning the variable t
      t.string :title
      # this creates a title column with the datatype string
      t.text :body
      # this creates a body column with the datatype text

      t.timestamps
      # this creates to timestamp columns
    end
  end


end
