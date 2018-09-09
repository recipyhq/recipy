require 'rails_helper'

RSpec.describe SentryJob, type: :job do
  subject { described_class }

  it { expect { subject.perform_later }.to have_enqueued_job.on_queue('default') }
end
