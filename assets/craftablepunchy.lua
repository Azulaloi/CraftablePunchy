require "/scripts/vec2.lua"

function init()
   object.setInteractive(true)
   parameters = config.getParameter("parameters")
end

function update()

end

function onInteraction()
	animator.burstParticleEmitter("vitas")
	world.spawnMonster(config.getParameter("spawnMonster"), vec2.add(entity.position(), config.getParameter("spawnOffset")), parameters)
	object.smash(true)
end
