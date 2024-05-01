using Pkg
# Desktop
# Pkg.activate("C:\\Users\\MM-1\\OneDrive\\PhD\\GitHub\\LearningJulia")
# cd("C:\\Users\\MM-1\\OneDrive\\PhD\\GitHub\\LearningJulia")
# Laptop
Pkg.activate("C:\\Users\\nicol\\OneDrive\\PhD\\GitHub\\LearningJulia")
cd("C:\\Users\\nicol\\OneDrive\\PhD\\GitHub\\LearningJulia")

const ALIVE = 1
const DEAD = 2
const BURNING = 3

init = fill(ALIVE, 400, 400)
prob = 