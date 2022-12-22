class CreateStaffMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :staff_members do |t|
      t.string :email, null: false # メールアドレス
      t.string :family_name, null, null: false # 姓
      t.string :given_name, null, null: false # 名
      t.string :family_name_kana, null, null: false # 姓（カナ）
      t.string :given_name_kana, null, null: false # 名（カナ）
      t.string :hashed_password # パスワード
      t.data :start_date, null: false #開始日
      t.data :end_date # 終了日
      t.boolean :suspended, null:false, default: false #無効フラグ
      
      t.timestamps
    end
  end
end
