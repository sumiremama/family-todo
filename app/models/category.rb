class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'やることリスト' },
    { id: 3, name: '買い物リスト' },
    { id: 4, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :tasks
  end