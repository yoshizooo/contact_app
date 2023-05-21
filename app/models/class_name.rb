class ClassName < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'ひまわり' },
    { id: 3, name: 'さくら' },
    { id: 4, name: 'チューリップ' },
    { id: 5, name: 'アジサイ' },
    { id: 6, name: 'りんご' },
    { id: 7, name: 'モモ' },
    { id: 8, name: 'いちご' },
    { id: 9, name: 'さくらんぼ' },
    { id: 10, name: 'ドラゴンフルーツ' }
  ]

  include ActiveHash::Associations
  has_many :users
  end