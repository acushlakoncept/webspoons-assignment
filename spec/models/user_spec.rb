require 'rails_helper'

RSpec.describe User, type: :model do
    # Validation
    it { should validate_presence_of(:title) }

    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_least(2) }

    it { should validate_presence_of(:phone) }

    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email).ignoring_case_sensitivity }

    it { should allow_values(:active, :inactive).for(:status) }
end
