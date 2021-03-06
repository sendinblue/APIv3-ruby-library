=begin
#SendinBlue API

#SendinBlue provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/sendinblue  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  | 

OpenAPI spec version: 3.0.0
Contact: contact@sendinblue.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'spec_helper'
require 'json'

# Unit tests for SibApiV3Sdk::FoldersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FoldersApi' do
  before do
    # run before each test
    @instance = SibApiV3Sdk::FoldersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FoldersApi' do
    it 'should create an instance of FoldersApi' do
      expect(@instance).to be_instance_of(SibApiV3Sdk::FoldersApi)
    end
  end

  # unit tests for create_folder
  # Create a folder
  # @param create_folder Name of the folder
  # @param [Hash] opts the optional parameters
  # @return [CreateModel]
  describe 'create_folder test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_folder
  # Delete a folder (and all its lists)
  # @param folder_id Id of the folder
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_folder test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_folder
  # Returns a folder&#39;s details
  # @param folder_id id of the folder
  # @param [Hash] opts the optional parameters
  # @return [GetFolder]
  describe 'get_folder test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_folder_lists
  # Get lists in a folder
  # @param folder_id Id of the folder
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of documents per page
  # @option opts [Integer] :offset Index of the first document of the page
  # @option opts [String] :sort Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed
  # @return [GetFolderLists]
  describe 'get_folder_lists test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_folders
  # Get all folders
  # @param limit Number of documents per page
  # @param offset Index of the first document of the page
  # @param [Hash] opts the optional parameters
  # @option opts [String] :sort Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed
  # @return [GetFolders]
  describe 'get_folders test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_folder
  # Update a folder
  # @param folder_id Id of the folder
  # @param update_folder Name of the folder
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_folder test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
