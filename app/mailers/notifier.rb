class Notifier < ActionMailer::Base
default :from => 'webapp <steve@bov.nu>'

  def sub_received(dom,submission)
    @greeting = "Hi"
    @inurl = dom
    @submission = submission

  #  mail :to => "phil@bov.nu, steve@bov.nu" ,:subject => "Submission from #{dom}"
  mail :to => "bikerman12@hotmail.com,bigbov99@gmail.com" ,:subject => "Submission from #{dom}"
  end

def sub_ack(dom,submission)
  @greeting = "Hi"
  @inurl = dom
  @submission = submission

  mail :to => @submission.email ,:subject => "Thankyou from #{dom}"
end
  def feedback_received(dom,contact)
    @greeting = "Hi"
    @inurl = dom
    @contact = contact

  #  mail :to => "phil@bov.nu, steve@bov.nu ,bikerman12@hotmail.com,bigbov99@gmail.com" ,:subject => "Submission from #{dom}"
  mail :to => "bikerman12@hotmail.com,bigbov99@gmail.com" ,:subject => "Contact Request from #{dom}"
  end

def feedback_ack(dom,contact)
  @greeting = "Hi"
  @inurl = dom
  @contact = contact

  mail :to => @contact.email ,:subject => "Thankyou from #{dom}"
end

end

