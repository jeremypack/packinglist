class PackingListMailer < ActionMailer::Base
  
  def bag(bag, email, user = nil) 
    subject    'Your Packing List'
    recipients  email
    from        "thecreator@purplestickypunch.com"    
    content_type  'text/html'
    body       (:bag => bag, :email => email, :user => user)
  end

end
