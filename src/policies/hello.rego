package policies.hello

# default to a "closed" system, 
# only grant access when explicitly granted

default allowed = false
default visible = false
default enabled = false

allowed {
    input.identity.identity == "test"
}

enabled {
    visible
}

visible {
    input.app == "web-console"
}
