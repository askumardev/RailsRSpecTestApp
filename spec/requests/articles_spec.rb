require "rails_helper"

RSpec.feature "Articles",type: :request do
	before do
		@article = Article.create(title:"qqq",body:"qqqqqq")
	end

	describe 'GET //articles/:id' do
		context 'with existing article' do
			before { get "/articles/#{@article.id}" }

			it "handles existing article" do
				expect(response.status).to eq 200
			end
		end

		context 'with non-existing article' do
			before { get "/articles/xxx" }

			it "handles non-existing article" do
				expect(response.status).to eq 302
				flash_msg="The article you are looking could not be found"
				expect(flash[:alert]).to eq flash_msg
			end
		end
	end
end