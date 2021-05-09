class CreateMesssages < ActiveRecord::Migration[6.0]
  def change
    create_table :messsages do |t|

      t.timestamps
      t.string :content
      t.references :user, foreign_key: true
      t.references :room, foreign_key: true
    end
  end
end
