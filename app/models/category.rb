class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '用事' },
    { id: 3, name: '買い物' },
    { id: 4, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :tasks
  end