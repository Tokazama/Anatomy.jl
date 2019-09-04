module Anatomy

using AbstractTrees, GeometryTypes

import Base: OneTo, to_index


export AbstractAnatomicalStructure,
       AnatomicalStructure,
       BilateralStructure,
       LeftStructure,
       RightStructure,
       AnatomicalVector,
       children,
       nchildren,
       left,
       right,
       splitbilaterals


include("anatomicalstructures.jl")
include("positions.jl")
include("anatomicalvector.jl")

include("atlas.jl")
include("Neuroanatomy/Neuroanatomy.jl")

"""
Two quick questions:


2. What is the best way to feed `Makie.jl` mesh components for plotting?
    - A mesh type form 
"""

end # module
