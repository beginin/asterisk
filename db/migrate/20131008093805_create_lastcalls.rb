class CreateLastcalls < ActiveRecord::Migration
  def change
    create_table :lastcalls do |t|
      t.string :extention
      t.string :tnumber

      t.timestamps
    end
  end
end
