require 'rails_helper'

# Change this ArticlesController to your project
RSpec.describe ArticlesController, type: :controller do

    # This should return the minimal set of attributes required to create a valid
    # Article. As you add validations to Article, be sure to adjust the attributes here as well.
    #login_user

    let(:valid_attributes) {
        { :title => "Test title!", :body => "This is a test description" }
    }

    let(:valid_session) { {} }

    describe "GET #create" do
        it "returns a success response" do
            Article.create! valid_attributes
            get :show
            #expect(response).to be_successful # be_successful expects a HTTP Status code of 200
            expect(response).to have_http_status(200) # Expects a HTTP Status code of 302
        end
    end
    describe "GET #delete" do
        it "returns a success response" do
            Article.destroy! valid_attributes
            get :index
            #expect(response).to be_successful # be_successful expects a HTTP Status code of 200
            expect(response).to have_http_status(200) # Expects a HTTP Status code of 302
        end
    end
end