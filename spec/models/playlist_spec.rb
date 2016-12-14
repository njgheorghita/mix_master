require 'rails_helper'

RSpec.describe Playlist, type: :model do
  context "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:song_ids) }
    it { is_expected.to validate_uniqueness_of(:name) }
  end
end
