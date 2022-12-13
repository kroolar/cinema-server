module Types
  class MutationType < Types::BaseObject
    field :create_movie, mutation: Mutations::CreateMovie
    field :remove_movie, mutation: Mutations::RemoveMovie
  end
end
