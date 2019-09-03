# TODO : these are not actually CSF but proximal to ventricular structures
# - Angular bundle
# - Subventricular zone
#
# TODO - foramens (monro etc.)


const CerebrospinalFluid = AnatomicalStructure("cerebrospinal fluid")
const CSF = CerebrospinalFluid

const Ventricles = AnatomicalStructure("ventricles")

const LateralVentricle = BilateralStructure(" lateral ventricle")
const InferiorLateralVentricle = BilateralStructure("inferior lateral ventricle")
const InferiorHorn = InferiorLateralVentricle

const PosteriorLateralVentricle = BilateralStructure("posterior lateral ventricle")
const PosteriorHorn = PosteriorLateralVentricle

const AnteriorLateralVentricle = BilateralStructure("anterior lateral ventricle")
const AnteriorHorn = AnteriorLateralVentricle

const BodyOfLateralVentricle = AnatomicalStructure("body of lateral ventricle")

const ThirdVentricle = AnatomicalStructure("third ventricle")

const FourthVentricle = AnatomicalStructure("fourth ventricle")


# note: this is commonly called the fifth ventricle (it shouldn't be though)
const CavumSeptumPellucidum = AnatomicalStructure("cavum septum pellucidum")
