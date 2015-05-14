class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
        t.string        :text_spanish, null: false
        t.string        :text_english, null: false
        t.string        :pic_url
        t.boolean     :multiple_choice
        t.string        :option_a
        t.string        :option_b
        t.string        :option_c
        t.string        :option_d
        t.string        :option_e
        t.string        :option_f
        t.string        :option_g
        t.string        :option_h

      t.timestamps null: false
    end
  end
end
