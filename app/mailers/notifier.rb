class Notifier < ActionMailer::Base
default :from => 'webapp <steve@bov.nu>'

  def sub_received(dom,submission)
    @greeting = "Hi"
    @inurl = dom
    @submission = submission

    mail :to => "phil@bov.nu, steve@bov.nu" ,:subject => "Submission from #{dom}"
  end

def sub_ack(dom,submission)
  @greeting = "Hi"
  @inurl = dom
  @submission = submission

  mail :to => @submission.email ,:subject => "Thankyou from #{dom}"
end

end

