include ApplicationHelper

RSpec::Matchers.define :should_be_page do |text|
  match do |page|
    it { page.should have_selector 'h1', text: text }
    it { page.should have_selector 'title', text: full_title(text) }
  end
end