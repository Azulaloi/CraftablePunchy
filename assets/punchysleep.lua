require "/scripts/companions/capturable.lua"

function damage(args)
  if args.sourceKind == "punchydust" then
    status.setResourcePercentage("health", 0)
  end
end

function shouldDie()
  return not status.resourcePositive("health") or self.dead or capturable.justCaptured
end

function die()
  if not capturable.justCaptured then
    capturable.die()
  end
end