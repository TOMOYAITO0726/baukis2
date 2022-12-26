class CreateAdminstrators < ActiveRecord::Migration[6.1]
  def change
    create_table :adminstrators do |t|
       t.string :email, null: false # メールアドレス
       t.string :hashed_password #パスワード
        t.boolean :suspended, null:false, default: false #無効フラグ
      t.timestamps
    end
    add_index :adminstrators, "LOWER(email)", unique: true
  end
end
