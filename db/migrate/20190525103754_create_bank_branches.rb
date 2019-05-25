class CreateBankBranches < ActiveRecord::Migration[5.1]
  def change
    create_table :bank_branches do |t|
      t.string :name
      t.text :address
      t.string :ifsc_code
      t.string :micr_code
      t.references :manager, foreign_key: true

      t.timestamps
    end
  end
end
