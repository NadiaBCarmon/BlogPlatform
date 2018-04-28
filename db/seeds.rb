User.create(username: "fjalar1", email:"fjarlar67@yahoo.com", password:"1234")
User.create(username: "abbie78", email:"abbie68@hotmail.com", password: "4321")
User.create(username: "lindsay6", email:"linds20@gmail.com", password: "2345")
User.create(username: "emmie90", email:"emmie9076@aol.com", password:"5432")

Blog.create(user_id: 1)
Blog.create(user_id: 2)
Blog.create(user_id: 3)
Blog.create(user_id: 4)

Post.create(blog_id: 1, post_title: "Next Friday - One Day Sale Only", post_content: "Shit goes here.")
Post.create(blog_id: 2, post_title: "How To Manage Your Reputation on Social Media", post_content: "Fuckin hell")
Post.create(blog_id: 3, post_title: "Holy shit motherfucker", post_content: "Blah blah blah")
Post.create(blog_id: 4, post_title: "Something something", post_content: "Whatever, man")

Tag.create(tag_name: "tag1")
Tag.create(tag_name: "music")

Tagandpost.create(tag_id: 1, post_id: 1)
Tagandpost.create(tag_id: 2, post_id: 1)
Tagandpost.create(tag_id: 3, post_id: 2)
Tagandpost.create(tag_id: 4, post_id: 2)

