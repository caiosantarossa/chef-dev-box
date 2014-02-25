name "base"

default_attributes(
    "java" => {
        "install_flavor" => "oracle",
        "jdk_version" => 6,
        "oracle" => {
                "accept_oracle_download_terms" => true
        }
    },
    "postgresql" => {
        "version" => "9.3",
        "password" => { "postgres" => "123" }        
    }
)


run_list(
    "recipe[openssl]",
    "recipe[build-essential]",
    "recipe[apt]",
    "recipe[java]",
    "recipe[heroku-toolbelt]",
    "recipe[postgresql::server]",
    "recipe[play2]",
    "recipe[python]"
)