# # frozen_string_literal: true

require 'rails_helper'

RSpec.describe Movie do
  it { should validate_presence_of(:category) }
#   # it { should validate_presence_of(:title) }
#   # it { should validate_presence_of(:year) }
#   # it { should validate_uniqueness_of(:title).scope(:year) }
end
