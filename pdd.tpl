# tpl file format:
# 1-20: keys, there are up to 3 keys, the first key defines what type of information
# 21- : value

# A list of residue/ligand conformer types. 2nd key defines ligand name, and values are conformers. 
# BK ligand is special backbone ligand, which is always defined, even if it contains 0 atoms. 
# +/- sign in confomer type helps to identify a "state" so pKa will be calculated for such residues. 
CONFLIST PDD        PDDBK PDD01 PDD02 PDD-1

# Summarize number of atoms (redudant, may be removed in future)
NATOM    PDDBK      0
NATOM    PDD01      10
NATOM    PDD02      10
NATOM    PDD-1      9

# atom slots and indices
IATOM    PDD01  CAD 0
IATOM    PDD01  CBD 1
IATOM    PDD01  CGD 2
IATOM    PDD01  O1D 3
IATOM    PDD01  O2D 4
IATOM    PDD01 1HAD 5
IATOM    PDD01 2HAD 6
IATOM    PDD01 1HBD 7
IATOM    PDD01 2HBD 8
IATOM    PDD01  H1D 9
IATOM    PDD02  CAD 0
IATOM    PDD02  CBD 1
IATOM    PDD02  CGD 2
IATOM    PDD02  O1D 3
IATOM    PDD02  O2D 4
IATOM    PDD02 1HAD 5
IATOM    PDD02 2HAD 6
IATOM    PDD02 1HBD 7
IATOM    PDD02 2HBD 8
IATOM    PDD02  H2D 9
IATOM    PDD-1  CAD 0
IATOM    PDD-1  CBD 1
IATOM    PDD-1  CGD 2
IATOM    PDD-1  O1D 3
IATOM    PDD-1  O2D 4
IATOM    PDD-1 1HAD 5
IATOM    PDD-1 2HAD 6
IATOM    PDD-1 1HBD 7
IATOM    PDD-1 2HBD 8

# reverse mapping of atom slots, indices to name (redundant, may be removed in future)
ATOMNAME PDD01    0  CAD
ATOMNAME PDD01    1  CBD
ATOMNAME PDD01    2  CGD
ATOMNAME PDD01    3  O1D
ATOMNAME PDD01    4  O2D
ATOMNAME PDD01    5 1HAD
ATOMNAME PDD01    6 2HAD
ATOMNAME PDD01    7 1HBD
ATOMNAME PDD01    8 2HBD
ATOMNAME PDD01    9  H1D
ATOMNAME PDD02    0  CAD
ATOMNAME PDD02    1  CBD
ATOMNAME PDD02    2  CGD
ATOMNAME PDD02    3  O1D
ATOMNAME PDD02    4  O2D
ATOMNAME PDD02    5 1HAD
ATOMNAME PDD02    6 2HAD
ATOMNAME PDD02    7 1HBD
ATOMNAME PDD02    8 2HBD
ATOMNAME PDD02    9  H2D
ATOMNAME PDD-1    0  CAD
ATOMNAME PDD-1    1  CBD
ATOMNAME PDD-1    2  CGD
ATOMNAME PDD-1    3  O1D
ATOMNAME PDD-1    4  O2D
ATOMNAME PDD-1    5 1HAD
ATOMNAME PDD-1    6 2HAD
ATOMNAME PDD-1    7 1HBD
ATOMNAME PDD-1    8 2HBD


#1.Basic Conformer Information: name, pka, em, rxn.
# PROTON indicates a conformer type loses of gains a proton relative to "ground" state
# PKA is reference pKa (solution pKa)
# RXN is reference reaction field energy of a standalone residue, calculated by mcce/delphi

#23456789A123456789B123456789C
PROTON   PDD01      0
PKA      PDD01      0.0
ELECTRON PDD01      0
EM       PDD01      0.0
RXN      PDD01      -1.60

PROTON   PDD02      0
PKA      PDD02      0.0
ELECTRON PDD02      0
EM       PDD02      0.0
RXN      PDD02      -1.60

PROTON   PDD-1      -1
PKA      PDD-1      4.9
ELECTRON PDD-1      0
EM       PDD-1      0.0
RXN      PDD-1      -18.2

#2.Structure Connectivity
#Connectivity table is for 
#  1) completing missing atoms
#  2) correcting vdw potential for bonded atoms
#  3) indicating which residue atom is connected to. "0" for same residue, "-1" and other numbers 
#     for relitive residue in sequence. "LIG" for any possible covalently bonded residue (as in 
#     disulfide bond in Cystine). "ion" for a free floating atom like MG.
#23456789A123456789B123456789C123456789D123456789E123456789F123456789G123456789H123456789I
CONNECT  PDD01  CAD sp3       -2    C3D 0     CBD 0    1HAD 0    2HAD
CONNECT  PDD01  CBD sp3       0     CAD 0     CGD 0    1HBD 0    2HBD
CONNECT  PDD01  CGD sp2       0     CBD 0     O1D 0     O2D
CONNECT  PDD01  O1D sp3       0     CGD 0     H1D
CONNECT  PDD01  O2D sp2       0     CGD
CONNECT  PDD01 1HAD s         0     CAD
CONNECT  PDD01 2HAD s         0     CAD
CONNECT  PDD01 1HBD s         0     CBD
CONNECT  PDD01 2HBD s         0     CBD
CONNECT  PDD01  H1D s         0     O1D

CONNECT  PDD02  CAD sp3       -2    C3D 0     CBD 0    1HAD 0    2HAD
CONNECT  PDD02  CBD sp3       0     CAD 0     CGD 0    1HBD 0    2HBD
CONNECT  PDD02  CGD sp2       0     CBD 0     O1D 0     O2D
CONNECT  PDD02  O1D sp2       0     CGD
CONNECT  PDD02  O2D sp3       0     CGD 0     H2D
CONNECT  PDD02 1HAD s         0     CAD
CONNECT  PDD02 2HAD s         0     CAD
CONNECT  PDD02 1HBD s         0     CBD
CONNECT  PDD02 2HBD s         0     CBD
CONNECT  PDD02  H2D s         0     O2D

CONNECT  PDD-1  CAD sp3       -2    C3D 0     CBD 0    1HAD 0    2HAD
CONNECT  PDD-1  CBD sp3       0     CAD 0     CGD 0    1HBD 0    2HBD
CONNECT  PDD-1  CGD sp2       0     CBD 0     O1D 0     O2D
CONNECT  PDD-1  O1D sp2       0     CGD
CONNECT  PDD-1  O2D sp2       0     CGD
CONNECT  PDD-1 1HAD s         0     CAD
CONNECT  PDD-1 2HAD s         0     CAD
CONNECT  PDD-1 1HBD s         0     CBD
CONNECT  PDD-1 2HBD s         0     CBD

#3.Atom Parameters: Partial Charges and Radii
# Radii from "Bondi, J.Phys.Chem., 68, 441, 1964."
# This radius is for delphi to define dielectric boundary
RADIUS   PDD    CAD 1.70
RADIUS   PDD    CBD 1.70
RADIUS   PDD    CGD 1.70
RADIUS   PDD    O1D 1.52
RADIUS   PDD    O2D 1.52
RADIUS   PDD   1HAD 1.20
RADIUS   PDD   2HAD 1.20
RADIUS   PDD   1HBD 1.20
RADIUS   PDD   2HBD 1.20
RADIUS   PDD    H1D 1.20
RADIUS   PDD    H2D 1.20

CHARGE   PDD01  CBD  0.000
CHARGE   PDD01  CGD  0.550
CHARGE   PDD01  O1D -0.475
CHARGE   PDD01  O2D -0.475
CHARGE   PDD01  H1D  0.400

CHARGE   PDD02  CBD  0.000
CHARGE   PDD02  CGD  0.550
CHARGE   PDD02  O1D -0.475
CHARGE   PDD02  O2D -0.475
CHARGE   PDD02  H2D  0.400

CHARGE   PDD-1  CBD -0.160
CHARGE   PDD-1  CGD  0.360
CHARGE   PDD-1  O1D -0.600
CHARGE   PDD-1  O2D -0.600



# ROTAMER entries define how MCCE makes rotamer.
# It comes with rule number (can be arbitrary order), rotatable bond, and atoms rotatated by this rule.
#=========================================================================
#        GRP   #      BOND     AFFECTED_ATOMS
#123456789012345678901234567890
#-------|---|----|-|---------|----|----|----|----|----|----|----|----|----
ROTAMER  PDD   0     C3D- CAD  CBD  CGD  O1D  O2D
ROTAMER  PDD   1     CAD- CBD  CGD  O1D  O2D
ROTAMER  PDD   2     CBD- CGD  O1D  O2D
#=========================================================================


# torsion energy = Sigma {Vn/2 * [1 + cos(n_fold * torsion_angle - gamma)]}
# Atom 123 define plane 1, and 234 define plane 2. Torsion angle is the dihedral angle of these two planes.
# relx is a relaxation flag. When this flag is "f", MCCE will treat the structure as rigid, and torsion 
# has no effect on pKa.
#-------|-----|----|----|----|----|----|---------|---------|---------|---------|---------|---------|
#        CONF  ATOM ATOM ATOM ATOM relx Vn/2(kcal)  n_fold   gamma    Vn/2(kcal)  n_fold   gamma
TORSION  PDD01  H1D  O1D  CGD  CBD  t      4.600         2    180.00
TORSION  PDD02  H2D  O2D  CGD  CBD  t      4.600         2    180.00
