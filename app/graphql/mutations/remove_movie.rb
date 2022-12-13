module Mutations
  class RemoveMovie < BaseMutation
    argument :id, ID, required: true

    type Types::MovieType

    def resolve(id:)
      Movie.find(id).destroy
    end
  end
end
