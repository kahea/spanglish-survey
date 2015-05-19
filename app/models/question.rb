class Question < ActiveRecord::Base
    has_attached_file :pic
    validates_attachment_content_type :pic, :content_type => /\Aimage\/.*\Z/
    has_many :answers
    before_destroy :purge

    def prev
        Question.find_by_order(self.order - 1)
    end

    def next
        Question.find_by_order(self.order + 1)
    end

    def purge
        self.answers.all.destroy_all
    end

end
