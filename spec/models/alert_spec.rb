require 'rails_helper'

RSpec.describe Alert, type: :model do
  describe "scopes" do
    let!(:expired_alert)   { Alert.create!(expired_at: 2.days.ago) }
    let!(:unexpired_alert) { Alert.create!(expired_at: 2.days.from_now) }
    let(:now) { Time.current }

    describe ".expired" do
      it "returns alerts with expired < now" do
        results = Alert.expired(now)
        expect(results).to include(expired_alert)
        expect(results).not_to include(unexpired_alert)
      end
    end

    describe ".unexpired" do
      it "returns alerts with expired >= now" do
        results = Alert.unexpired(now)
        expect(results).to include(unexpired_alert)
        expect(results).not_to include(expired_alert)
      end
    end
  end
end
