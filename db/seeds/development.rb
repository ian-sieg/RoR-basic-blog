puts 'Seeding dev database...'

admin = User.create(email: 'admin@test.com',
    password: 'password',
    password_confirmation: 'password',
    first_name: 'Admin',
    last_name:'User',
    role: User.roles[:admin]
)

testCase = User.create(email: 'test@test.com',
    password: 'password',
    password_confirmation: 'password',
    first_name: 'Test',
    last_name: 'Case'
)

Address.first_or_create!(
    street: '123 main st',
    city: 'Springfield',
    state: 'IL',
    zip: '12345',
    country: 'USA',
    user: testCase
)

Address.first_or_create!(
    street: '123 main st',
    city: 'Springfield',
    state: 'OR',
    zip: '12345',
    country: 'USA',
    user: admin
)

10.times do |x|
    post = Post.create(title: "Title #{x}", body: "Body #{x} Words go here idk", user_id: testCase.id )

    5.times do |y|
        Comment.create(body: "Comment #{y}",
            user_id: testCase.id,
            post_id: post.id 
        )
    end
end

10.times do |x|
    post = Post.create(title: "Title #{x}", body: "Body #{x} Words go here idk", user_id: admin.id )

    5.times do |y|
        Comment.create(body: "Comment #{y}",
            user_id: admin.id,
            post_id: post.id 
        )
    end
end