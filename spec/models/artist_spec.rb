require 'rails_helper'

RSpec.describe Artist, type: :model do
  context "validations" do
    it { is_expected.to validate_presence_of(:artist_name) }
    it { is_expected.to validate_presence_of(:artist_image_path) }
    it { is_expected.to validate_uniqueness_of(:artist_name) }
  end
end

