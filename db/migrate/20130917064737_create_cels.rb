class CreateCels < ActiveRecord::Migration
  def change
    create_table :cels do |t|
      t.string :eventtype
      t.timestamp :eventtime
      t.string :userdeftype
      t.string :cid_name
      t.string :cid_num
      t.string :cid_ani
      t.string :cid_rdnis
      t.string :cid_dnid
      t.string :exten
      t.string :context
      t.string :channame
      t.string :appname
      t.string :appdata
      t.integer :amaflags
      t.string :accountcode
      t.string :peeraccount
      t.string :uniqueid
      t.string :linkedid
      t.string :userfield
      t.string :peer

      t.timestamps
    end
  end
end
