class Spree::PaymentMethod::SberBankInvoice < Spree::PaymentMethod::Check
  preference :recipient, :string
  preference :inn, :string
  preference :kpp, :string
  preference :corr, :string
  preference :bik, :string
  preference :settlement_acc, :string
  preference :recipient_bank, :string
  preference :recipient_bank_city, :string

  attr_accessible :preferred_recipient, :preferred_inn, :preferred_kpp, :preferred_corr, 
    :preferred_bik, :preferred_settlement_acc, :preferred_recipient_bank, :preferred_recipient_bank_city

  def desc
    "<p>#{I18n.t('sberbank_invoice')}</p>".html_safe
  end
end
