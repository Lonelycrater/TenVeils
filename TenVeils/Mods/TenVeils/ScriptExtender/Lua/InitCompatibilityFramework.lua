modGuid = "f1d927e0-7t48-4eu6-anf5-ce2e612f7ee4"
subClassGuid = "7416f733-1e4b-48fb-8307-cd59ddddf70d"

if Ext.Mod.IsModLoaded("67fbbd53-7c7d-4cfa-9409-6d737b4d92a9") then
  local subClasses = {
    AuthorSubclass = {
      modGuid = modGuid,
      subClassGuid = subClassGuid,
      class = "paladin",
      subClassName = "Oath of Ten Veils"
    }
  }

  local function OnStatsLoaded()
    Mods.SubclassCompatibilityFramework.Api.InsertSubClasses(subClasses)
  end

  Ext.Events.StatsLoaded:Subscribe(OnStatsLoaded)
end