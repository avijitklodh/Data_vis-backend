class CreateChampions < ActiveRecord::Migration[6.0]
  def change
    create_table :champions do |t|
      t.string "api_id"
      t.string "name"
      t.string "title"
      t.string "blurb"
      t.string "image"
      t.string "partype"
      t.integer "hp"
      t.integer "hpperlevel"
      t.integer "mp"
      t.integer "mpperlevel"
      t.integer "movespeed"
      t.integer "armor"
      t.integer "armorperlevel"
      t.integer "spellblock"
      t.integer "spellblockperlevel"
      t.integer "attackrange"
      t.integer "hpregen"
      t.integer "hpregenperlevel"
      t.integer "mpregen"
      t.integer "mpregenperlevel"
      t.integer "crit"
      t.integer "critperlevel"
      t.integer "attackdamage"
      t.integer "attackdamageperlevel"
      t.integer "attackspeedperlevel"
      t.integer "attackspeed"
      t.timestamps
    end
  end
end
