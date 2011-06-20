class User < ActiveRecord::Base


  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :confirmable, :trackable, :validatable,:token_authenticatable



#Agile development favors
#� Individuals and interactions over processes and tools
#� Working software over comprehensive documentation
#� Customer collaboration over contract negotiation
#� Responding to change over following a plan 

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name,:last_name,:email, :password, :password_confirmation, :remember_me ,:avatar
 # validates_presence_of :first_name,:last_name
  #validates(:first_name, :presence => true)
  validates(:first_name,:last_name, :presence => true)
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  # have need for s3 credentials for upload file store in AWS server
  #has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" },
  #  :storage => :s3,
  #  :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
  #  :path => ":class/:id/:style/:filename"
  ROLES = %w[admin coach player]
end
