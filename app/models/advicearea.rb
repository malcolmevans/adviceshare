class Advicearea < ActiveRecord::Base

include Tire::Model::Search
include Tire::Model::Callbacks


def self.search(params)
  tire.search(load: true) do
    query { string params[:query], default_operator: "AND" } if params[:query].present?
  end
end
	before_create :create_permalink	
	validates :name, :presence => true,
                   :length => {:minimum => 10}
    validates :description, :presence => true,
            :length => {:maximum => 250}

	has_many :sections

	def to_param
	  permalink
	end

	private

	def create_permalink
	  permalink = self.name.gsub(' ', '-').gsub(/[^a-zA-Z0-9\_\-\.]/, '')
	  self.permalink = permalink
	end
end
