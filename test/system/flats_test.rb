require 'application_system_test_case'

class FlatsTest < ApplicationSystemTestCase
  test 'visiting the index' do
    visit '/'

    assert_selector 'h1', text: 'Flats'
    assert_selector 'h2', text: 'Charm at the Steps of the Sacre Coeur/Montmartre'
    assert_selector 'h2', text: 'Trendy Apt in Buttes Montmartre'
    assert_selector 'h2', text: 'Super 60m2 in trendy neighborhood!'
    assert_selector 'h2', text: 'Splendide terrasse vue imprenable'
    assert_selector 'h2', text: 'Superbe vue à 2 min du Sacré Coeur'
    assert_selector 'h2', text: 'Bohemian and Chic in Paris'
  end
end
