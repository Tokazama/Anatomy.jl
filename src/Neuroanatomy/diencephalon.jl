
const Diencephalon = BilateralStructure("diencephalon")

const Epithalamus = BilateralStructure("epithalamus")

const PinealBodyGland = BilateralStructure("pineal body gland")

const HabenularNuclei = BilateralStructure("habenular nuclei")

const StriaMedullaris = BilateralStructure("stria medullaris")

const TaeniaThalami = BilateralStructure("taenia thalami")



const AnteroventralNucleus = BilateralStructure("anteroventral nucleus")

const AnterodorsalNucleus = BilateralStructure("anterodorsal nucleus")

const AnteromedialNucleus = BilateralStructure("anteromedial nucleus")

const AnteriorNuclearGroup = BilateralStructure(
    name = "anterior nuclear group",
    children = (
        AnteroventralNucleus,
        AnterodorsalNucleus,
        AnteromedialNucleus
    )
)

const MedialDorsalNucleus = BilateralStructure("medial dorsal nucleus")

const ParvocellularPartOfThalamus = BilateralStructure("parvocellular part of thalamus")

const MagnocellularPartOfThalamus = BilateralStructure("magnocellular part of thalamus")

const MedialNuclearGroup = BilateralStructure(
    name = "medial nuclear group",
    children = (
        ParvocellularPart,
        MagnocellularPart
    )
)



const ParatenialNucleus = BilateralStructure("paratenial nucleus")
const ParaventricularNucleusOfThalamus = BilateralStructure("pareventricular nucleus of thalamus")
const ReuniensNucleus = BilateralStructure("reuniens nucleusi")
const RhomboidalNucleus = BilateralStructure("rhomboidal nucleus")

const MidlineNuclearGroup = BilateralStructure(
    name = "midline nuclear group",
    children = (
        ParatenialNucleus,
        ParaventricularNucleusOfThalamus,
        ReuniensNucleus,
        RhomboidalNucleus
    )
)


const IntralaminarNuclearGroup = BilateralStructure("intralaminar nuclear group")

const CentromedianNucleus = BilateralStructure("centromedian nucleus")

const ParafascicularNucleus = BilateralStructure("parafascicular nucleus")

const ParacentralNucleus = BilateralStructure("paracentral nucleus")

const CentralLateralNucleus = BilateralStructure("central lateral nucleus")

const LateralDorsalNucleus = BilateralStructure("lateral dorsal nucleus")
const LateralPosteriorNucleus = BilateralStructure("lateral posterior nucleus")
const Pulvinar = BilateralStructure("pulvinar")

const LateralNuclearGroup = BilateralStructure(
    name = "lateral nuclear group",
    children = (
        LateralDorsalNucleus,
        LateralPosteriorNucleus,
        Pulvinar
    )
)

const VentralAnteriorNucleus = BilateralStructure("ventral anterior nucleus")
const VentralLateralNucleus = BilateralStructure("ventral lateral nucleus")
const VentralPosteriorLateralNucleus = BilateralStructure("ventral posterior lateral nucleus")
const VentralPosteriorMedialNucleus = BilateralStructure("ventral posterior medial nucleus")
const VentralPosteriorNucleus = BilateralStructure("ventral posterior nucleus")

"""
    VentralNuclearGroup
"""
const VentralNuclearGroup = BilateralStructure(
    name = "ventral nuclear group",
    children = (
        VentralAnteriorNucleus,
        VentralLateralNucleus,
        VentralPosteriorNucleus,
        VentralPosteriorLateralNucleus,
        VentralPosteriorMedialNucleus
    )
)

const MedialGeniculateBody = BilateralStructure("medial geniculate body")
const LateralGeniculateBody = BilateralStructure("lateral geniculate body")

"""
    Metathalamus
"""
const Metathalamus = BilateralStructure(
    name = "metathalamus",
    color = (
        MedialGeniculateBody,
        LateralGeniculateBody
    )
)

const ThalamicReticularNucleus = BilateralStructure("thalamic reticular nucleus")

const Thalamus = BilateralStructure(
    name = "thalamus"
    children = (
        VentralNuclearGroup,
    )
)
const ThalamusProper = Thalamus
