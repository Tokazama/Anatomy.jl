
const OccipitalPole = BilateralStructure("occipital pole")

const PreoccipitalNotch = BilateralStructure("preoccipital notch")

const SuperiorOccipitalGyrus = BilateralStructure("superior occipital gyrus")

const MiddleOccipitalGyrus = BilateralStructure("middle occipital gyrus")

const InferiorOccipitalGyrus = BilateralStructure("inferior occipital gyrus")

const LingualGyrus = BilateralStructure("lingual gyrus")

# TODO also in temporal lobe
#const FUSIFORM GYRUS = BilateralStructure(:fusiform gyrus) # (Brodmann area 37)
#parent(::BilateralStructure{:fusiform gyrus}) = OccipitalLobe

const LateralOccipitalCortex = BilateralStructure("lateral occipital cortex")

const CalcarineCortex = BilateralStructure("calcarine cortex") # visual cortex

const Cuneus = BilateralStructure("cuneus")

const OccipitalLobe = BilateralStructure(
    name = "occipital lobe",
    children = (
        OccipitalPole,
        LingualGyrus,
        FusiformGyrus,
        CalcarineCortex,
        Cuneus
        )
)
