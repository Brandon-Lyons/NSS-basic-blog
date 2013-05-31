require 'test_helper'

class AnonymousPostsArticleTest < ActionDispatch::IntegrationTest

	test "browse articles" do
		Post.create(title: "First Post", body: "first")
		Post.create(title: "Wow, its been a while", body: "but still not a writer")
		visit '/'
		click_link "View All Posts"
		assert_current_path '/posts'
		#assume we have a page variable
		assert_include page.content, "First Post"
		assert_include page.content, "Wow, its been a while" 
	end
end
