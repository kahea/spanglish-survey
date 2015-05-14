class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
        t.belongs_to    :question, null: false
        t.belongs_to    :user
        t.string            :text
        t.string            :choice

      t.timestamps null: false
    end
  end
end
