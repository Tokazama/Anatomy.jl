# TODO : these are not actually CSF
# - Angular bundle
# - Subventricular zone


const InferiorLateralVentricle = AnatomicalStructure(:inferior_lateral_ventricle)
const InferiorHorn = InferiorLateralVentricle

const PosteriorLateralVentricle = AnatomicalStructure(:posterior_lateral_ventricle)
const PosteriorHorn = PosteriorLateralVentricle

const AnteriorLateralVentricle = AnatomicalStructure(:anterior_lateral_ventricle)
const AnteriorHorn = AnteriorLateralVentricle

const BodyOfLateralVentricle = AnatomicalStructure(:body_of_lateral_ventricle)

const ThirdVentricle = AnatomicalStructure("third ventricle")

const FourthVentricle = AnatomicalStructure("fourth ventricle")


const CavumSeptumPellucidum = AnatomicalStructure("cavum septum pellucidum")

const LateralVentricle = AnatomicalStructure(
    label = "lateral ventricle",
    structures = (
        AnteriorHorn,
        BodyOfLateralVentricle,
        InferiorHorn,
        PosteriorHorn
     )
   )

const Ventricles = AnatomicalStructure(
    label = "ventricles",
    structures = (
        left(LateralVentricle),
        right(LateralVentricle),
        ThirdVentricle,
        FourthVentricle
    )
   )

const CerebrospinalFluid = AnatomicalStructure(
    "cerebrospinal fluid",
    structures = (
        Ventricles,
        CavumSeptumPellucidum
    )
   )

const CSF = CerebrospinalFluid
