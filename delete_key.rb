user = { name: "John", age: 30, city: "Moscow" }

def delete_key(user)
  user.delete(:age)
  user
end

p delete_key(user)
