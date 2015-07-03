auth = {
    'uid' =>12345,
    'info' => {
        'email' => '@.com',
        'first_name' => 'h',
        'last_name' => 'ke'
    },
    'credentials' => {
        'token'=>'123'
    }
}

User = Struct.new(:email_address, :first_name, :last_name, :token)

u = User.new

u.email_address = auth['info'].fetch('email')
u.first_name = auth['info'].fetch('first_name')
u.last_name = auth['info'].fetch('last_name')
u.token = auth.fetch('credentials').fetch('token')

greeting = "gm, #{u.first_name.capitalize}"