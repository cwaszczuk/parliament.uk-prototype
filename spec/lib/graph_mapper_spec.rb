require 'rails_helper'

describe GraphMapper do
  let(:extended_class) { Class.new { extend GraphMapper } }

  describe '#create_graph_from_ttl' do
    it 'should create an RDF graph given ttl data in a string format' do
      expect(extended_class.create_graph_from_ttl(PERSON_ONE_TTL).first).to eq PEOPLE_GRAPH.first
    end
  end

  describe '#to_underscore_case' do
    it 'should transform dateOfBirth to date_of_birth' do
      expect(extended_class.to_underscore_case('dateOfBirth')).to eq 'date_of_birth'
    end
  end

  describe '#get_id' do
    it 'should return the id given a uri' do
      expect(extended_class.get_id(RDF::URI.new('http://id.ukpds.org/123'))).to eq '123'
    end
  end

  describe '#statements_mapper_by_subject' do
    it 'should return a hash with the mapped predicates and the respective objects from a graph' do
      expect(extended_class.statements_mapper_by_subject(PEOPLE_GRAPH)).to eq PEOPLE_HASH
    end
  end

  describe '#get_object_and_predicate' do
    it 'should should return a hash with predicate and object, given an RDF statement' do
      expect(extended_class.get_object_and_predicate(PEOPLE_GRAPH.first)).to eq({ :forename => 'Daenerys' })
    end
  end
end