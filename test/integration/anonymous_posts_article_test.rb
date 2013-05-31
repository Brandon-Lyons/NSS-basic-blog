require 'test_helper'

class AnonymousPostsArticleTest < ActionDispatch::IntegrationTest

	test "count articles" do
		Post.create(title: "First Post", body: "first")
		Post.create(title: "Wow, its been a while", body: "but still not a writer")
		assert_equal 2, Post.all.size
	end

	test "browse articles" do
		Post.create(title: "First Post", body: "first")
		Post.create(title: "Wow, its been a while", body: "but still not a writer")
		assert_equal 2, Post.all.size
		visit '/posts'
		#assume we have a page variable
		# assert page.has_content? "First Post"
		assert_include page.body, "First Post"
		assert_include page.body, "Wow, its been a while" 
	end
end
