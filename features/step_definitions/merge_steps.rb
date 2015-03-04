Given /the following articles exist/ do |article_table|
  article_table.hashes.each do |article|
    Article.create!(id: article['id'], title: article['title'], author: article['author'], body: article['body'], user_id: article['user_id'])
  end
end

Given /the following comments exist/ do |comment_table|
  comment_table.hashes.each do |comment|
    Comment.create(title: comment['title'], author: comment['author'], body: comment['body'], user_id: comment['user_id'], article_id: comment['article_id'])
  end
end

And /^I am not logged into the admin panel$/ do
  visit '/admin/content'
end

Then /^article (\d+) should have both comments$/ do |arg1|
  article = Article.find(arg1)
  comments = Comment.where(article_id: article.id).all
  comments.length.should == 2
end

Then /^article (\d+) should have one title$/ do |arg1|
  article = Article.find(arg1)
  article.title.should == "a"
end