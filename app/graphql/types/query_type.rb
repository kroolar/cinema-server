module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :movies, [MovieType]
    field :movie_categories, [String]
    field :movie_years, [String]

    def movies
      Movie.all
    end

    def movie_categories
      Movie::CATEGORIES
    end

    def movie_years
      Array(Movie::YEARS)
    end
  end
end
