# typed: true

class PgSearchTest
  include PgSearch::Model

  multisearchable against: [:body], update_if: :body_changed?
  multisearchable against: :body, update_if: :body_changed?
  multisearchable against: [:title, :body],
    additional_attributes: -> (article) { { author_id: article.author_id } }

  pg_search_scope :search_by_title, against: :title
  pg_search_scope :search_by_full_name, against: [:first_name, :last_name]
  pg_search_scope :search_by_name, lambda { |name_part, query|
    raise ArgumentError unless [:first, :last].include?(name_part)
    {
      against: name_part,
      query: query
    }
  }

  pg_search_scope :tasty_search, associated_against: {
    cheeses: [:kind, :brand],
    cracker: :kind
  }

  pg_search_scope :search_name, against: :name, using: [:tsearch, :trigram, :dmetaphone]
  pg_search_scope :search_full_text,
    against: {
      title: 'A',
      subtitle: 'B',
      content: 'C'
    }

  pg_search_scope :whose_name_starts_with,
    against: :name,
    using: {
      tsearch: { prefix: true }
    }

  pg_search_scope :kinda_spelled_like,
    against: :name,
    using: :trigram
end
