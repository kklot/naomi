INLA:::inla.dynload.workaround()

areas <- create_areas(mwi_area_levels, mwi_area_hierarchy, mwi_area_boundaries)
spec <- extract_pjnz_naomi(system.file("extdata/mwi2019.PJNZ", package = "naomi"))

naomi_mf <- naomi_model_frame(areas,
                              mwi_population_agesex,
                              spec,
                              scope = "MWI",
                              level = 4,
                              calendar_quarter1 = "CY2016Q1",
                              calendar_quarter2 = "CY2018Q3")