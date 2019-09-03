const FrontalPole = BilateralStructure("frontal pole")

const FrontopolarCortex = BilateralStructure("frontopolar cortex")

const SuperiorFrontalGyrus = BilateralStructure(
    name = "superior frontal gyrus"
)

const MiddleFrontalGyrus = BilateralStructure("middle frontal gyrus")

const RostralMiddleFrontal = BilateralStructure("rostral middle frontal gyrus")

const CaudalMiddleFrontalGyrus = BilateralStructure("caudal middle frontal gyrus")


const ParsOrbitalis = BilateralStructure("pars orbitalis")

const ParsTriangularis = BilateralStructure("pars triangularis")

const ParsOpercularis = BilateralStructure("pars opercularis")

const InferiorFrontalGyrus = BilateralStructure(
    name = "inferior frontal gyrus",
    children = (
        ParsOrbitalis,
        ParsTriangularis,
        ParsOpercularis
    )
)


const PrecentralGyrus = BilateralStructure("precentral gyrus")

const MedialFrontalGyrus = BilateralStructure("medial frontal gyrus")

# update SupplementaryMotorArea name

const ParacentralLobule = BilateralStructure("paracentral lobule")

const OrbitalGyrus = BilateralStructure("orbital gyrus")

const LateralOrbitofrontalGyrus = BilateralStructure("lateral_orbitofrontal gyrus")

const MedialOrbitofrontalGyrus = BilateralStructure("lateral orbitofrontal gyrus")

const FrontoMarginalGyrus = BilateralStructure("fronto-marginal gyrus")

const GyrusRectus = BilateralStructure("gyrus rectus")

const RostralGyrus = BilateralStructure("rostral gyrus")

const FrontalLobe = BilateralStructure(
    name = "frontal lobe",
    children = (
        FrontalPole,
        FrontopolarCortex,
        SuperiorFrontalGyrus,
        MiddleFrontalGyrus,
        InferiorFrontalGyrus,
        PrecentralGyrus,
        MedialFrontalGyrus,
        ParacentralLobule,
        OrbitalGyrus,
        GyrusRectus,
        RostralGyrus
        )
)

#const FrontoMarginalSulcus = Sulcus("fronto-marginal_sulcus")
