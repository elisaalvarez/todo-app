# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ListsController, type: :controller do
  describe 'List controller request specs' do
    login_user

    context 'GET #index' do
      it 'should success and render to index page' do
        get :index
        expect(response).to have_http_status(200)
        expect(response).to render_template :index
      end
    end

    context 'GET #show' do
      let!(:list) { FactoryBot.create(:list, user: subject.current_user) }

      it 'should success and render to edit page' do
        get :show, params: { id: list.id }
        expect(response).to have_http_status(200)
        expect(response).to render_template :show
      end
    end

    context 'POST #create' do
      let!(:list) { FactoryBot.create(:list, user: subject.current_user) }

      it 'create a new list' do
        params = { name: 'A test List' }
        expect { post(:create, params: { list: params }) }.to change(List, :count).by(1)
        expect(flash[:notice]).to eq 'List was successfully created.'
      end
    end

    context 'PUT #update' do
      let!(:list) { FactoryBot.create(:list, user: subject.current_user) }

      it 'should update list info' do
        params = { name: 'A test List' }
        put :update, params: { id: list.id, list: params }
        list.reload
        params.keys.each do |key|
          expect(list.attributes[key.to_s]).to eq params[key]
        end
      end
    end

    context 'DELETE #destroy' do
      let!(:list) { FactoryBot.create(:list, user: subject.current_user) }

      it 'should delete list' do
        expect { delete :destroy, params: { id: list.id } }.to change(List, :count).by(-1)
        expect(flash[:notice]).to eq 'List was successfully destroyed.'
      end
    end
  end
end
