class Chef < ActiveRecord::Base
    has_many :curries 
    before_save {self.email=email.downcase}
    validates :chefname, presence:true, length: {minimum:5, maximum: 100} 
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    validates :email, presence:true, length: {minimum:4, maximum:100}, 
                uniqueness: {case_sensitive:false}, format: {with: VALID_EMAIL_REGEX}
                                    
end