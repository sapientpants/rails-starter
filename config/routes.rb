Rails.application.routes.draw do
  get 'react/index'
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"

  root 'pages#home'
  get 'pages/about'
  get 'pages/contact'

  get '*path' => 'react#index', constraints: lambda { |request|
    # request.fullpath =~ %r{/...}
    true
  }
end
