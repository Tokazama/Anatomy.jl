
AbstractAn

"""
    Temporal Superior Longitudinal Fasciculus
"""
const TemporalSuperiorLongitudinalFasciculus = BilateralStructure("temporal superior longitudinal fasciculus")

"""
    ParietalSuperiorLongitudinalFasciculus
"""
const ParietalSuperiorLongitudinalFasciculus = BilateralStructure("parietal superior longitudinal fasiculus")

"""
Fornix (F)	(Catani et al., 2002; Catani and Thiebaut de Schotten, 2008; Thiebaut de Schotten et al., 2011b; Wakana et al., 2004)
"""
const Fornix = BilateralStructure("fornix")


const ForcepsMajor = AnatomicalStructure("forceps major")
const PosteriorForceps = ForcepsMajor

const ForcepsMinor = AnatomicalStructure("forceps minor")
const AnteriorForceps = ForcepsMinor



const AnteriorThalamicRadiation = BilateralStructure("anterior thalamic radiation")

const ExternalCapsule = AnatomicalStructure("external capsule")

const InternalCapsule = AnatomicalStructure("external capsule")

# corpus callosum

###
AnteriorWhiteCommissure = AnatomicalStructure("anterior white commissure")
VentralWhiteCommissure = AnteriorWhiteCommissure

### Projection Pathways

"""
    AcousticRadiation (AR)
"""
const AcousticRadiation = AnatomicalStructure("acoustic radiation")

"""
    CorticospinalTract (CST)
"""
const CorticospinalTract = BilateralStructure("corticospinal tract")

"""
Corticobulbar Tract (CBT)	(Thiebaut de Schotten et al., 2011b)
"""
const CorticobulbarTract = AnatomicalStructure("corticobulbar Tract")

"""
Corticostriatal Pathway (CS)	(Fernandez-Miranda et al., 2008; Torgerson et al., 2015)
"""
const CorticostriatalPathway = AnatomicalStructure("corticostriatal pathway")

# TODO striatal inferior frontal cortex pathway
"""
    StriatalInferiorFrontalPathway
"""
const StriatalInferiorFrontalPathway = BilateralStructure("striatal inferior frontal cortex pathway")

# TODO superior cortic-striato-frontal pathway
"""
    SuperiorCorticoStriatoFrontalPathway
"""
const SuperiorCorticoStriatoFrontalPathway = BilateralStructure("superior cortic-striato-frontal pathway")

# TODO superior corticostriate-parietal cortex only
"""
    SuperiorCorticoStriatoParietalPathway
"""
const SuperiorCorticoStriatoParietalPathway = BilateralStructure("superior corticostriate-parietal cortex")

"""
    SuperiorCorticostriatePathway
"""
const SuperiorCorticostriatePathway = BilateralStructure(
    name = "superior corticostriate pathway",
    children = (
        SuperiorCorticoStriatoFrontalPathway,
    )
)

"""
    Corticothalamic Pathway (CT)	(Behrens et al., 2003; Wakana et al., 2004)
"""
const CorticothalamicPathway = BilateralStructure("corticothalamic pathway")




const SuperiorOpticRadiation = BilateralStructure("superior optic radiation")

const InferiorOpticRadiation = BilateralStructure("inferior optic radiation")

"""
Optic Radiation (OR)	(Rubino et al., 2005; Thiebaut de Schotten et al., 2011b)
"""
const OpticRadiation = BilateralStructure(
    name = "optic radiation",
    children = (
        SuperiorOpticRadiation,
        InferiorOpticRadiation
     )
   )
const GeniculocalcarineTract = OpticRadiation
const GeniculostriatePathway = OpticRadiation
const VisualRadiation = OpticRadiation



"""
Frontopontine Tract(FPT)	(Meola et al., 2016c)
"""
const FrontopontineTract = BilateralStructure("frontopontine tract")
const FrontopontineFibers = FrontopontineTract

"""
Occipitopontine Tract (OPT)	(Meola et al., 2016c)
"""
const OccipitopontineTract = BilateralStructure("occipitopontine tract")

"""
Parietopontine Tract (PPT)	(Meola et al., 2016c)
"""
const ParietopontineTract = BilateralStructure("parietopontine tract")

"""
Temporopontine Tract (TPT)	(Meola et al., 2016c)
"""
const TemporopontineTract = BilateralStructure("temporopontine tract")

### Association pathways
"""
Arcuate Fasciculus (AF)	(Axer et al., 2013; Fernandez-Miranda et al., 2015; Rilling et al., 2008; Saur et al., 2008; Thiebaut de Schotten et al., 2012)
"""
const ArcuateFasciculus = BilateralStructure("arcuate fasciculus")

"""
Cingulum (C)	(Catani et al., 2002; Catani and Thiebaut de Schotten, 2008; Thiebaut de Schotten et al., 2012; Thiebaut de Schotten et al., 2011b; Wakana et al., 2004)
"""
const Cingulum = BilateralStructure("cingulum")

"""
    ExtremeCapsule (EMC)

Extreme Capsule (EMC)	(Makris and Pandya, 2009)
"""
const ExtremeCapsule = BilateralStructure("extreme capsule")


# TODO Frontal Aslant Tract?
"""
Frontal Aslant Tract (FAT)

## Citations
* Catani et al., 2012
* Thiebaut de Schotten et al., 2012
"""
const FrontalAslantTract = AnatomicalStructure("frontal aslant tract")

"""
Inferior Fronto Occipital Fasciculus (IFOF)

* Catani et al., 2002
* Forkel et al., 2014
* Makris et al., 2007
* Meola et al., 2015
* Schmahmann and Pandya, 2007
* Thiebaut de Schotten et al., 2012
* Thiebaut de Schotten et al., 2011b
* Wakana et al., 2004)
"""
const InferiorFrontalOccipitalFasciculus = BilateralStructure("inferior frontal occipital fasciculus")

"""
InferiorLongitudinalFasciculus (ILF)	(Amemiya and Naito, 2016; Catani et al., 2002; Catani and Thiebaut de Schotten, 2008; Grossi et al., 2014; Koldewyn et al., 2014; Latini, 2015; Mandonnet et al., 2007; Thiebaut de Schotten et al., 2011b; Tusa and Ungerleider, 1985; Wakana et al., 2004)
"""
InferiorLongitudinalFasciculus = BilateralStructure("inferior longitudinal fasciculus")

"""
Middle Longitudinal Fasciculus (MdLF)

Makris et al., 2009
Makris et al., 2013
Wang et al., 2013
"""
const MiddleLongitudinalFasciculus = BilateralStructure("middle longitudinal fasciculus")

"""
Superior Longitudinal Fasciculus (SLF)	(Budisavljevic et al., 2016; Karlsgodt et al., 2008; Makris et al., 2005; Thiebaut de Schotten et al., 2011a; Wakana et al., 2004; Wang et al., 2016)
"""
const SuperiorLongitudinalFasciculus = BilateralStructure("superior longitudinal fasciculus")


# TODO U-fibers are pretty ambiguous for an ROI
"""

U-fiber (U)
"""
const Ufiber = AnatomicalStructure("U-fiber")

"""
Uncinate Fasciculus (UF)

* Catani and Thiebaut de Schotten, 2008
* Leng et al., 2016
* Thiebaut de Schotten et al., 2012
* Thiebaut de Schotten et al., 2011b
* Wakana et al., 2004
"""
const Uncinate = BilateralStructure("uncinate fasciculus")
const UncinateFasciculus = Uncinate

"""
Vertical Occipital Fasciculus (VOF)

* Takemura et al., 2016
* Yeatman et al., 2014
"""
const VerticalOccipitalFasciculus = BilateralStructure("vertical occipital fasciculus")


### Commisures


"""
Anterior Commissure (AC)

Catani et al., 2002
Catani and Thiebaut de Schotten, 2008
Thiebaut de Schotten et al., 2011b
"""
const AnteriorCommissure = AnatomicalStructure("anterior commissure")

"""
    Rostrum of Coprus Callosum
"""
const RostrumOfCorpusCallosum = AnatomicalStructure("rostrum of corpus callosum")

const GenuOfCorpusCallosum = AnatomicalStructure("genu of corpus callosum")

const BodyOfCorpusCallosum = AnatomicalStructure("body of corpus callosum")
const TrunkOfCorpusCallosum = BodyOfCorpusCallosum

const SpleniumOfCorpusCallosum = AnatomicalStructure("splenium of corpus callosum")

const IsthmusOfCorpusCallosum = AnatomicalStructure("isthmus of corpus callosum")

"""
Corpus Callosum (CC)

(Catani and Thiebaut de Schotten, 2008; Huang et al., 2005; Thiebaut de Schotten et al., 2011b; Wakana et al., 2004)
"""

const CorpusCallosum = AnatomicalStructure(
    name = "corpus callosum",
    children = (
        SpleniumOfCorpusCallosum,
        IsthmusOfCorpusCallosum,
        GenuOfCorpusCallosum,
        RostrumOfCorpusCallosum
    )
)


"""
Posterior Commissure (PC)	(Keene, 1938)
"""
const PosteriorCommissure = AnatomicalStructure("posterior commissure")


### Cerebellum
const SuperiorCerebellarPeduncle = AnatomicalStructure("superior cerebellar peduncle")
const MiddleCerebellarPeduncle = AnatomicalStructure("middle cerebellar peduncle")
const InferiorCerebellarPeduncle = AnatomicalStructure("inferior cerebellar peduncle")




### Brain stem
"""
    Central Tegmental Tract (CTT)
"""
const CentralTegmentalTract = BilateralStructure("central tegmental tract")

const DorsalLongitudinalFasciculus = BilateralStructure("dorsal longitudinal fasciculus")

const LateralLemniscus = BilateralStructure("lateral lemniscus")

const MedialLemniscus = BilateralStructure("medial lemniscus")

const MedialLongitudinalFasciculus = BilateralStructure("medial longitudinal fasciculus")

const RubrospinalTract = BilateralStructure("rubrospinal tract")

"""
Spinothalamic tract
Meola et al., 2016c
"""
const SpinothalamicTract = BilateralStructure("spinothalamic tract")

