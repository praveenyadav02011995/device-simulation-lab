Title ""

Controls {
}

IOControls {
	outputFile = "/home/students/MVLSI_2022/Group2/Praveen/assign86/NNEW"
	EnableSections
}

Definitions {
	Constant "ConstantProfileDefinition_N" {
		Species = "ArsenicActiveConcentration"
		Value = 1e+16
	}
	Refinement "RefinementDefinition_N" {
		MaxElementSize = ( 0.02 0.02 0 )
		MinElementSize = ( 0.02 0.02 0 )
	}
}

Placements {
	Constant "ConstantProfilePlacement_N" {
		Reference = "ConstantProfileDefinition_N"
		EvaluateWindow {
			Element = region ["region_1"]
		}
	}
	Refinement "RefinementPlacement_N" {
		Reference = "RefinementDefinition_N"
		RefineWindow = region ["region_1"]
	}
}

