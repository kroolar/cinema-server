module Mutations
  class CreateMovie < BaseMutation
    argument :title, String, required: true
    argument :category, String, required: true
    argument :year, Integer, required: true

    type Types::MovieType

    def resolve(title:, category:, year:)
      Movie.create(
        title: title,
        category: category,
        year: year
      )
    end
  end
end
