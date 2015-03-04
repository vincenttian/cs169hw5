Given /the following articles exist/ do |article_table|
  article_table.hashes.each do |article|
    Article.create(id: article['id'], title: article['title'], author: article['author'], body: article['body'], user_id: article['user_id'])
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

Then /^article 3 should have text of both articles$/ do
  a = Article.find_by_id(3)
  a.body.should have_content("b_hi")
end

Then /^article 3 should have one author$/ do
  a = Article.find_by_id(3)
  a.author.should have_content("a_author") or a.author.should have_content("b_author")
end

# Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
#   page.body.index(e1).should < page.body.index(e2)
# end

# When /I (un)?check the following ratings: (.*)/ do |uncheck, rating_list|
#   ratings = rating_list.s plit(',')
#   if uncheck
#     ratings.each { |rating|
#       r = "ratings_" + rating
#       step "I uncheck \"#{r}\""
#     }
#   else
#     ratings.each { |rating|
#       r = "ratings_" + rating
#       step "I check \"#{r}\""    }
#   end
# end

# Then /the table should( not)? list movies with the ratings: (.*)/ do |unchecked, rating_list|
#   puts page.html
#   selected_ratings = rating_list.split(',').map {|n| n.strip}
#   selected_ratings.each do |rating|
#     if unchecked
#       step "I should not see /^#{rating}$/ within \"table#movies\""
#     else 
#       step "I should see /^#{rating}$/ within \"table#movies\""
#     end
#   end
# end

# Then /I should see all the movies/ do
#   Movie.all.each { |m|
#     page.body.index(m.title).should > 0
#   }
# end

# Then(/^the director of "(.*?)" should be "(.*?)"$/) do |arg1, arg2|
#   page.body.index(arg2).should > 0 
# end