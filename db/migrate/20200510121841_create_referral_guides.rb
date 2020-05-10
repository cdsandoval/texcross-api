class CreateReferralGuides < ActiveRecord::Migration[6.0]
  def change
    create_table :referral_guides do |t|
      t.string :number
      t.string :owner
      t.integer :type

      t.timestamps
    end
  end
end
