local path = ('__FortressRuins__')

data:extend({
  
{
  type = "technology",
  name = "CrystallographyG",
  icon_size = 256,
  icon = path .. "/graphics/aliengen/hr-gcfrag.png",
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "pgcrygen",
    },
    {
      type = "unlock-recipe",
      recipe = "cryexplosive-rounds-magazine",
    },    
  },
  prerequisites = {"chemical-science-pack"},
  unit =
  {
    count = 100,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"military-science-pack", 1}
    },
    time = 40
  },
  order = "a-j-b"
},

{
  type = "technology",
  name = "CrystallographyP",
  icon_size = 256,
  icon = path .. "/graphics/aliengen/hr-pcfrag.png",
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "ppcrygen",
    },
    {
      type = "unlock-recipe",
      recipe = "crystal-atomic-bomb",
    },    
  },
  prerequisites = {"rocketry"},
  unit =
  {
    count = 150,
    ingredients =
    {
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"military-science-pack", 1}      
    },
    time = 40
  },
  order = "a-j-b"
},

})