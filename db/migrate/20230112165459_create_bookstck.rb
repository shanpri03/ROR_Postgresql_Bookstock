class CreateBookstck < ActiveRecord::Migration[7.0]
  def change
    create_table :bookstcks do |t|
      t.string :bookname
      t.string :bookauthor
      t.integer :bookquantity
      t.integer :bookprice
      t.integer :pubyear
      t.timestamps
    end
  end
end
