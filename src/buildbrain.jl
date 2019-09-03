
function buildbrain()
    brain = HierarchicalLink(Brain)

    ###
    ### Frontal lobe
    ###
    addchild!(brain, FrontalLobe, [FrontalPole,                # TODO should landmarks be separated from structures
                                   FrontopolarCortex,
                                   SuperiorFrontalGyrus,
                                   MiddleFrontalGyrus,
                                   InferiorFrontalGyrus,
                                   PrecentralGyrus,
                                   MedialFrontalGyrus,
                                   ParacentralLobule,
                                   OrbitalGyrus,
                                   GyrusRectus,
                                   RostralGyrus])

    addchild!(brain, InferiorFrontalGyrus, [ParsOrbitalis,
                                            ParsTriangularis,
                                            ParsOpercularis])
    ###
    ### Occipital lobe
    ###
    addchild!(brain, OccipitalLobe, [OccipitalPole,
                                     LingualGyrus,
                                     FusiformGyrus,
                                     CalcarineCortex,
                                     Cuneus])

    ###
    ### Parietal lobe
    ###
    addchild!(brain, ParietalLobe, [PostcentralGyrus,
                                    SuperiorParietalLobule,
                                    InferiorParietalLobule,
                                    Precuneus])

    ###
    ### Temporal lobe
    ###
    addchild!(brain, TemporalLobe, [TemporalPole,
                                    HeschlGyrus,
                                    SuperiorTemporalGyrus,
                                    MiddleTemporalGyrus,
                                    InferiorTemporalGyrus,
                                    FusiformGyrus,
                                    MesialTemporalLobe])
    addchild!(brain, MesialTemporalLobe, [Hippocampus,
                                          Amygdala,
                                          DentateGyrus,
                                          Uncus,
                                          ParahippocampalGyrus,
                                          MedialOccipitotemporalGyrus,
                                          Subiculum,
                                          EntorhinalCortex])

    ###
    ### Diencephalon
    ###
    # Diencephalon
    # Epithalamus
    # PinealBodyGland
    # HabenularNuclei
    # StriaMedullaris
    # TaeniaThalami


    addchild!(brain, Thalamus, AnteriorNuclearGroup)
    addchild!(brain, AnteriorNuclearGroup, AnteroventralNucleus)
    addchild!(brain, AnteriorNuclearGroup, AnterodorsalNucleus)
    addchild!(brain, AnteriorNuclearGroup, AnteromedialNucleus)


    addchild!(brain, Thalmaus, MidlineNuclearGroup)
    addchild!(brain, MidlineNuclearGroup, ParatenialNucleus)
    addchild!(brain, MidlineNuclearGroup, ParaventricularNucleusOfThalamus)
    addchild!(brain, MidlineNuclearGroup, ReuniensNucleus)
    addchild!(brain, MidlineNuclearGroup, RhomboidalNucleus)

    addchild!(brain, Thalamus, MedialDorsalNucleus) # TODO double check this

    addchild!(brain, MedialNuclearGroup, ParvocellularPart)
    addchild!(brain, MedialNuclearGroup, MagnocellularPart)

    addchild!(brain, Thalamus, LateralNuclearGroup)
    addchild!(brain, LateralNuclearGroup, [Pulvinar,
                                           LateralPosteriorNucleus,
                                           LateralDorsalNucleus])

    addchild!(brain, VentralNuclearGroup, [VentralAnteriorNucleus,
                                           VentralLateralNucleus,
                                           VentralPosteriorLateralNucleus,
                                           VentralPosteriorMedialNucleus
                                           VentralPosteriorNucleus])

    # TODO need to decide if Metathalmus should be under thalamus
    addchild!(brain, Thalamus, Metathalamus)
    addchild!(brain, Metathalamus, [MedialGeniculateBody,
                                    LateralGeniculateBody])

    # IntralaminarNuclearGroup
    # CentromedianNucleus
    # ParafascicularNucleus
    # ParacentralNucleus
    # CentralLateralNucleus
    # ThalamicReticularNucleus

    ###
    ### Cerebellum
    ###

    addchild!(brain, CSF)
    addchild!(brain, CSF, Ventricles)
    addchild!(brain, Ventricles, [LateralVentricle,
                                  ThirdVentricle,
                                  FourthVentricle])

    addchild!(brain, CSF, CavumSeptumPellucidum)

    addchild!(brain, LateralVentricle, [AnteriorHorn,
                                        BodyOfLateralVentricle,
                                        InferiorHorn,
                                        PosteriorHorn])
end

