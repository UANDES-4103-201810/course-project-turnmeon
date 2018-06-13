
class FundMailer < ApplicationMailer
  default from: "turnitonwt@gmail.com"
  
  def fund_confirmation(fund, user)
    @user = user
    @fund = fund
    

    mail(to: user.email , subject: "Your recent fund confirmation")
  end
end
