class Genre < ApplicationRecord
  has_many :item
  
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'HTML•CSS' },
    { id: 3, name: 'Ruby' },
    { id: 4, name: 'Javascript' },
    { id: 5, name: 'PHP' },
    { id: 6, name: 'Python' },
    { id: 7, name: 'SQL' },
    { id: 8, name: 'GO' },
  ]
end
