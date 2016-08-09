# == Schema Information
#
# Table name: payments
#
#  id           :integer          not null, primary key
#  title        :string
#  description  :text
#  value        :decimal(, )
#  user_id      :integer
#  status       :integer
#  times_to_pay :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  pay_date     :date
#
# Indexes
#
#  index_payments_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_081dc04a02  (user_id => users.id)
#

class Payment < ActiveRecord::Base
  extend Enumerize
  
  belongs_to :user
  
  enumerize :status, in: { a_vencer: 1, pago: 2, vencido: 3, parcelado: 4 }
  
  validates_presence_of :title 
  validates_presence_of :value 
  validates_presence_of :status 
  validates_presence_of :pay_date, if: :status? 
  validates :times_to_pay, length: { maximum: 12 }
  
  
  def status?
    status == "a_vencer"
  end
  
end
