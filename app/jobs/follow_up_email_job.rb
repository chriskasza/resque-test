# frozen_string_literal: true

# app/jobs/follow_up_email_job.rb
class FollowUpEmailJob < ApplicationJob
  queue_as :email

  def perform(user_id)
    UserMailer.follow_up_email(user_id).deliver_now
  end
end
