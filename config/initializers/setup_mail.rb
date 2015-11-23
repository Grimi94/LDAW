ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :address                => 'smtp.sengrid.net',
    :port                   => '587',
    :authentication         => :plain,
    :user_name              => 'app42917363@heroku.com',
    :password               => 'myhlveir4812',
    :domain                 => 'heroku.com',
    :enable_starttls_auto   => true 
}
