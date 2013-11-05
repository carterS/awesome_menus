require 'spec_helper'

describe Menu do
	it { should validate_presence_of :title }
	it { should ensure_length_of :title }

end