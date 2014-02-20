
RSpec::Matchers.define :should_be_profile_page do |user|
  match do |page|
    it { page.should_be_page user.name }
    it { page.should have_link 'Profile', href: user_path(user) }
    it { page.should have_link 'Sign out', href: signout_path }
    it { page.should_not have_link 'Sign in', href: signin_path }
  end
end

RSpec::Matchers.define :should_be_signin_page do
  match do |page|
    it { page.should_be_page 'Sign in' }
  end
end

RSpec::Matchers.define :should_be_signup_page do
  match do |page|
    it { page.should_be_page 'Sign up' }
  end
end