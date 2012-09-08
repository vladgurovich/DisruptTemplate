class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :omniauthable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name

  def self.find_by_email_or_create(service_provider)
    # search for a user with this email address
    user = User.find_or_initialize_by_email(service_provider.email) do |user|
      user.password = SecureRandom.hex(10)
      user.name = service_provider.name
    end

    # add this authentication service to our new user
    service = user.services.build(:provider => service_provider.provider, :uid => service_provider.uid, :name => service_provider.name, :email => service_provider.email)
    service.update_credentials(service_provider)
    # do not send confirmation email, we directly save and confirm the new record
    user.skip_confirmation!
    user.save!
    user.confirm!

    user
  end
end
