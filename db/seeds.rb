User.create(email: 'admin@test.com',
    password: 'password',
    password_confirmation: 'password',
    name: 'Admin',
    role: User.roles[:admin]
)

User.create(email: 'test@test.com',
    password: 'password',
    password_confirmation: 'password',
    name: 'Test'
)

10.times do |x|
    post = Post.create(title: "Title #{x}", body: "Body #{x} Words go here idk", user_id: User.first.id )

    5.times do |y|
        Comment.create(body: "Comment #{y}",
            user_id: User.second.id,
            post_id: post.id 
        )
    end
end