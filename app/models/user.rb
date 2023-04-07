class User < ApplicationRecord
 after_create :assign_default_role

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:trackable,:confirmable, :omniauthable, omniauth_providers: [:github,:google_oauth2,:facebook]
 rolify


 # after_create :assign_default_role

      # def assign_default_role
      #   self.add_role(:student) if self.roles.blank?
      # end
      #  after_create :assign_default_role
validate :must_have_role, on: :update
private 
 def must_have_role
    unless roles.any?
        errors.add(:roles, "must have role")
        
    end
 end

    def assign_default_role
        if User.count == 1
          self.add_role(:admin) if self.roles.blank?
          self.add_role(:teacher)
          self.add_role(:student)
        else
          self.add_role(:student) if self.roles.blank?
          self.add_role(:teacher) 
        end
    end

        has_many :courses

        def self.ransackable_attributes(auth_object = nil)
                ["email","sign_in_count","email_or_sign_in_count_eq"]
        end


def self.from_omniauth(auth)
  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.email = auth.info.email
    user.password = Devise.friendly_token[0, 20]
    # user.name = auth.info.name
    user.provider = auth.provider
    user.uid = auth.uid
    user.confirmed_at = Time.now # set confirmed_at here
  end
end
public
def online?
    updated_at > 2.minutes.ago
end

end
