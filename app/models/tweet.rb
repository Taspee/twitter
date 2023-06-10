class Tweet < ApplicationRecord
    belongs_to :user
    has_many :tags
    attribute :hashtag
    after_create :create_tags
    def create_tags
        hashtags.split(',').each do |h|
            hashtag = Hashtag.find_or_create_by name: h
            Tag.create tweet: self. hashtag: hashtag
    end
    def creation_date
        created_at.strftime("%e %b %y")
    end
end    