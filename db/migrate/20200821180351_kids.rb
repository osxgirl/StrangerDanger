class Kids < ActiveRecord::Migration[6.0]
  def change
      create_table :kids do |t|
        t.text :name
        t.text :saying

        t.timestamps
      end
  end
end
