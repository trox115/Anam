class InscricaoMailer < ApplicationMailer
default from: 'antonioafonso@anam.pt'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.inscricao_mailer.confirmacao_inscricao.subject
  #
  def confirmacao_inscricao(inscricao)
    @inscricao = inscricao
    mail to: inscricao.email, subject:'Confirmação de inscrição'
  end
end
