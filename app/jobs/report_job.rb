# frozen_string_literal: true

# app/jobs/report_job.rb
class ReportJob < ApplicationJob
  queue_as :report_queue

  def perform
    puts "Ran report_job at #{Time.zone.now}"
    UserMailer.follow_up_email(1).deliver_now
  end
end
