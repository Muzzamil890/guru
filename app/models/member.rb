class Member < ActiveRecord::Base
  searchkick
  scope :active, -> { where(active: true) }
  scope :inactive, -> { where(active: false) }

  validates :first_name, :last_name, :membership_type, :membership_price, presence: true
  validates_date :birthday, allow_blank: true, on_or_before: -> { Date.current }
  validates_date :start_date, allow_blank: true
  validates_date :end_date, allow_blank: true, after: :start_date

  # annual, monthly, visit
  enum membership_type: {'monthly'=> 'monthly', 'annual'=> 'annual', 'visit'=> 'visit'}

  mount_uploader :image, ImageUploader

  belongs_to :studio
  belongs_to :level
  belongs_to :source

  has_one :account

  has_many :payments, -> { order(created_at: :desc) }, through: :account
  has_many :visits, -> { order(created_at: :desc) }
  has_many :notes, -> { order(created_at: :desc) }, class_name: "Member::Note"

  delegate :payment_due_date, :balance, to: :account, prefix: true
  delegate :default_payment_amount, to: :account, prefix: false

  def name
    [first_name, last_name].join ' '
  end

  def address?
    ![street_address, city, state, zip].compact.reject { |a| a.empty? }.empty?
  end

  def account?
    account.present?
  end

  def self.recent(since = 15.days.ago)
    where('created_at > ?', since)
  end

  def self.birthdays(month = Date.current.month)
    where('extract(month from birthday) + 0 = ?', month)
  end
end
