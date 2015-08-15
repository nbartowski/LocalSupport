require_relative 'map_testing_api.rb'

def unsaved_proposed_organisation(associated_user = nil)
  proposed_org = ProposedOrganisation.new({name: "Friendly Charity", description: "We are friendly!",
    email: "sample@sample.org", address: "30 pinner road", donation_info: "https://www.donate.com",
    postcode: 'HA1 4JD', non_profit: true})
  stub_request_with_address("30 pinner road")
  proposed_org.users << associated_user if associated_user
  proposed_org
end
def proposed_org_categories
  [ 'Animal welfare',
    'Accommodation',
    'Education',
    'Give them things' ]
end

def proposed_org_fields
  {
    name: 'Friendly charity',
    address: '64 pinner road',
    description: 'Such friendly so charity'
  }
end
