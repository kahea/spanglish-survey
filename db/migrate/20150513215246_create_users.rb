class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

        t.string    :password

        t.integer   :age
        t.string     :gender

        t.integer   :learned_spanish_age                    # 0-7 8-17 18+
        t.integer   :learned_english_age                     # 0-7 8-17 18+

        t.integer   :years_in_usa
        t.integer   :years_in_mexico


      t.timestamps null: false
    end
  end
end
