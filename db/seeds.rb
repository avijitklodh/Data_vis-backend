# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


champion_hash = RestClient.get("http://ddragon.leagueoflegends.com/cdn/9.21.1/data/en_US/champion.json")

champion_data = JSON.parse(champion_hash)["data"]

champion_data.each do | dataType , dataInfo |

      new_champion = Champion.create(
      api_id: dataInfo["id"],
      name: dataInfo["name"],
      title: dataInfo["title"],
      blurb: dataInfo["blurb"],
      image: dataInfo["image"]["full"],
      partype: dataInfo["partype"],
      hp: dataInfo["stats"]["hp"],
      hpperlevel: dataInfo["stats"]["hpperlevel"],
      mp: dataInfo["stats"]["mp"],
      mpperlevel: dataInfo["stats"]["mpperlevel"],
      movespeed: dataInfo["stats"]["movespeed"],
      armor: dataInfo["stats"]["armor"],
      armorperlevel: dataInfo["stats"]["armorperlevel"],
      spellblock: dataInfo["stats"]["spellblock"],
      spellblockperlevel: dataInfo["stats"]["spellblockperlevel"],
      attackrange: dataInfo["stats"]["attackrange"],
      hpregen: dataInfo["stats"]["hpregen"],
      hpregenperlevel: dataInfo["stats"]["hpregenperlevel"],
      mpregen: dataInfo["stats"]["mpregen"],
      mpregenperlevel: dataInfo["stats"]["mpregenperlevel"],
      crit: dataInfo["stats"]["crit"],
      critperlevel: dataInfo["stats"]["critperlevel"],
      attackdamage: dataInfo["stats"]["attackdamage"],
      attackdamageperlevel: dataInfo["stats"]["attackdamageperlevel"],
      attackspeedperlevel: dataInfo["stats"]["attackspeedperlevel"],
      attackspeed: dataInfo["stats"]["attackspeed"]
      )

    end

byebug
