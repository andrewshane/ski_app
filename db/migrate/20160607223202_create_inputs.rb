class CreateInputs < ActiveRecord::Migration
  def change
    create_table :inputs do |t|
      t.string :airport_code
      t.date :return
      t.date :departure

      t.timestamps

    end
  end
end
