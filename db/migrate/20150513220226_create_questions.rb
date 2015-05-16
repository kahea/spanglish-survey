class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
        t.integer          :order
        t.string            :text
        t.string            :text_spanish
        t.string            :text_english
        t.boolean         :multiple_choice
        t.string            :a
        t.string            :b
        t.string            :c
        t.string            :d
        t.string            :e
        t.string            :f
        t.string            :g
        t.string            :h
        t.attachment    :pic

      t.timestamps null: false
    end
    add_index :questions, :order
  end
end
