(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 11.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[    126999,       2024]
NotebookOptionsPosition[    127449,       2017]
NotebookOutlinePosition[    128001,       2039]
CellTagsIndexPosition[    127958,       2036]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`ET$$ = "Q4", $CellContext`IR$$ = 
    "Reduced", $CellContext`MSH$$ = "M1", $CellContext`P$$ = {10, 
    1}, $CellContext`pr$$ = 0.29, $CellContext`PS$$ = "Plane Strain", 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
      Hold[
       Style[
       "Plane Elasticity with Complex Loading and Reduced Integration", 18, 
        Bold]], Manipulate`Dump`ThisIsNotAControl}, {
      Hold[" "], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`ET$$], "Q4", "Element Type"}, {"Q4", "Q8"}}, {{
       Hold[$CellContext`IR$$], "Reduced", "Integration Rule"}, {
      "Reduced", "Full"}}, {{
       Hold[$CellContext`PS$$], "Plane Strain", "Stress State"}, {
      "Plane Strain", "Plane Stress"}}, {{
       Hold[$CellContext`MSH$$], "M1", "Mesh"}, {"M1", "M2", "M3", "M4"}}, {{
       Hold[$CellContext`P$$], {10, 1}, "Applied Load"}, {0, -3}, {11, 3}}, {{
      
       Hold[$CellContext`pr$$], 0.29, "Poisson Ratio, \[Nu]"}, 0, 0.499}}, 
    Typeset`size$$ = {576., {190., 194.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`ET$30824$$ = False, $CellContext`IR$30825$$ = 
    False, $CellContext`PS$30826$$ = False, $CellContext`MSH$30827$$ = 
    0, $CellContext`P$30828$$ = {0, 0}, $CellContext`pr$30829$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`ET$$ = "Q4", $CellContext`IR$$ = 
        "Reduced", $CellContext`MSH$$ = 
        "M1", $CellContext`P$$ = {10, 1}, $CellContext`pr$$ = 
        0.29, $CellContext`PS$$ = "Plane Strain"}, "ControllerVariables" :> {
        Hold[$CellContext`ET$$, $CellContext`ET$30824$$, False], 
        Hold[$CellContext`IR$$, $CellContext`IR$30825$$, False], 
        Hold[$CellContext`PS$$, $CellContext`PS$30826$$, False], 
        Hold[$CellContext`MSH$$, $CellContext`MSH$30827$$, 0], 
        Hold[$CellContext`P$$, $CellContext`P$30828$$, {0, 0}], 
        Hold[$CellContext`pr$$, $CellContext`pr$30829$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> ($CellContext`pwd = NotebookDirectory[]; $CellContext`xCoord = 
        Import[
          StringJoin[$CellContext`pwd, 
           ToString[
            StringForm[
            "mesh``_``.nc", $CellContext`MSH$$, $CellContext`ET$$]]], {
          "Datasets", "coordx"}]; $CellContext`yCoord = Import[
          StringJoin[$CellContext`pwd, 
           ToString[
            StringForm[
            "mesh``_``.nc", $CellContext`MSH$$, $CellContext`ET$$]]], {
          "Datasets", "coordy"}]; $CellContext`nodes = 
        Transpose[{$CellContext`xCoord, $CellContext`yCoord}]; \
$CellContext`connect = Import[
          StringJoin[$CellContext`pwd, 
           ToString[
            StringForm[
            "mesh``_``.nc", $CellContext`MSH$$, $CellContext`ET$$]]], {
          "Datasets", "connect1"}]; $CellContext`fixedBCs = Flatten[
          Import[
           StringJoin[$CellContext`pwd, 
            ToString[
             StringForm[
             "mesh``_``.nc", $CellContext`MSH$$, $CellContext`ET$$]]], {
           "Datasets", "connect2"}]]; $CellContext`forceBCs = Flatten[
          Import[
           StringJoin[$CellContext`pwd, 
            ToString[
             StringForm[
             "mesh``_``.nc", $CellContext`MSH$$, $CellContext`ET$$]]], {
           "Datasets", "connect3"}]]; $CellContext`coor = 
        Table[{$CellContext`i, $CellContext`i + 1}, {$CellContext`i, 1, 2 
           Length[$CellContext`nodes], 2}]; 
       K = ConstantArray[
         0, {2 Length[$CellContext`nodes], 2 
           Length[$CellContext`nodes]}]; $CellContext`F = ConstantArray[0, 
          Length[K]]; Do[$CellContext`elemNodes = Part[$CellContext`nodes, 
            Part[$CellContext`connect, $CellContext`i]]; 
         If[$CellContext`PS$$ == "Plane Strain", If[$CellContext`ET$$ == "Q4", 
             
             If[$CellContext`IR$$ == 
              "Reduced", $CellContext`ke = \
$CellContext`Q4ElemStiffStrainReduced[$CellContext`elemNodes, 30 
                10^6, $CellContext`pr$$, 
                1], $CellContext`ke = \
$CellContext`Q4ElemStiffStrainFull[$CellContext`elemNodes, 30 
                10^6, $CellContext`pr$$, 1]], 
             
             If[$CellContext`IR$$ == 
              "Reduced", $CellContext`ke = \
$CellContext`Q8ElemStiffStrainReduced[$CellContext`elemNodes, 30 
                10^6, $CellContext`pr$$, 
                1], $CellContext`ke = \
$CellContext`Q8ElemStiffStrainFull[$CellContext`elemNodes, 30 
                10^6, $CellContext`pr$$, 1]]]; Null, 
           If[$CellContext`ET$$ == "Q4", 
            
            If[$CellContext`IR$$ == 
             "Reduced", $CellContext`ke = \
$CellContext`Q4ElemStiffStressReduced[$CellContext`elemNodes, 30 
               10^6, $CellContext`pr$$, 
               1], $CellContext`ke = \
$CellContext`Q4ElemStiffStressFull[$CellContext`elemNodes, 30 
               10^6, $CellContext`pr$$, 1]], 
            
            If[$CellContext`IR$$ == 
             "Reduced", $CellContext`ke = \
$CellContext`Q8ElemStiffStressReduced[$CellContext`elemNodes, 30 
               10^6, $CellContext`pr$$, 
               1], $CellContext`ke = \
$CellContext`Q8ElemStiffStressFull[$CellContext`elemNodes, 30 
               10^6, $CellContext`pr$$, 1]]]]; $CellContext`pos = Flatten[
            Part[$CellContext`coor, 
             Part[$CellContext`connect, $CellContext`i]]]; AddTo[
           Part[
           K, $CellContext`pos, $CellContext`pos], $CellContext`ke], \
{$CellContext`i, 1, 
          Length[$CellContext`connect]}]; 
       Map[$CellContext`ApplyFixedBC[#, K, $CellContext`F, $CellContext`coor, 
          "x"]& , $CellContext`fixedBCs]; 
       Map[$CellContext`ApplyFixedBC[#, K, $CellContext`F, $CellContext`coor, 
          "y"]& , $CellContext`fixedBCs]; $CellContext`Q = $CellContext`P$$ - \
{10, 0}; Map[$CellContext`ApplyForceBC[#, $CellContext`F, $CellContext`coor, 
          10 Part[$CellContext`Q, 1], "x"]& , $CellContext`forceBCs]; 
       Map[$CellContext`ApplyForceBC[#, $CellContext`F, $CellContext`coor, 
          Part[$CellContext`Q, 2], 
          "y"]& , $CellContext`forceBCs]; $CellContext`deformed = \
$CellContext`nodes + Partition[10^4 Quiet[
             LinearSolve[K, $CellContext`F]], 2]; 
       If[$CellContext`ET$$ == "Q8", $CellContext`connect = Map[Riffle[
             Part[
              Partition[#, 4], 1], 
             Part[
              Partition[#, 4], 2]]& , $CellContext`connect]; 
         Null]; $CellContext`Iy = (1/12) 1^2; $CellContext`Ey = 30 10^6; 
       Show[
         Graphics[{{
            Opacity[0.2], 
            EdgeForm[Gray], 
            GraphicsComplex[$CellContext`nodes, 
             Polygon[$CellContext`connect]]}, {
            Opacity[0.5], 
            EdgeForm[Black], Red, 
            GraphicsComplex[$CellContext`deformed, 
             Polygon[$CellContext`connect]]}, {Thick, 
            Arrow[{{10, 0}, $CellContext`P$$}]}, 
           
           Polygon[{{-2, -2}, {0, -2}, {0, 2}, {-2, 2}}, 
            VertexColors -> {White, Black, Black, White}]}, 
          PlotRange -> {{-1, 11}, {-4, 4}}, ImageSize -> Large], 
         Plot[
         5.45 10^3 (Part[$CellContext`Q, 2]/(
           6 $CellContext`Ey $CellContext`Iy)) ($CellContext`x^3 + 
           3 10 $CellContext`x^2), {$CellContext`x, 0, 10}, PlotStyle -> {
            Thickness[0.01], Black}]]), "Specifications" :> {
        Style[
        "Plane Elasticity with Complex Loading and Reduced Integration", 18, 
         Bold], " ", {{$CellContext`ET$$, "Q4", "Element Type"}, {
         "Q4", "Q8"}}, {{$CellContext`IR$$, "Reduced", "Integration Rule"}, {
         "Reduced", "Full"}}, 
        Delimiter, {{$CellContext`PS$$, "Plane Strain", "Stress State"}, {
         "Plane Strain", "Plane Stress"}}, 
        Delimiter, {{$CellContext`MSH$$, "M1", "Mesh"}, {
         "M1", "M2", "M3", "M4"}}, 
        Delimiter, {{$CellContext`P$$, {10, 1}, "Applied Load"}, {0, -3}, {11,
          3}, ControlType -> 
         Locator}, {{$CellContext`pr$$, 0.29, "Poisson Ratio, \[Nu]"}, 0, 
         0.499, Appearance -> "Labeled"}}, 
      "Options" :> {
       ContinuousAction -> False, 
        TrackedSymbols :> {$CellContext`P$$, $CellContext`IR$$, \
$CellContext`ET$$, $CellContext`MSH$$, $CellContext`PS$$, $CellContext`pr$$}, 
        DefaultLabelStyle -> (FontFamily -> "Times")}, "DefaultOptions" :> {}],
     ImageSizeCache->{627., {344., 350.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`pwd = 
       "/Users/john/Documents/ME4603/Supplements/PlaneElasticityDemo/", \
$CellContext`xCoord = {0., 0., 5., 5., 0., 5., 10., 10., 
        10.}, $CellContext`yCoord = {-0.5, 0., 0., -0.5, 0.5, 0.5, 0., -0.5, 
        0.5}, $CellContext`nodes = {{0., -0.5}, {0., 0.}, {5., 0.}, {
        5., -0.5}, {0., 0.5}, {5., 0.5}, {10., 0.}, {10., -0.5}, {10., 
        0.5}}, $CellContext`connect = {{3, 2, 1, 4}, {6, 5, 2, 3}, {7, 3, 4, 
        8}, {9, 6, 3, 7}}, $CellContext`fixedBCs = {1, 5, 
        2}, $CellContext`forceBCs = {7}, $CellContext`coor = {{1, 2}, {3, 
        4}, {5, 6}, {7, 8}, {9, 10}, {11, 12}, {13, 14}, {15, 16}, {17, 18}}, 
       K = {{1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 1, 0, 
         0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 1, 0, 0, 0, 0, 
         0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 
         0, 0, 0, 0, 0, 0, 0}, {-3.005260243632336*^7, -6.921373200442968*^6, 
         5.617386489479512*^7, 0., 1.2021040974529344`*^8, 
         0., -5.617386489479512*^7, 0., -3.005260243632336*^7, 
         6.921373200442968*^6, -5.617386489479512*^7, 0., 
         5.617386489479512*^7, 0., -3.005260243632336*^7, 
         6.921373200442968*^6, -3.005260243632336*^7, -6.921373200442968*^6}, \
{-6.921373200442968*^6, -9.857419712070876*^7, 0., 1.9598560354374307`*^8, 0.,
          3.9429678848283505`*^8, 0., -1.9598560354374307`*^8, 
         6.921373200442968*^6, -9.857419712070876*^7, 
         0., -1.9598560354374307`*^8, 0., 1.9598560354374307`*^8, 
         6.921373200442968*^6, -9.857419712070876*^7, -6.921373200442968*^6, \
-9.857419712070876*^7}, {
         2.808693244739756*^7, -1.107419712070875*^6, -3.005260243632336*^7, 
          6.921373200442968*^6, -5.617386489479512*^7, 0., 
          6.010520487264672*^7, 0., 0, 0, 0, 
          0, -3.005260243632336*^7, -6.921373200442968*^6, 
          2.808693244739756*^7, 1.107419712070875*^6, 0, 0}, {
         1.107419712070875*^6, 9.799280177187154*^7, 
          6.921373200442968*^6, -9.857419712070876*^7, 
          0., -1.9598560354374307`*^8, 0., 1.9714839424141753`*^8, 0, 0, 0, 
          0, -6.921373200442968*^6, -9.857419712070876*^7, \
-1.107419712070875*^6, 9.799280177187154*^7, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 
         1, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 
         0, 0, 0, 0, 0, 0}, {
         0, 0, -3.005260243632336*^7, -6.921373200442968*^6, \
-5.617386489479512*^7, 0., 0, 0, 2.808693244739756*^7, 1.107419712070875*^6, 
          6.010520487264672*^7, 0., -3.005260243632336*^7, 
          6.921373200442968*^6, 0, 0, 
          2.808693244739756*^7, -1.107419712070875*^6}, {
         0, 0, -6.921373200442968*^6, -9.857419712070876*^7, 
          0., -1.9598560354374307`*^8, 0, 0, -1.107419712070875*^6, 
          9.799280177187154*^7, 0., 1.9714839424141753`*^8, 
          6.921373200442968*^6, -9.857419712070876*^7, 0, 0, 
          1.107419712070875*^6, 9.799280177187154*^7}, {
         0, 0, 0, 0, 5.617386489479512*^7, 
          0., -3.005260243632336*^7, -6.921373200442968*^6, 0, 
          0, -3.005260243632336*^7, 6.921373200442968*^6, 
          6.010520487264672*^7, 
          0., -2.808693244739756*^7, -1.107419712070875*^6, \
-2.808693244739756*^7, 1.107419712070875*^6}, {
         0, 0, 0, 0, 0., 
          1.9598560354374307`*^8, -6.921373200442968*^6, \
-9.857419712070876*^7, 0, 0, 6.921373200442968*^6, -9.857419712070876*^7, 0., 
          1.9714839424141753`*^8, 
          1.107419712070875*^6, -9.799280177187154*^7, -1.107419712070875*^6, \
-9.799280177187154*^7}, {
         0, 0, 0, 0, -3.005260243632336*^7, 6.921373200442968*^6, 
          2.808693244739756*^7, -1.107419712070875*^6, 0, 0, 0, 
          0, -2.808693244739756*^7, 1.107419712070875*^6, 
          3.005260243632336*^7, -6.921373200442968*^6, 0, 0}, {
         0, 0, 0, 0, 6.921373200442968*^6, -9.857419712070876*^7, 
          1.107419712070875*^6, 9.799280177187154*^7, 0, 0, 0, 
          0, -1.107419712070875*^6, -9.799280177187154*^7, \
-6.921373200442968*^6, 9.857419712070876*^7, 0, 0}, {
         0, 0, 0, 0, -3.005260243632336*^7, -6.921373200442968*^6, 0, 0, 0, 0,
           2.808693244739756*^7, 
          1.107419712070875*^6, -2.808693244739756*^7, -1.107419712070875*^6, 
          0, 0, 3.005260243632336*^7, 6.921373200442968*^6}, {
         0, 0, 0, 0, -6.921373200442968*^6, -9.857419712070876*^7, 0, 0, 0, 
          0, -1.107419712070875*^6, 9.799280177187154*^7, 
          1.107419712070875*^6, -9.799280177187154*^7, 0, 0, 
          6.921373200442968*^6, 9.857419712070876*^7}}, $CellContext`F = {0, 
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 
        0}, $CellContext`elemNodes = {{10., 0.5}, {5., 0.5}, {5., 0.}, {10., 
        0.}}, $CellContext`ke = CompressedData["
1:eJxTTMoPSmViYGDggGITvd/L+FfWOO7ju+Kjnh7lGNGl4a55ssrxoZvXtttP
DRyh8geh8geh8geh8jBxR5HZ1VdqG6bD9B2sSxVrZ4ydDjP3IFQeps8RKn8Q
zb6DaO5Btw/dPY5o5qHbh+4edPceJOQ/QuFDyH+EwoeQ/wiFDyH/EQofALwu
8IQ=
        "], $CellContext`Q4ElemStiffStrainReduced = 
       CompiledFunction[{10, 11., 5468}, {{
           Blank[Real], 2}, 
          Blank[Real], 
          Blank[Real], 
          Blank[Real]}, {{3, 2, 0}, {3, 0, 0}, {3, 0, 1}, {3, 0, 2}, {3, 2, 
         2}}, {{0, {2, 0, 1}}, {4, {2, 0, 0}}, {{8, 8}, {2, 1, 1}}, {
          0., {3, 0, 3}}}, {0, 2, 7, 0, 
         6}, {{47, ConstantArray, 3, 0, 3, 2, 1, 1, 3, 2, 3}, {10, 0, 4}, {16,
           4, 2, 4}, {
          47, $CellContext`BCBJQ4Strain, 3, 2, 0, 3, 0, 0, 3, 0, 1, 2, 0, 1, 
           2, 0, 1, 3, 2, 5}, {41, 259, 3, 0, 4, 3, 2, 5, 3, 2, 4}, {
          42, "CopyTensor", 3, 2, 4, 3, 2, 3}, {
          42, "CopyTensor", 3, 2, 3, 3, 2, 2}, {1}, {1}}, 
         Function[{$CellContext`nodes, $CellContext`Ey, $CellContext`\[Nu], \
$CellContext`he}, 
          
          Module[{$CellContext`out = 
            ConstantArray[
             0., {8, 8}]}, $CellContext`out = (
              4 $CellContext`he) \
$CellContext`BCBJQ4Strain[$CellContext`nodes, $CellContext`Ey, $CellContext`\
\[Nu], 0, 0]; Return[$CellContext`out]]], 
         Evaluate], $CellContext`BCBJQ4Strain = 
       CompiledFunction[{10, 11., 5468}, {{
           Blank[Real], 2}, 
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real]}, {{3, 2, 0}, {3, 0, 0}, {3, 0, 1}, {3, 0, 2}, {3, 0, 
         3}, {3, 2, 
         12}}, {{{3, 16}, {2, 1, 6}}, {0, {2, 0, 5}}, {
          4, {2, 0, 3}}, {{8, 8}, {2, 1, 10}}, {{4, 4}, {2, 1, 1}}, {{4, 
           16}, {2, 1, 4}}, {{3, 3}, {2, 1, 8}}, {
          2, {2, 0, 1}}, {-1, {2, 0, 4}}, {12, {2, 0, 6}}, {1, {2, 0, 0}}, {
          3, {2, 0, 2}}, {0., {3, 0, 12}}}, {0, 7, 46, 0, 
         15}, {{38, 0, 0, 0, 0, 0, 0, 11}, {38, 0, 0, 1, 0, 0, 0, 10}, {38, 0,
           0, 2, 0, 0, 0, 9}, {38, 0, 0, 3, 0, 0, 0, 8}, {38, 0, 0, 0, 0, 1, 
          0, 7}, {38, 0, 0, 1, 0, 1, 0, 6}, {38, 0, 0, 2, 0, 1, 0, 5}, {38, 0,
           0, 3, 0, 1, 0, 4}, {
          47, ConstantArray, 3, 0, 12, 2, 1, 1, 3, 2, 11}, {
          47, ConstantArray, 3, 0, 12, 2, 1, 1, 3, 2, 9}, {
          47, ConstantArray, 3, 0, 12, 2, 1, 4, 3, 2, 7}, {
          47, ConstantArray, 3, 0, 12, 2, 1, 6, 3, 2, 5}, {
          47, ConstantArray, 3, 0, 12, 2, 1, 8, 3, 2, 3}, {7, 12, 21}, {
          47, ConstantArray, 3, 0, 12, 2, 1, 10, 3, 2, 2}, {10, 3, 15}, {40, 
          60, 3, 0, 15, 3, 0, 13}, {10, 4, 15}, {13, 15, 3, 15}, {16, 11, 15, 
          18}, {16, 10, 3, 15}, {19, 15, 16}, {19, 8, 15}, {13, 9, 15, 14}, {
          10, 0, 15}, {13, 15, 3, 15}, {16, 14, 15, 14}, {13, 10, 18, 16, 14, 
          15}, {16, 13, 15, 13}, {10, 3, 15}, {40, 60, 3, 0, 15, 3, 0, 18}, {
          10, 4, 15}, {13, 15, 2, 15}, {16, 11, 15, 16}, {16, 9, 2, 15}, {16, 
          8, 2, 14}, {19, 14, 19}, {10, 0, 14}, {13, 14, 2, 14}, {16, 10, 14, 
          20}, {19, 20, 14}, {13, 9, 8, 16, 15, 19, 14, 20}, {16, 18, 20, 
          18}, {10, 3, 20}, {40, 60, 3, 0, 20, 3, 0, 16}, {10, 4, 20}, {13, 
          20, 3, 20}, {16, 7, 20, 15}, {16, 6, 3, 20}, {19, 20, 19}, {19, 4, 
          20}, {13, 5, 20, 14}, {10, 0, 20}, {13, 20, 3, 20}, {16, 14, 20, 
          14}, {13, 6, 15, 19, 14, 20}, {16, 16, 20, 16}, {10, 3, 20}, {40, 
          60, 3, 0, 20, 3, 0, 15}, {10, 4, 20}, {13, 20, 2, 20}, {16, 7, 20, 
          19}, {16, 5, 2, 20}, {16, 4, 2, 14}, {19, 14, 17}, {10, 0, 14}, {13,
           14, 2, 14}, {16, 6, 14, 23}, {19, 23, 14}, {13, 5, 4, 19, 20, 17, 
          14, 23}, {16, 15, 23, 15}, {34, 2, 2, 2, 13, 18, 16, 15, 3, 13}, {
          42, "CopyTensor", 3, 2, 13, 3, 2, 11}, {
          47, Det, 3, 2, 11, 3, 0, 13}, {7, 13, 21}, {
          47, Inverse, 3, 2, 11, 3, 2, 13}, {
          42, "CopyTensor", 3, 2, 13, 3, 2, 9}, {10, 3, 13}, {40, 60, 3, 0, 
          13, 3, 0, 18}, {10, 4, 13}, {13, 13, 3, 13}, {16, 18, 13, 18}, {19, 
          3, 13}, {10, 0, 16}, {13, 16, 13, 16}, {10, 3, 13}, {40, 60, 3, 0, 
          13, 3, 0, 15}, {16, 16, 15, 16}, {10, 0, 15}, {13, 15, 3, 15}, {10, 
          3, 13}, {40, 60, 3, 0, 13, 3, 0, 23}, {16, 15, 23, 15}, {10, 3, 
          23}, {40, 60, 3, 0, 23, 3, 0, 13}, {19, 3, 23}, {10, 4, 19}, {13, 
          19, 23, 19}, {16, 13, 19, 13}, {10, 3, 19}, {40, 60, 3, 0, 19, 3, 0,
           23}, {10, 4, 19}, {13, 19, 2, 19}, {16, 23, 19, 23}, {10, 3, 19}, {
          40, 60, 3, 0, 19, 3, 0, 20}, {19, 2, 19}, {10, 4, 17}, {13, 17, 19, 
          17}, {16, 20, 17, 20}, {10, 0, 17}, {13, 17, 2, 17}, {10, 3, 19}, {
          40, 60, 3, 0, 19, 3, 0, 14}, {16, 17, 14, 17}, {19, 2, 14}, {10, 0, 
          19}, {13, 19, 14, 19}, {10, 3, 14}, {40, 60, 3, 0, 14, 3, 0, 24}, {
          16, 19, 24, 19}, {10, 3, 24}, {40, 60, 3, 0, 24, 3, 0, 14}, {10, 4, 
          24}, {13, 24, 3, 24}, {16, 14, 24, 14}, {19, 3, 24}, {10, 0, 22}, {
          13, 22, 24, 22}, {10, 3, 24}, {40, 60, 3, 0, 24, 3, 0, 25}, {16, 22,
           25, 22}, {10, 0, 25}, {13, 25, 3, 25}, {10, 3, 24}, {40, 60, 3, 0, 
          24, 3, 0, 27}, {16, 25, 27, 25}, {10, 3, 27}, {40, 60, 3, 0, 27, 3, 
          0, 24}, {19, 3, 27}, {10, 4, 28}, {13, 28, 27, 28}, {16, 24, 28, 
          24}, {10, 3, 28}, {40, 60, 3, 0, 28, 3, 0, 27}, {10, 4, 28}, {13, 
          28, 2, 28}, {16, 27, 28, 27}, {10, 3, 28}, {40, 60, 3, 0, 28, 3, 0, 
          26}, {19, 2, 28}, {10, 4, 30}, {13, 30, 28, 30}, {16, 26, 30, 26}, {
          10, 0, 30}, {13, 30, 2, 30}, {10, 3, 28}, {40, 60, 3, 0, 28, 3, 0, 
          29}, {16, 30, 29, 30}, {19, 2, 29}, {10, 0, 28}, {13, 28, 29, 28}, {
          10, 3, 29}, {40, 60, 3, 0, 29, 3, 0, 31}, {16, 28, 31, 28}, {10, 5, 
          31}, {10, 5, 29}, {10, 5, 32}, {10, 5, 33}, {10, 5, 34}, {10, 5, 
          35}, {10, 5, 36}, {10, 5, 37}, {10, 5, 38}, {10, 5, 39}, {10, 5, 
          40}, {10, 5, 41}, {10, 5, 42}, {10, 5, 43}, {10, 5, 44}, {10, 5, 
          45}, {34, 2, 4, 8, 18, 31, 16, 29, 15, 32, 13, 33, 23, 34, 20, 35, 
          17, 36, 19, 37, 38, 14, 39, 22, 40, 25, 41, 24, 42, 27, 43, 26, 44, 
          30, 45, 28, 3, 13}, {42, "CopyTensor", 3, 2, 13, 3, 2, 7}, {38, 9, 
          0, 0, 0, 0, 0, 18}, {38, 9, 0, 0, 0, 1, 0, 16}, {38, 9, 0, 1, 0, 0, 
          0, 15}, {38, 9, 0, 1, 0, 1, 0, 13}, {38, 9, 0, 1, 0, 0, 0, 23}, {38,
           9, 0, 1, 0, 1, 0, 20}, {38, 9, 0, 0, 0, 0, 0, 17}, {38, 9, 0, 0, 0,
           1, 0, 19}, {10, 5, 14}, {10, 5, 22}, {10, 5, 25}, {10, 5, 24}, {34,
           2, 3, 4, 18, 16, 14, 22, 25, 24, 15, 13, 23, 20, 17, 19, 3, 13}, {
          42, "Dot", 3, 2, 13, 3, 2, 7, 2, 0, 6, 3, 2, 14}, {
          42, "CopyTensor", 3, 2, 14, 3, 2, 5}, {40, 56, 3, 0, 1, 3, 0, 18}, {
          19, 18, 16}, {10, 0, 18}, {13, 18, 16, 18}, {10, 0, 16}, {13, 16, 1,
           16}, {19, 1, 15}, {40, 56, 3, 0, 1, 3, 0, 13}, {10, 1, 23}, {16, 
          23, 13, 23}, {19, 23, 13}, {10, 0, 23}, {13, 23, 15, 13, 23}, {16, 
          16, 23, 16}, {40, 60, 3, 0, 16, 3, 0, 23}, {16, 18, 23, 18}, {16, 0,
           18, 23}, {19, 1, 18}, {40, 56, 3, 0, 1, 3, 0, 16}, {10, 1, 15}, {
          16, 15, 16, 15}, {19, 15, 16}, {10, 0, 15}, {13, 15, 18, 16, 15}, {
          40, 60, 3, 0, 15, 3, 0, 18}, {16, 1, 18, 15}, {16, 0, 15, 18}, {19, 
          1, 15}, {40, 56, 3, 0, 1, 3, 0, 16}, {10, 1, 13}, {16, 13, 16, 
          13}, {19, 13, 16}, {10, 0, 13}, {13, 13, 15, 16, 13}, {40, 60, 3, 0,
           13, 3, 0, 15}, {16, 1, 15, 13}, {16, 0, 13, 15}, {40, 56, 3, 0, 1, 
          3, 0, 13}, {19, 13, 16}, {10, 0, 13}, {13, 13, 16, 13}, {10, 0, 
          16}, {13, 16, 1, 16}, {19, 1, 20}, {40, 56, 3, 0, 1, 3, 0, 17}, {10,
           1, 19}, {16, 19, 17, 19}, {19, 19, 17}, {10, 0, 19}, {13, 19, 20, 
          17, 19}, {16, 16, 19, 16}, {40, 60, 3, 0, 16, 3, 0, 19}, {16, 13, 
          19, 13}, {16, 0, 13, 19}, {10, 0, 13}, {13, 13, 1, 13}, {10, 1, 
          16}, {16, 16, 13, 16}, {40, 60, 3, 0, 16, 3, 0, 13}, {16, 0, 13, 
          16}, {10, 5, 13}, {10, 5, 20}, {10, 5, 17}, {10, 5, 14}, {34, 2, 3, 
          3, 23, 18, 13, 15, 19, 20, 17, 14, 16, 3, 14}, {
          42, "CopyTensor", 3, 2, 14, 3, 2, 3}, {
          42, "Transpose", 3, 2, 5, 3, 2, 14}, {
          42, "Dot", 3, 2, 14, 3, 2, 3, 2, 0, 6, 3, 2, 13}, {
          42, "Dot", 3, 2, 13, 3, 2, 5, 2, 0, 6, 3, 2, 14}, {41, 259, 3, 0, 
          21, 3, 2, 14, 3, 2, 13}, {42, "CopyTensor", 3, 2, 13, 3, 2, 12}, {
          1}, {1}}, 
         Function[{$CellContext`nodes, $CellContext`Ey, $CellContext`\[Nu], \
$CellContext`\[Xi], $CellContext`\[Eta]}, 
          
          Module[{$CellContext`x1 = 
            Part[$CellContext`nodes, 1, 1], $CellContext`x2 = 
            Part[$CellContext`nodes, 2, 1], $CellContext`x3 = 
            Part[$CellContext`nodes, 3, 1], $CellContext`x4 = 
            Part[$CellContext`nodes, 4, 1], $CellContext`y1 = 
            Part[$CellContext`nodes, 1, 2], $CellContext`y2 = 
            Part[$CellContext`nodes, 2, 2], $CellContext`y3 = 
            Part[$CellContext`nodes, 3, 2], $CellContext`y4 = 
            Part[$CellContext`nodes, 4, 2], $CellContext`Jmat = 
            ConstantArray[0., {4, 4}], $CellContext`\[CapitalGamma] = 
            ConstantArray[0., {4, 4}], $CellContext`Dmat = 
            ConstantArray[0., {4, 16}], $CellContext`B = 
            ConstantArray[0., {3, 16}], $CellContext`Cmat = 
            ConstantArray[0., {3, 3}], $CellContext`J = 0., $CellContext`out = 
            ConstantArray[
             0., {8, 8}]}, $CellContext`Jmat = {{(1/
                4) ($CellContext`x2 + $CellContext`x1 (-1 + $CellContext`\
\[Eta]) - $CellContext`x2 $CellContext`\[Eta] + ($CellContext`x3 - \
$CellContext`x4) (1 + $CellContext`\[Eta])), (1/
                4) ($CellContext`x3 + $CellContext`x4 + $CellContext`x1 (-1 + \
$CellContext`\[Xi]) + $CellContext`x3 $CellContext`\[Xi] - $CellContext`x4 \
$CellContext`\[Xi] - $CellContext`x2 (1 + $CellContext`\[Xi]))}, {(1/
                4) ($CellContext`y2 + $CellContext`y1 (-1 + $CellContext`\
\[Eta]) - $CellContext`y2 $CellContext`\[Eta] + ($CellContext`y3 - \
$CellContext`y4) (1 + $CellContext`\[Eta])), (1/
                4) ($CellContext`y3 + $CellContext`y4 + $CellContext`y1 (-1 + \
$CellContext`\[Xi]) + $CellContext`y3 $CellContext`\[Xi] - $CellContext`y4 \
$CellContext`\[Xi] - $CellContext`y2 (
                 1 + $CellContext`\[Xi]))}}; $CellContext`J = 
            Det[$CellContext`Jmat]; $CellContext`\[CapitalGamma] = 
            Inverse[$CellContext`Jmat]; $CellContext`Dmat = {{(1/
                4) (-1 + $CellContext`\[Eta]), 0, (1 - $CellContext`\[Eta])/4,
                0, (1 + $CellContext`\[Eta])/4, 
               0, (1/4) (-1 - $CellContext`\[Eta]), 
               0}, {(1/4) (-1 + $CellContext`\[Xi]), 
               0, (1/4) (-1 - $CellContext`\[Xi]), 
               0, (1 + $CellContext`\[Xi])/4, 0, (1 - $CellContext`\[Xi])/4, 
               0}, {0, (1/4) (-1 + $CellContext`\[Eta]), 
               0, (1 - $CellContext`\[Eta])/4, 0, (1 + $CellContext`\[Eta])/4,
                0, (1/4) (-1 - $CellContext`\[Eta])}, {
              0, (1/4) (-1 + $CellContext`\[Xi]), 
               0, (1/4) (-1 - $CellContext`\[Xi]), 
               0, (1 + $CellContext`\[Xi])/4, 0, (1 - $CellContext`\[Xi])/
               4}}; $CellContext`B = Dot[{{
                Part[$CellContext`\[CapitalGamma], 1, 1], 
                Part[$CellContext`\[CapitalGamma], 1, 2], 0, 0}, {0, 0, 
                Part[$CellContext`\[CapitalGamma], 2, 1], 
                Part[$CellContext`\[CapitalGamma], 2, 2]}, {
                Part[$CellContext`\[CapitalGamma], 2, 1], 
                Part[$CellContext`\[CapitalGamma], 2, 2], 
                Part[$CellContext`\[CapitalGamma], 1, 1], 
                
                Part[$CellContext`\[CapitalGamma], 1, 
                 2]}}, $CellContext`Dmat]; $CellContext`Cmat = \
{{$CellContext`Ey ((1 - $CellContext`\[Nu]^2)/((1 + $CellContext`\[Nu]) (
                 1 - $CellContext`\[Nu] - 
                 2 $CellContext`\[Nu]^2))), $CellContext`Ey ($CellContext`\
\[Nu]/(1 - $CellContext`\[Nu] - 2 $CellContext`\[Nu]^2)), 
               0}, {$CellContext`Ey ($CellContext`\[Nu]/(
                1 - $CellContext`\[Nu] - 
                2 $CellContext`\[Nu]^2)), $CellContext`Ey ((
                 1 - $CellContext`\[Nu]^2)/((1 + $CellContext`\[Nu]) (
                 1 - $CellContext`\[Nu] - 2 $CellContext`\[Nu]^2))), 0}, {
              0, 0, $CellContext`Ey/(2 (1 + $CellContext`\[Nu]))}}; Return[Dot[
               
               Transpose[$CellContext`B], $CellContext`Cmat, $CellContext`B] \
$CellContext`J]]], Evaluate], $CellContext`Ey = 30000000, $CellContext`\[Nu] = 
       0.29, $CellContext`B = {{1, 3, 7}, {3, 6, 8}, {9, 0, 
        3}}, $CellContext`Cmat = {{1, 2, 0}, {2, 4, 0}, {0, 0, 
        7}}, $CellContext`Q4ElemStiffStrainFull = 
       CompiledFunction[{10, 11., 5468}, {{
           Blank[Real], 2}, 
          Blank[Real], 
          Blank[Real], 
          Blank[Real]}, {{3, 2, 0}, {3, 0, 0}, {3, 0, 1}, {3, 0, 2}, {3, 2, 
         2}}, {{{8, 8}, {2, 1, 1}}, {3, {2, 0, 0}}, {0., {3, 0, 3}}}, {0, 1, 
         9, 0, 9}, {{47, ConstantArray, 3, 0, 3, 2, 1, 1, 3, 2, 5}, {10, 0, 
          7}, {40, 60, 3, 0, 7, 3, 0, 4}, {40, 57, 3, 0, 4, 3, 0, 7}, {19, 7, 
          4}, {10, 0, 7}, {40, 60, 3, 0, 7, 3, 0, 5}, {40, 57, 3, 0, 5, 3, 0, 
          7}, {19, 7, 5}, {
          47, $CellContext`BCBJQ4Strain, 3, 2, 0, 3, 0, 0, 3, 0, 1, 3, 0, 4, 
           3, 0, 5, 3, 2, 6}, {10, 0, 4}, {40, 60, 3, 0, 4, 3, 0, 7}, {40, 57,
           3, 0, 7, 3, 0, 4}, {10, 0, 7}, {40, 60, 3, 0, 7, 3, 0, 5}, {40, 57,
           3, 0, 5, 3, 0, 7}, {19, 7, 5}, {
          47, $CellContext`BCBJQ4Strain, 3, 2, 0, 3, 0, 0, 3, 0, 1, 3, 0, 4, 
           3, 0, 5, 3, 2, 7}, {10, 0, 5}, {40, 60, 3, 0, 5, 3, 0, 4}, {40, 57,
           3, 0, 4, 3, 0, 5}, {19, 5, 4}, {10, 0, 5}, {40, 60, 3, 0, 5, 3, 0, 
          6}, {40, 57, 3, 0, 6, 3, 0, 5}, {
          47, $CellContext`BCBJQ4Strain, 3, 2, 0, 3, 0, 0, 3, 0, 1, 3, 0, 4, 
           3, 0, 5, 3, 2, 3}, {10, 0, 4}, {40, 60, 3, 0, 4, 3, 0, 5}, {40, 57,
           3, 0, 5, 3, 0, 4}, {10, 0, 5}, {40, 60, 3, 0, 5, 3, 0, 6}, {40, 57,
           3, 0, 6, 3, 0, 5}, {
          47, $CellContext`BCBJQ4Strain, 3, 2, 0, 3, 0, 0, 3, 0, 1, 3, 0, 4, 
           3, 0, 5, 3, 2, 8}, {44, 6, 7, 3, 8, 6}, {41, 259, 3, 0, 2, 3, 2, 6,
           3, 2, 7}, {42, "CopyTensor", 3, 2, 7, 3, 2, 5}, {
          42, "CopyTensor", 3, 2, 5, 3, 2, 2}, {1}, {1}}, 
         Function[{$CellContext`nodes, $CellContext`Ey, $CellContext`\[Nu], \
$CellContext`he}, 
          
          Module[{$CellContext`out = 
            ConstantArray[
             0., {8, 8}]}, $CellContext`out = $CellContext`he \
($CellContext`BCBJQ4Strain[$CellContext`nodes, $CellContext`Ey, $CellContext`\
\[Nu], -Sqrt[1/3], -
                Sqrt[1/3]] + $CellContext`BCBJQ4Strain[$CellContext`nodes, \
$CellContext`Ey, $CellContext`\[Nu], 
                Sqrt[1/3], -
                Sqrt[1/3]] + $CellContext`BCBJQ4Strain[$CellContext`nodes, \
$CellContext`Ey, $CellContext`\[Nu], -Sqrt[1/3], 
                Sqrt[
                1/3]] + $CellContext`BCBJQ4Strain[$CellContext`nodes, \
$CellContext`Ey, $CellContext`\[Nu], 
                Sqrt[1/3], 
                Sqrt[1/3]]); Return[$CellContext`out]]], 
         Evaluate], $CellContext`Q8ElemStiffStrainReduced = 
       CompiledFunction[{10, 11., 5468}, {{
           Blank[Real], 2}, 
          Blank[Real], 
          Blank[Real], 
          Blank[Real]}, {{3, 2, 0}, {3, 0, 0}, {3, 0, 1}, {3, 0, 2}, {3, 2, 
         2}}, {{{8, 8}, {2, 1, 1}}, {3, {2, 0, 0}}, {0., {3, 0, 3}}}, {0, 1, 
         9, 0, 9}, {{47, ConstantArray, 3, 0, 3, 2, 1, 1, 3, 2, 5}, {10, 0, 
          7}, {40, 60, 3, 0, 7, 3, 0, 4}, {40, 57, 3, 0, 4, 3, 0, 7}, {19, 7, 
          4}, {10, 0, 7}, {40, 60, 3, 0, 7, 3, 0, 5}, {40, 57, 3, 0, 5, 3, 0, 
          7}, {19, 7, 5}, {
          47, $CellContext`BCBJQ8Strain, 3, 2, 0, 3, 0, 0, 3, 0, 1, 3, 0, 4, 
           3, 0, 5, 3, 2, 6}, {10, 0, 4}, {40, 60, 3, 0, 4, 3, 0, 7}, {40, 57,
           3, 0, 7, 3, 0, 4}, {10, 0, 7}, {40, 60, 3, 0, 7, 3, 0, 5}, {40, 57,
           3, 0, 5, 3, 0, 7}, {19, 7, 5}, {
          47, $CellContext`BCBJQ8Strain, 3, 2, 0, 3, 0, 0, 3, 0, 1, 3, 0, 4, 
           3, 0, 5, 3, 2, 7}, {10, 0, 5}, {40, 60, 3, 0, 5, 3, 0, 4}, {40, 57,
           3, 0, 4, 3, 0, 5}, {19, 5, 4}, {10, 0, 5}, {40, 60, 3, 0, 5, 3, 0, 
          6}, {40, 57, 3, 0, 6, 3, 0, 5}, {
          47, $CellContext`BCBJQ8Strain, 3, 2, 0, 3, 0, 0, 3, 0, 1, 3, 0, 4, 
           3, 0, 5, 3, 2, 3}, {10, 0, 4}, {40, 60, 3, 0, 4, 3, 0, 5}, {40, 57,
           3, 0, 5, 3, 0, 4}, {10, 0, 5}, {40, 60, 3, 0, 5, 3, 0, 6}, {40, 57,
           3, 0, 6, 3, 0, 5}, {
          47, $CellContext`BCBJQ8Strain, 3, 2, 0, 3, 0, 0, 3, 0, 1, 3, 0, 4, 
           3, 0, 5, 3, 2, 8}, {44, 6, 7, 3, 8, 6}, {41, 259, 3, 0, 2, 3, 2, 6,
           3, 2, 7}, {42, "CopyTensor", 3, 2, 7, 3, 2, 5}, {
          42, "CopyTensor", 3, 2, 5, 3, 2, 2}, {1}, {1}}, 
         Function[{$CellContext`nodes, $CellContext`Ey, $CellContext`\[Nu], \
$CellContext`he}, 
          
          Module[{$CellContext`out = 
            ConstantArray[
             0., {8, 8}]}, $CellContext`out = $CellContext`he \
($CellContext`BCBJQ8Strain[$CellContext`nodes, $CellContext`Ey, $CellContext`\
\[Nu], -Sqrt[1/3], -
                Sqrt[1/3]] + $CellContext`BCBJQ8Strain[$CellContext`nodes, \
$CellContext`Ey, $CellContext`\[Nu], 
                Sqrt[1/3], -
                Sqrt[1/3]] + $CellContext`BCBJQ8Strain[$CellContext`nodes, \
$CellContext`Ey, $CellContext`\[Nu], -Sqrt[1/3], 
                Sqrt[
                1/3]] + $CellContext`BCBJQ8Strain[$CellContext`nodes, \
$CellContext`Ey, $CellContext`\[Nu], 
                Sqrt[1/3], 
                Sqrt[1/3]]); Return[$CellContext`out]]], 
         Evaluate], $CellContext`BCBJQ8Strain = 
       CompiledFunction[{10, 11., 5468}, {{
           Blank[Real], 2}, 
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real]}, {{3, 2, 0}, {3, 0, 0}, {3, 0, 1}, {3, 0, 2}, {3, 0, 
         3}, {3, 2, 
         12}}, {{{3, 16}, {2, 1, 6}}, {0, {2, 0, 9}}, {4, {2, 0, 3}}, {
          8, {2, 0, 7}}, {{8, 8}, {2, 1, 10}}, {6, {2, 0, 5}}, {
          5, {2, 0, 4}}, {{4, 4}, {2, 1, 1}}, {{4, 16}, {2, 1, 4}}, {{3, 3}, {
           2, 1, 8}}, {2, {2, 0, 1}}, {-1, {2, 0, 8}}, {12, {2, 0, 10}}, {
          7, {2, 0, 6}}, {1, {2, 0, 0}}, {3, {2, 0, 2}}, {0., {3, 0, 20}}}, {
         0, 11, 86, 0, 
         15}, {{38, 0, 0, 0, 0, 0, 0, 19}, {38, 0, 0, 1, 0, 0, 0, 18}, {38, 0,
           0, 2, 0, 0, 0, 17}, {38, 0, 0, 3, 0, 0, 0, 16}, {38, 0, 0, 4, 0, 0,
           0, 15}, {38, 0, 0, 5, 0, 0, 0, 14}, {38, 0, 0, 6, 0, 0, 0, 13}, {
          38, 0, 0, 7, 0, 0, 0, 12}, {38, 0, 0, 0, 0, 1, 0, 11}, {38, 0, 0, 1,
           0, 1, 0, 10}, {38, 0, 0, 2, 0, 1, 0, 9}, {38, 0, 0, 3, 0, 1, 0, 
          8}, {38, 0, 0, 4, 0, 1, 0, 7}, {38, 0, 0, 5, 0, 1, 0, 6}, {38, 0, 0,
           6, 0, 1, 0, 5}, {38, 0, 0, 7, 0, 1, 0, 4}, {
          47, ConstantArray, 3, 0, 20, 2, 1, 1, 3, 2, 11}, {
          47, ConstantArray, 3, 0, 20, 2, 1, 1, 3, 2, 9}, {
          47, ConstantArray, 3, 0, 20, 2, 1, 4, 3, 2, 7}, {
          47, ConstantArray, 3, 0, 20, 2, 1, 6, 3, 2, 5}, {
          47, ConstantArray, 3, 0, 20, 2, 1, 8, 3, 2, 3}, {7, 20, 29}, {
          47, ConstantArray, 3, 0, 20, 2, 1, 10, 3, 2, 2}, {10, 3, 22}, {40, 
          60, 3, 0, 22, 3, 0, 25}, {16, 19, 3, 22}, {16, 18, 3, 32}, {19, 32, 
          24}, {16, 17, 3, 32}, {16, 16, 3, 26}, {19, 26, 27}, {40, 56, 3, 0, 
          3, 3, 0, 26}, {16, 19, 26, 21}, {19, 21, 26}, {40, 56, 3, 0, 3, 3, 
          0, 21}, {16, 18, 21, 23}, {40, 56, 3, 0, 3, 3, 0, 21}, {16, 17, 21, 
          30}, {40, 56, 3, 0, 3, 3, 0, 21}, {16, 16, 21, 34}, {19, 34, 21}, {
          10, 1, 34}, {16, 34, 14, 34}, {40, 56, 3, 0, 3, 3, 0, 33}, {10, 8, 
          28}, {13, 28, 33, 28}, {16, 34, 28, 34}, {19, 34, 28}, {10, 1, 
          34}, {16, 34, 12, 34}, {40, 56, 3, 0, 3, 3, 0, 33}, {10, 8, 31}, {
          13, 31, 33, 31}, {16, 34, 31, 34}, {10, 1, 31}, {16, 31, 19, 31}, {
          16, 31, 2, 31}, {10, 1, 33}, {16, 33, 18, 33}, {16, 33, 2, 33}, {10,
           1, 39}, {16, 39, 17, 39}, {16, 39, 2, 39}, {10, 1, 36}, {16, 36, 
          16, 36}, {16, 36, 2, 36}, {10, 3, 38}, {16, 38, 15, 38}, {16, 38, 2,
           38}, {19, 38, 35}, {10, 3, 38}, {16, 38, 13, 38}, {16, 38, 2, 
          38}, {19, 38, 40}, {10, 1, 38}, {16, 38, 19, 38}, {16, 38, 3, 38}, {
          16, 38, 2, 38}, {19, 38, 37}, {10, 1, 38}, {16, 38, 18, 38}, {16, 
          38, 3, 38}, {16, 38, 2, 38}, {19, 38, 43}, {10, 1, 38}, {16, 38, 17,
           38}, {16, 38, 3, 38}, {16, 38, 2, 38}, {10, 1, 46}, {16, 46, 16, 
          46}, {16, 46, 3, 46}, {16, 46, 2, 46}, {10, 3, 44}, {16, 44, 15, 
          44}, {16, 44, 3, 44}, {16, 44, 2, 44}, {10, 3, 41}, {16, 41, 13, 
          41}, {16, 41, 3, 41}, {16, 41, 2, 41}, {19, 41, 42}, {13, 22, 24, 
          32, 27, 26, 23, 30, 21, 28, 34, 31, 33, 39, 36, 35, 40, 37, 43, 38, 
          46, 44, 42, 22}, {16, 25, 22, 25}, {10, 3, 22}, {40, 60, 3, 0, 22, 
          3, 0, 24}, {10, 1, 22}, {16, 22, 19, 22}, {16, 22, 3, 22}, {10, 1, 
          32}, {16, 32, 18, 32}, {16, 32, 3, 32}, {10, 1, 27}, {16, 27, 17, 
          27}, {16, 27, 3, 27}, {10, 1, 26}, {16, 26, 16, 26}, {16, 26, 3, 
          26}, {10, 3, 23}, {16, 23, 14, 23}, {16, 23, 3, 23}, {19, 23, 30}, {
          10, 3, 23}, {16, 23, 12, 23}, {16, 23, 3, 23}, {19, 23, 21}, {16, 
          19, 2, 23}, {16, 18, 2, 28}, {19, 28, 34}, {16, 17, 2, 28}, {16, 16,
           2, 31}, {19, 31, 33}, {10, 1, 31}, {16, 31, 19, 31}, {16, 31, 3, 
          31}, {16, 31, 2, 31}, {19, 31, 39}, {10, 1, 31}, {16, 31, 18, 31}, {
          16, 31, 3, 31}, {16, 31, 2, 31}, {10, 1, 36}, {16, 36, 17, 36}, {16,
           36, 3, 36}, {16, 36, 2, 36}, {10, 1, 35}, {16, 35, 16, 35}, {16, 
          35, 3, 35}, {16, 35, 2, 35}, {19, 35, 40}, {10, 3, 35}, {16, 35, 14,
           35}, {16, 35, 3, 35}, {16, 35, 2, 35}, {19, 35, 37}, {10, 3, 35}, {
          16, 35, 12, 35}, {16, 35, 3, 35}, {16, 35, 2, 35}, {40, 56, 3, 0, 2,
           3, 0, 43}, {16, 19, 43, 38}, {19, 38, 43}, {40, 56, 3, 0, 2, 3, 0, 
          38}, {16, 18, 38, 46}, {19, 46, 38}, {40, 56, 3, 0, 2, 3, 0, 46}, {
          16, 17, 46, 44}, {40, 56, 3, 0, 2, 3, 0, 46}, {16, 16, 46, 42}, {10,
           1, 46}, {16, 46, 15, 46}, {40, 56, 3, 0, 2, 3, 0, 41}, {10, 8, 
          47}, {13, 47, 41, 47}, {16, 46, 47, 46}, {10, 1, 47}, {16, 47, 13, 
          47}, {40, 56, 3, 0, 2, 3, 0, 41}, {10, 8, 50}, {13, 50, 41, 50}, {
          16, 47, 50, 47}, {19, 47, 50}, {13, 22, 32, 27, 26, 30, 21, 23, 34, 
          28, 33, 39, 31, 36, 40, 37, 35, 43, 38, 44, 42, 46, 50, 22}, {16, 
          24, 22, 24}, {10, 3, 22}, {40, 60, 3, 0, 22, 3, 0, 32}, {16, 11, 3, 
          22}, {16, 10, 3, 27}, {19, 27, 26}, {16, 9, 3, 27}, {16, 8, 3, 
          30}, {19, 30, 21}, {40, 56, 3, 0, 3, 3, 0, 30}, {16, 11, 30, 23}, {
          19, 23, 30}, {40, 56, 3, 0, 3, 3, 0, 23}, {16, 10, 23, 34}, {40, 56,
           3, 0, 3, 3, 0, 23}, {16, 9, 23, 28}, {40, 56, 3, 0, 3, 3, 0, 23}, {
          16, 8, 23, 33}, {19, 33, 23}, {10, 1, 33}, {16, 33, 6, 33}, {40, 56,
           3, 0, 3, 3, 0, 39}, {10, 8, 31}, {13, 31, 39, 31}, {16, 33, 31, 
          33}, {19, 33, 31}, {10, 1, 33}, {16, 33, 4, 33}, {40, 56, 3, 0, 3, 
          3, 0, 39}, {10, 8, 36}, {13, 36, 39, 36}, {16, 33, 36, 33}, {10, 1, 
          36}, {16, 36, 11, 36}, {16, 36, 2, 36}, {10, 1, 39}, {16, 39, 10, 
          39}, {16, 39, 2, 39}, {10, 1, 40}, {16, 40, 9, 40}, {16, 40, 2, 
          40}, {10, 1, 37}, {16, 37, 8, 37}, {16, 37, 2, 37}, {10, 3, 35}, {
          16, 35, 7, 35}, {16, 35, 2, 35}, {19, 35, 43}, {10, 3, 35}, {16, 35,
           5, 35}, {16, 35, 2, 35}, {19, 35, 38}, {10, 1, 35}, {16, 35, 11, 
          35}, {16, 35, 3, 35}, {16, 35, 2, 35}, {19, 35, 44}, {10, 1, 35}, {
          16, 35, 10, 35}, {16, 35, 3, 35}, {16, 35, 2, 35}, {19, 35, 42}, {
          10, 1, 35}, {16, 35, 9, 35}, {16, 35, 3, 35}, {16, 35, 2, 35}, {10, 
          1, 46}, {16, 46, 8, 46}, {16, 46, 3, 46}, {16, 46, 2, 46}, {10, 3, 
          50}, {16, 50, 7, 50}, {16, 50, 3, 50}, {16, 50, 2, 50}, {10, 3, 
          47}, {16, 47, 5, 47}, {16, 47, 3, 47}, {16, 47, 2, 47}, {19, 47, 
          41}, {13, 22, 26, 27, 21, 30, 34, 28, 23, 31, 33, 36, 39, 40, 37, 
          43, 38, 44, 42, 35, 46, 50, 41, 22}, {16, 32, 22, 32}, {10, 3, 
          22}, {40, 60, 3, 0, 22, 3, 0, 26}, {10, 1, 22}, {16, 22, 11, 22}, {
          16, 22, 3, 22}, {10, 1, 27}, {16, 27, 10, 27}, {16, 27, 3, 27}, {10,
           1, 21}, {16, 21, 9, 21}, {16, 21, 3, 21}, {10, 1, 30}, {16, 30, 8, 
          30}, {16, 30, 3, 30}, {10, 3, 34}, {16, 34, 6, 34}, {16, 34, 3, 
          34}, {19, 34, 28}, {10, 3, 34}, {16, 34, 4, 34}, {16, 34, 3, 34}, {
          19, 34, 23}, {16, 11, 2, 34}, {16, 10, 2, 31}, {19, 31, 33}, {16, 9,
           2, 31}, {16, 8, 2, 36}, {19, 36, 39}, {10, 1, 36}, {16, 36, 11, 
          36}, {16, 36, 3, 36}, {16, 36, 2, 36}, {19, 36, 40}, {10, 1, 36}, {
          16, 36, 10, 36}, {16, 36, 3, 36}, {16, 36, 2, 36}, {10, 1, 37}, {16,
           37, 9, 37}, {16, 37, 3, 37}, {16, 37, 2, 37}, {10, 1, 43}, {16, 43,
           8, 43}, {16, 43, 3, 43}, {16, 43, 2, 43}, {19, 43, 38}, {10, 3, 
          43}, {16, 43, 6, 43}, {16, 43, 3, 43}, {16, 43, 2, 43}, {19, 43, 
          44}, {10, 3, 43}, {16, 43, 4, 43}, {16, 43, 3, 43}, {16, 43, 2, 
          43}, {40, 56, 3, 0, 2, 3, 0, 42}, {16, 11, 42, 35}, {19, 35, 42}, {
          40, 56, 3, 0, 2, 3, 0, 35}, {16, 10, 35, 46}, {19, 46, 35}, {40, 56,
           3, 0, 2, 3, 0, 46}, {16, 9, 46, 50}, {40, 56, 3, 0, 2, 3, 0, 46}, {
          16, 8, 46, 41}, {10, 1, 46}, {16, 46, 7, 46}, {40, 56, 3, 0, 2, 3, 
          0, 47}, {10, 8, 49}, {13, 49, 47, 49}, {16, 46, 49, 46}, {10, 1, 
          49}, {16, 49, 5, 49}, {40, 56, 3, 0, 2, 3, 0, 47}, {10, 8, 48}, {13,
           48, 47, 48}, {16, 49, 48, 49}, {19, 49, 48}, {13, 22, 27, 21, 30, 
          28, 23, 34, 33, 31, 39, 40, 36, 37, 38, 44, 43, 42, 35, 50, 41, 46, 
          48, 22}, {16, 26, 22, 26}, {34, 2, 2, 2, 25, 24, 32, 26, 3, 13}, {
          42, "CopyTensor", 3, 2, 13, 3, 2, 11}, {
          47, Det, 3, 2, 11, 3, 0, 25}, {7, 25, 29}, {
          47, Inverse, 3, 2, 11, 3, 2, 13}, {
          42, "CopyTensor", 3, 2, 13, 3, 2, 9}, {10, 3, 25}, {40, 60, 3, 0, 
          25, 3, 0, 24}, {16, 3, 24, 25}, {40, 56, 3, 0, 3, 3, 0, 24}, {10, 3,
           32}, {40, 60, 3, 0, 32, 3, 0, 26}, {16, 24, 26, 24}, {19, 24, 
          26}, {10, 1, 24}, {40, 60, 3, 0, 24, 3, 0, 32}, {16, 2, 32, 24}, {
          16, 3, 2, 32}, {10, 1, 22}, {40, 60, 3, 0, 22, 3, 0, 27}, {16, 32, 
          27, 32}, {19, 32, 27}, {13, 25, 26, 24, 27, 25}, {10, 3, 26}, {40, 
          60, 3, 0, 26, 3, 0, 24}, {16, 3, 24, 26}, {19, 26, 24}, {40, 56, 3, 
          0, 3, 3, 0, 26}, {10, 3, 27}, {40, 60, 3, 0, 27, 3, 0, 32}, {16, 26,
           32, 26}, {10, 1, 32}, {40, 60, 3, 0, 32, 3, 0, 27}, {16, 2, 27, 
          32}, {16, 3, 2, 27}, {10, 1, 22}, {40, 60, 3, 0, 22, 3, 0, 21}, {16,
           27, 21, 27}, {19, 27, 21}, {13, 24, 26, 32, 21, 24}, {10, 3, 26}, {
          40, 60, 3, 0, 26, 3, 0, 32}, {16, 3, 32, 26}, {40, 56, 3, 0, 3, 3, 
          0, 32}, {10, 3, 21}, {40, 60, 3, 0, 21, 3, 0, 27}, {16, 32, 27, 
          32}, {10, 1, 27}, {40, 60, 3, 0, 27, 3, 0, 21}, {16, 2, 21, 27}, {
          16, 3, 2, 21}, {10, 1, 22}, {40, 60, 3, 0, 22, 3, 0, 30}, {16, 21, 
          30, 21}, {13, 26, 32, 27, 21, 26}, {10, 3, 32}, {40, 60, 3, 0, 32, 
          3, 0, 27}, {16, 3, 27, 32}, {19, 32, 27}, {40, 56, 3, 0, 3, 3, 0, 
          32}, {10, 3, 21}, {40, 60, 3, 0, 21, 3, 0, 30}, {16, 32, 30, 32}, {
          19, 32, 30}, {10, 1, 32}, {40, 60, 3, 0, 32, 3, 0, 21}, {16, 2, 21, 
          32}, {16, 3, 2, 21}, {10, 1, 22}, {40, 60, 3, 0, 22, 3, 0, 28}, {16,
           21, 28, 21}, {13, 27, 30, 32, 21, 27}, {19, 2, 30}, {16, 3, 2, 
          32}, {13, 30, 32, 30}, {10, 1, 32}, {40, 60, 3, 0, 32, 3, 0, 21}, {
          40, 56, 3, 0, 3, 3, 0, 32}, {10, 1, 28}, {40, 60, 3, 0, 28, 3, 0, 
          22}, {16, 32, 22, 32}, {19, 32, 22}, {13, 21, 22, 21}, {19, 2, 
          22}, {16, 3, 2, 32}, {19, 32, 28}, {13, 22, 28, 22}, {10, 1, 28}, {
          40, 60, 3, 0, 28, 3, 0, 32}, {19, 32, 28}, {40, 56, 3, 0, 3, 3, 0, 
          32}, {10, 1, 23}, {40, 60, 3, 0, 23, 3, 0, 34}, {16, 32, 34, 32}, {
          13, 28, 32, 28}, {10, 1, 32}, {40, 60, 3, 0, 32, 3, 0, 34}, {16, 3, 
          34, 32}, {10, 3, 34}, {40, 60, 3, 0, 34, 3, 0, 23}, {16, 2, 23, 
          34}, {16, 3, 2, 23}, {10, 1, 33}, {40, 60, 3, 0, 33, 3, 0, 31}, {16,
           23, 31, 23}, {19, 23, 31}, {40, 56, 3, 0, 2, 3, 0, 23}, {10, 3, 
          33}, {40, 60, 3, 0, 33, 3, 0, 39}, {16, 23, 39, 23}, {19, 23, 39}, {
          13, 32, 34, 31, 39, 32}, {10, 1, 34}, {40, 60, 3, 0, 34, 3, 0, 
          31}, {16, 3, 31, 34}, {10, 3, 31}, {40, 60, 3, 0, 31, 3, 0, 39}, {
          16, 2, 39, 31}, {19, 31, 39}, {16, 3, 2, 31}, {10, 1, 23}, {40, 60, 
          3, 0, 23, 3, 0, 33}, {16, 31, 33, 31}, {40, 56, 3, 0, 2, 3, 0, 
          33}, {10, 3, 23}, {40, 60, 3, 0, 23, 3, 0, 40}, {16, 33, 40, 33}, {
          19, 33, 40}, {13, 34, 39, 31, 40, 34}, {10, 1, 39}, {40, 60, 3, 0, 
          39, 3, 0, 31}, {16, 3, 31, 39}, {10, 3, 31}, {40, 60, 3, 0, 31, 3, 
          0, 40}, {16, 2, 40, 31}, {16, 3, 2, 40}, {10, 1, 33}, {40, 60, 3, 0,
           33, 3, 0, 23}, {16, 40, 23, 40}, {40, 56, 3, 0, 2, 3, 0, 23}, {10, 
          3, 33}, {40, 60, 3, 0, 33, 3, 0, 36}, {16, 23, 36, 23}, {13, 39, 31,
           40, 23, 39}, {10, 1, 31}, {40, 60, 3, 0, 31, 3, 0, 40}, {16, 3, 40,
           31}, {10, 3, 40}, {40, 60, 3, 0, 40, 3, 0, 23}, {16, 2, 23, 40}, {
          19, 40, 23}, {16, 3, 2, 40}, {10, 1, 36}, {40, 60, 3, 0, 36, 3, 0, 
          33}, {16, 40, 33, 40}, {19, 40, 33}, {40, 56, 3, 0, 2, 3, 0, 40}, {
          10, 3, 36}, {40, 60, 3, 0, 36, 3, 0, 37}, {16, 40, 37, 40}, {13, 31,
           23, 33, 40, 31}, {10, 1, 23}, {40, 60, 3, 0, 23, 3, 0, 33}, {19, 
          33, 23}, {40, 56, 3, 0, 2, 3, 0, 33}, {10, 1, 40}, {40, 60, 3, 0, 
          40, 3, 0, 37}, {16, 33, 37, 33}, {13, 23, 33, 23}, {19, 3, 33}, {16,
           3, 2, 37}, {19, 37, 40}, {13, 33, 40, 33}, {10, 1, 40}, {40, 60, 3,
           0, 40, 3, 0, 37}, {40, 56, 3, 0, 2, 3, 0, 40}, {10, 1, 36}, {40, 
          60, 3, 0, 36, 3, 0, 38}, {16, 40, 38, 40}, {19, 40, 38}, {13, 37, 
          38, 37}, {19, 3, 38}, {16, 3, 2, 40}, {13, 38, 40, 38}, {10, 3, 
          40}, {40, 60, 3, 0, 40, 3, 0, 36}, {16, 3, 36, 40}, {40, 56, 3, 0, 
          3, 3, 0, 36}, {10, 3, 44}, {40, 60, 3, 0, 44, 3, 0, 43}, {16, 36, 
          43, 36}, {19, 36, 43}, {10, 1, 36}, {40, 60, 3, 0, 36, 3, 0, 44}, {
          16, 2, 44, 36}, {16, 3, 2, 44}, {10, 1, 42}, {40, 60, 3, 0, 42, 3, 
          0, 35}, {16, 44, 35, 44}, {19, 44, 35}, {13, 40, 43, 36, 35, 40}, {
          10, 3, 43}, {40, 60, 3, 0, 43, 3, 0, 36}, {16, 3, 36, 43}, {19, 43, 
          36}, {40, 56, 3, 0, 3, 3, 0, 43}, {10, 3, 35}, {40, 60, 3, 0, 35, 3,
           0, 44}, {16, 43, 44, 43}, {10, 1, 44}, {40, 60, 3, 0, 44, 3, 0, 
          35}, {16, 2, 35, 44}, {16, 3, 2, 35}, {10, 1, 42}, {40, 60, 3, 0, 
          42, 3, 0, 50}, {16, 35, 50, 35}, {19, 35, 50}, {13, 36, 43, 44, 50, 
          36}, {10, 3, 43}, {40, 60, 3, 0, 43, 3, 0, 44}, {16, 3, 44, 43}, {
          40, 56, 3, 0, 3, 3, 0, 44}, {10, 3, 50}, {40, 60, 3, 0, 50, 3, 0, 
          35}, {16, 44, 35, 44}, {10, 1, 35}, {40, 60, 3, 0, 35, 3, 0, 50}, {
          16, 2, 50, 35}, {16, 3, 2, 50}, {10, 1, 42}, {40, 60, 3, 0, 42, 3, 
          0, 41}, {16, 50, 41, 50}, {13, 43, 44, 35, 50, 43}, {10, 3, 44}, {
          40, 60, 3, 0, 44, 3, 0, 35}, {16, 3, 35, 44}, {19, 44, 35}, {40, 56,
           3, 0, 3, 3, 0, 44}, {10, 3, 50}, {40, 60, 3, 0, 50, 3, 0, 41}, {16,
           44, 41, 44}, {19, 44, 41}, {10, 1, 44}, {40, 60, 3, 0, 44, 3, 0, 
          50}, {16, 2, 50, 44}, {16, 3, 2, 50}, {10, 1, 42}, {40, 60, 3, 0, 
          42, 3, 0, 46}, {16, 50, 46, 50}, {13, 35, 41, 44, 50, 35}, {19, 2, 
          41}, {16, 3, 2, 44}, {13, 41, 44, 41}, {10, 1, 44}, {40, 60, 3, 0, 
          44, 3, 0, 50}, {40, 56, 3, 0, 3, 3, 0, 44}, {10, 1, 46}, {40, 60, 3,
           0, 46, 3, 0, 42}, {16, 44, 42, 44}, {19, 44, 42}, {13, 50, 42, 
          50}, {19, 2, 42}, {16, 3, 2, 44}, {19, 44, 46}, {13, 42, 46, 42}, {
          10, 1, 46}, {40, 60, 3, 0, 46, 3, 0, 44}, {19, 44, 46}, {40, 56, 3, 
          0, 3, 3, 0, 44}, {10, 1, 48}, {40, 60, 3, 0, 48, 3, 0, 49}, {16, 44,
           49, 44}, {13, 46, 44, 46}, {10, 1, 44}, {40, 60, 3, 0, 44, 3, 0, 
          49}, {16, 3, 49, 44}, {10, 3, 49}, {40, 60, 3, 0, 49, 3, 0, 48}, {
          16, 2, 48, 49}, {16, 3, 2, 48}, {10, 1, 47}, {40, 60, 3, 0, 47, 3, 
          0, 45}, {16, 48, 45, 48}, {19, 48, 45}, {40, 56, 3, 0, 2, 3, 0, 
          48}, {10, 3, 47}, {40, 60, 3, 0, 47, 3, 0, 53}, {16, 48, 53, 48}, {
          19, 48, 53}, {13, 44, 49, 45, 53, 44}, {10, 1, 49}, {40, 60, 3, 0, 
          49, 3, 0, 45}, {16, 3, 45, 49}, {10, 3, 45}, {40, 60, 3, 0, 45, 3, 
          0, 53}, {16, 2, 53, 45}, {19, 45, 53}, {16, 3, 2, 45}, {10, 1, 
          48}, {40, 60, 3, 0, 48, 3, 0, 47}, {16, 45, 47, 45}, {40, 56, 3, 0, 
          2, 3, 0, 47}, {10, 3, 48}, {40, 60, 3, 0, 48, 3, 0, 54}, {16, 47, 
          54, 47}, {19, 47, 54}, {13, 49, 53, 45, 54, 49}, {10, 1, 53}, {40, 
          60, 3, 0, 53, 3, 0, 45}, {16, 3, 45, 53}, {10, 3, 45}, {40, 60, 3, 
          0, 45, 3, 0, 54}, {16, 2, 54, 45}, {16, 3, 2, 54}, {10, 1, 47}, {40,
           60, 3, 0, 47, 3, 0, 48}, {16, 54, 48, 54}, {40, 56, 3, 0, 2, 3, 0, 
          48}, {10, 3, 47}, {40, 60, 3, 0, 47, 3, 0, 51}, {16, 48, 51, 48}, {
          13, 53, 45, 54, 48, 53}, {10, 1, 45}, {40, 60, 3, 0, 45, 3, 0, 
          54}, {16, 3, 54, 45}, {10, 3, 54}, {40, 60, 3, 0, 54, 3, 0, 48}, {
          16, 2, 48, 54}, {19, 54, 48}, {16, 3, 2, 54}, {10, 1, 51}, {40, 60, 
          3, 0, 51, 3, 0, 47}, {16, 54, 47, 54}, {19, 54, 47}, {40, 56, 3, 0, 
          2, 3, 0, 54}, {10, 3, 51}, {40, 60, 3, 0, 51, 3, 0, 52}, {16, 54, 
          52, 54}, {13, 45, 48, 47, 54, 45}, {10, 1, 48}, {40, 60, 3, 0, 48, 
          3, 0, 47}, {19, 47, 48}, {40, 56, 3, 0, 2, 3, 0, 47}, {10, 1, 54}, {
          40, 60, 3, 0, 54, 3, 0, 52}, {16, 47, 52, 47}, {13, 48, 47, 48}, {
          19, 3, 47}, {16, 3, 2, 52}, {19, 52, 54}, {13, 47, 54, 47}, {10, 1, 
          54}, {40, 60, 3, 0, 54, 3, 0, 52}, {40, 56, 3, 0, 2, 3, 0, 54}, {10,
           1, 51}, {40, 60, 3, 0, 51, 3, 0, 55}, {16, 54, 55, 54}, {19, 54, 
          55}, {13, 52, 55, 52}, {19, 3, 55}, {16, 3, 2, 54}, {13, 55, 54, 
          55}, {10, 9, 54}, {10, 9, 51}, {10, 9, 56}, {10, 9, 57}, {10, 9, 
          58}, {10, 9, 59}, {10, 9, 60}, {10, 9, 61}, {10, 9, 62}, {10, 9, 
          63}, {10, 9, 64}, {10, 9, 65}, {10, 9, 66}, {10, 9, 67}, {10, 9, 
          68}, {10, 9, 69}, {10, 9, 70}, {10, 9, 71}, {10, 9, 72}, {10, 9, 
          73}, {10, 9, 74}, {10, 9, 75}, {10, 9, 76}, {10, 9, 77}, {10, 9, 
          78}, {10, 9, 79}, {10, 9, 80}, {10, 9, 81}, {10, 9, 82}, {10, 9, 
          83}, {10, 9, 84}, {10, 9, 85}, {34, 2, 4, 16, 25, 54, 24, 51, 26, 
          56, 27, 57, 30, 58, 21, 59, 22, 60, 28, 61, 32, 62, 34, 63, 39, 64, 
          31, 65, 23, 66, 33, 67, 37, 68, 38, 69, 70, 40, 71, 36, 72, 43, 73, 
          35, 74, 41, 75, 50, 76, 42, 77, 46, 78, 44, 79, 49, 80, 53, 81, 45, 
          82, 48, 83, 47, 84, 52, 85, 55, 3, 13}, {
          42, "CopyTensor", 3, 2, 13, 3, 2, 7}, {38, 9, 0, 0, 0, 0, 0, 25}, {
          38, 9, 0, 0, 0, 1, 0, 24}, {38, 9, 0, 1, 0, 0, 0, 26}, {38, 9, 0, 1,
           0, 1, 0, 27}, {38, 9, 0, 1, 0, 0, 0, 30}, {38, 9, 0, 1, 0, 1, 0, 
          21}, {38, 9, 0, 0, 0, 0, 0, 22}, {38, 9, 0, 0, 0, 1, 0, 28}, {10, 9,
           32}, {10, 9, 34}, {10, 9, 39}, {10, 9, 31}, {34, 2, 3, 4, 25, 24, 
          32, 34, 39, 31, 26, 27, 30, 21, 22, 28, 3, 13}, {
          42, "Dot", 3, 2, 13, 3, 2, 7, 2, 0, 10, 3, 2, 14}, {
          42, "CopyTensor", 3, 2, 14, 3, 2, 5}, {40, 56, 3, 0, 1, 3, 0, 25}, {
          19, 25, 24}, {10, 0, 25}, {13, 25, 24, 25}, {10, 0, 24}, {13, 24, 1,
           24}, {19, 1, 26}, {40, 56, 3, 0, 1, 3, 0, 27}, {10, 1, 30}, {16, 
          30, 27, 30}, {19, 30, 27}, {10, 0, 30}, {13, 30, 26, 27, 30}, {16, 
          24, 30, 24}, {40, 60, 3, 0, 24, 3, 0, 30}, {16, 25, 30, 25}, {16, 0,
           25, 30}, {19, 1, 25}, {40, 56, 3, 0, 1, 3, 0, 24}, {10, 1, 26}, {
          16, 26, 24, 26}, {19, 26, 24}, {10, 0, 26}, {13, 26, 25, 24, 26}, {
          40, 60, 3, 0, 26, 3, 0, 25}, {16, 1, 25, 26}, {16, 0, 26, 25}, {19, 
          1, 26}, {40, 56, 3, 0, 1, 3, 0, 24}, {10, 1, 27}, {16, 27, 24, 
          27}, {19, 27, 24}, {10, 0, 27}, {13, 27, 26, 24, 27}, {40, 60, 3, 0,
           27, 3, 0, 26}, {16, 1, 26, 27}, {16, 0, 27, 26}, {40, 56, 3, 0, 1, 
          3, 0, 27}, {19, 27, 24}, {10, 0, 27}, {13, 27, 24, 27}, {10, 0, 
          24}, {13, 24, 1, 24}, {19, 1, 21}, {40, 56, 3, 0, 1, 3, 0, 22}, {10,
           1, 28}, {16, 28, 22, 28}, {19, 28, 22}, {10, 0, 28}, {13, 28, 21, 
          22, 28}, {16, 24, 28, 24}, {40, 60, 3, 0, 24, 3, 0, 28}, {16, 27, 
          28, 27}, {16, 0, 27, 28}, {10, 0, 27}, {13, 27, 1, 27}, {10, 1, 
          24}, {16, 24, 27, 24}, {40, 60, 3, 0, 24, 3, 0, 27}, {16, 0, 27, 
          24}, {10, 9, 27}, {10, 9, 21}, {10, 9, 22}, {10, 9, 32}, {34, 2, 3, 
          3, 30, 25, 27, 26, 28, 21, 22, 32, 24, 3, 14}, {
          42, "CopyTensor", 3, 2, 14, 3, 2, 3}, {
          42, "Transpose", 3, 2, 5, 3, 2, 14}, {
          42, "Dot", 3, 2, 14, 3, 2, 3, 2, 0, 10, 3, 2, 13}, {
          42, "Dot", 3, 2, 13, 3, 2, 5, 2, 0, 10, 3, 2, 14}, {41, 259, 3, 0, 
          29, 3, 2, 14, 3, 2, 13}, {42, "CopyTensor", 3, 2, 13, 3, 2, 12}, {
          1}, {1}}, 
         Function[{$CellContext`nodes, $CellContext`Ey, $CellContext`\[Nu], \
$CellContext`\[Xi], $CellContext`\[Eta]}, 
          
          Module[{$CellContext`x1 = 
            Part[$CellContext`nodes, 1, 1], $CellContext`x2 = 
            Part[$CellContext`nodes, 2, 1], $CellContext`x3 = 
            Part[$CellContext`nodes, 3, 1], $CellContext`x4 = 
            Part[$CellContext`nodes, 4, 1], $CellContext`x5 = 
            Part[$CellContext`nodes, 5, 1], $CellContext`x6 = 
            Part[$CellContext`nodes, 6, 1], $CellContext`x7 = 
            Part[$CellContext`nodes, 7, 1], $CellContext`x8 = 
            Part[$CellContext`nodes, 8, 1], $CellContext`y1 = 
            Part[$CellContext`nodes, 1, 2], $CellContext`y2 = 
            Part[$CellContext`nodes, 2, 2], $CellContext`y3 = 
            Part[$CellContext`nodes, 3, 2], $CellContext`y4 = 
            Part[$CellContext`nodes, 4, 2], $CellContext`y5 = 
            Part[$CellContext`nodes, 5, 2], $CellContext`y6 = 
            Part[$CellContext`nodes, 6, 2], $CellContext`y7 = 
            Part[$CellContext`nodes, 7, 2], $CellContext`y8 = 
            Part[$CellContext`nodes, 8, 2], $CellContext`Jmat = 
            ConstantArray[0., {4, 4}], $CellContext`\[CapitalGamma] = 
            ConstantArray[0., {4, 4}], $CellContext`Dmat = 
            ConstantArray[0., {4, 16}], $CellContext`B = 
            ConstantArray[0., {3, 16}], $CellContext`Cmat = 
            ConstantArray[0., {3, 3}], $CellContext`J = 0., $CellContext`out = 
            ConstantArray[
             0., {8, 8}]}, $CellContext`Jmat = {{(1/
                4) ($CellContext`x1 $CellContext`\[Eta] - $CellContext`x2 \
$CellContext`\[Eta] + $CellContext`x3 $CellContext`\[Eta] - $CellContext`x4 \
$CellContext`\[Eta] - $CellContext`x1 $CellContext`\[Eta]^2 + $CellContext`x2 \
$CellContext`\[Eta]^2 + $CellContext`x3 $CellContext`\[Eta]^2 - \
$CellContext`x4 $CellContext`\[Eta]^2 - (
                 2 $CellContext`x6) (-1 + $CellContext`\[Eta]^2) + (
                  2 $CellContext`x8) (-1 + $CellContext`\[Eta]^2) + (
                  2 $CellContext`x1) $CellContext`\[Xi] + (
                  2 $CellContext`x2) $CellContext`\[Xi] + (
                  2 $CellContext`x3) $CellContext`\[Xi] + (
                  2 $CellContext`x4) $CellContext`\[Xi] - (
                 4 $CellContext`x5) $CellContext`\[Xi] - (
                 4 $CellContext`x7) $CellContext`\[Xi] - ((
                  2 $CellContext`x1) $CellContext`\[Eta]) $CellContext`\[Xi] - \
((2 $CellContext`x2) $CellContext`\[Eta]) $CellContext`\[Xi] + ((
                   2 $CellContext`x3) $CellContext`\[Eta]) $CellContext`\[Xi] + \
((2 $CellContext`x4) $CellContext`\[Eta]) $CellContext`\[Xi] + ((
                   4 $CellContext`x5) $CellContext`\[Eta]) $CellContext`\[Xi] - \
((4 $CellContext`x7) $CellContext`\[Eta]) $CellContext`\[Xi]), (1/
                4) ((2 $CellContext`x1) $CellContext`\[Eta] + (
                  2 $CellContext`x2) $CellContext`\[Eta] + (
                  2 $CellContext`x3) $CellContext`\[Eta] + (
                  2 $CellContext`x4) $CellContext`\[Eta] - (
                 4 $CellContext`x6) $CellContext`\[Eta] - (
                 4 $CellContext`x8) $CellContext`\[Eta] + $CellContext`x1 \
$CellContext`\[Xi] - $CellContext`x2 $CellContext`\[Xi] + $CellContext`x3 \
$CellContext`\[Xi] - $CellContext`x4 $CellContext`\[Xi] - ((
                  2 $CellContext`x1) $CellContext`\[Eta]) $CellContext`\[Xi] + \
((2 $CellContext`x2) $CellContext`\[Eta]) $CellContext`\[Xi] + ((
                   2 $CellContext`x3) $CellContext`\[Eta]) $CellContext`\[Xi] - \
((2 $CellContext`x4) $CellContext`\[Eta]) $CellContext`\[Xi] - ((
                  4 $CellContext`x6) $CellContext`\[Eta]) $CellContext`\[Xi] + \
((4 $CellContext`x8) $CellContext`\[Eta]) $CellContext`\[Xi] - \
$CellContext`x1 $CellContext`\[Xi]^2 - $CellContext`x2 $CellContext`\[Xi]^2 + \
$CellContext`x3 $CellContext`\[Xi]^2 + $CellContext`x4 $CellContext`\[Xi]^2 + \
(2 $CellContext`x5) (-1 + $CellContext`\[Xi]^2) - (
                 2 $CellContext`x7) (-1 + $CellContext`\[Xi]^2))}, {(1/
                4) ($CellContext`y1 $CellContext`\[Eta] - $CellContext`y2 \
$CellContext`\[Eta] + $CellContext`y3 $CellContext`\[Eta] - $CellContext`y4 \
$CellContext`\[Eta] - $CellContext`y1 $CellContext`\[Eta]^2 + $CellContext`y2 \
$CellContext`\[Eta]^2 + $CellContext`y3 $CellContext`\[Eta]^2 - \
$CellContext`y4 $CellContext`\[Eta]^2 - (
                 2 $CellContext`y6) (-1 + $CellContext`\[Eta]^2) + (
                  2 $CellContext`y8) (-1 + $CellContext`\[Eta]^2) + (
                  2 $CellContext`y1) $CellContext`\[Xi] + (
                  2 $CellContext`y2) $CellContext`\[Xi] + (
                  2 $CellContext`y3) $CellContext`\[Xi] + (
                  2 $CellContext`y4) $CellContext`\[Xi] - (
                 4 $CellContext`y5) $CellContext`\[Xi] - (
                 4 $CellContext`y7) $CellContext`\[Xi] - ((
                  2 $CellContext`y1) $CellContext`\[Eta]) $CellContext`\[Xi] - \
((2 $CellContext`y2) $CellContext`\[Eta]) $CellContext`\[Xi] + ((
                   2 $CellContext`y3) $CellContext`\[Eta]) $CellContext`\[Xi] + \
((2 $CellContext`y4) $CellContext`\[Eta]) $CellContext`\[Xi] + ((
                   4 $CellContext`y5) $CellContext`\[Eta]) $CellContext`\[Xi] - \
((4 $CellContext`y7) $CellContext`\[Eta]) $CellContext`\[Xi]), (1/
                4) ((2 $CellContext`y1) $CellContext`\[Eta] + (
                  2 $CellContext`y2) $CellContext`\[Eta] + (2 $CellContext`y3)
                   $CellContext`\[Eta] + (
                  2 $CellContext`y4) $CellContext`\[Eta] - (
                 4 $CellContext`y6) $CellContext`\[Eta] - (
                 4 $CellContext`y8) $CellContext`\[Eta] + $CellContext`y1 \
$CellContext`\[Xi] - $CellContext`y2 $CellContext`\[Xi] + $CellContext`y3 \
$CellContext`\[Xi] - $CellContext`y4 $CellContext`\[Xi] - ((
                  2 $CellContext`y1) $CellContext`\[Eta]) $CellContext`\[Xi] + \
((2 $CellContext`y2) $CellContext`\[Eta]) $CellContext`\[Xi] + ((
                   2 $CellContext`y3) $CellContext`\[Eta]) $CellContext`\[Xi] - \
((2 $CellContext`y4) $CellContext`\[Eta]) $CellContext`\[Xi] - ((
                  4 $CellContext`y6) $CellContext`\[Eta]) $CellContext`\[Xi] + \
((4 $CellContext`y8) $CellContext`\[Eta]) $CellContext`\[Xi] - \
$CellContext`y1 $CellContext`\[Xi]^2 - $CellContext`y2 $CellContext`\[Xi]^2 + \
$CellContext`y3 $CellContext`\[Xi]^2 + $CellContext`y4 $CellContext`\[Xi]^2 + \
(2 $CellContext`y5) (-1 + $CellContext`\[Xi]^2) - (
                 2 $CellContext`y7) (-1 + $CellContext`\[Xi]^2))}}; \
$CellContext`J = Det[$CellContext`Jmat]; $CellContext`\[CapitalGamma] = 
            Inverse[$CellContext`Jmat]; $CellContext`Dmat = {{$CellContext`\
\[Eta]/4 - $CellContext`\[Eta]^2/
               4 + $CellContext`\[Xi]/
                2 - ($CellContext`\[Eta] $CellContext`\[Xi])/2, 
               0, -($CellContext`\[Eta]/4) + $CellContext`\[Eta]^2/
                4 + $CellContext`\[Xi]/
                2 - ($CellContext`\[Eta] $CellContext`\[Xi])/2, 
               0, $CellContext`\[Eta]/4 + $CellContext`\[Eta]^2/
                4 + $CellContext`\[Xi]/
                2 + ($CellContext`\[Eta] $CellContext`\[Xi])/2, 
               0, -($CellContext`\[Eta]/4) - $CellContext`\[Eta]^2/
               4 + $CellContext`\[Xi]/
                2 + ($CellContext`\[Eta] $CellContext`\[Xi])/2, 
               0, -$CellContext`\[Xi] + $CellContext`\[Eta] \
$CellContext`\[Xi], 0, 1/2 - $CellContext`\[Eta]^2/2, 
               0, -$CellContext`\[Xi] - $CellContext`\[Eta] \
$CellContext`\[Xi], 0, -(1/2) + $CellContext`\[Eta]^2/2, 
               0}, {$CellContext`\[Eta]/2 + $CellContext`\[Xi]/
                4 - ($CellContext`\[Eta] $CellContext`\[Xi])/
               2 - $CellContext`\[Xi]^2/4, 
               0, $CellContext`\[Eta]/2 - $CellContext`\[Xi]/
               4 + ($CellContext`\[Eta] $CellContext`\[Xi])/
                2 - $CellContext`\[Xi]^2/4, 
               0, $CellContext`\[Eta]/2 + $CellContext`\[Xi]/
                4 + ($CellContext`\[Eta] $CellContext`\[Xi])/
                2 + $CellContext`\[Xi]^2/4, 
               0, $CellContext`\[Eta]/2 - $CellContext`\[Xi]/
               4 - ($CellContext`\[Eta] $CellContext`\[Xi])/
               2 + $CellContext`\[Xi]^2/4, 0, -(1/2) + $CellContext`\[Xi]^2/2,
                0, -$CellContext`\[Eta] - $CellContext`\[Eta] $CellContext`\
\[Xi], 0, 1/2 - $CellContext`\[Xi]^2/2, 
               0, -$CellContext`\[Eta] + $CellContext`\[Eta] $CellContext`\
\[Xi], 0}, {0, $CellContext`\[Eta]/4 - $CellContext`\[Eta]^2/
               4 + $CellContext`\[Xi]/
                2 - ($CellContext`\[Eta] $CellContext`\[Xi])/2, 
               0, -($CellContext`\[Eta]/4) + $CellContext`\[Eta]^2/
                4 + $CellContext`\[Xi]/
                2 - ($CellContext`\[Eta] $CellContext`\[Xi])/2, 
               0, $CellContext`\[Eta]/4 + $CellContext`\[Eta]^2/
                4 + $CellContext`\[Xi]/
                2 + ($CellContext`\[Eta] $CellContext`\[Xi])/2, 
               0, -($CellContext`\[Eta]/4) - $CellContext`\[Eta]^2/
               4 + $CellContext`\[Xi]/
                2 + ($CellContext`\[Eta] $CellContext`\[Xi])/2, 
               0, -$CellContext`\[Xi] + $CellContext`\[Eta] \
$CellContext`\[Xi], 0, 1/2 - $CellContext`\[Eta]^2/2, 
               0, -$CellContext`\[Xi] - $CellContext`\[Eta] \
$CellContext`\[Xi], 0, -(1/2) + $CellContext`\[Eta]^2/2}, {
              0, $CellContext`\[Eta]/2 + $CellContext`\[Xi]/
                4 - ($CellContext`\[Eta] $CellContext`\[Xi])/
               2 - $CellContext`\[Xi]^2/4, 
               0, $CellContext`\[Eta]/2 - $CellContext`\[Xi]/
               4 + ($CellContext`\[Eta] $CellContext`\[Xi])/
                2 - $CellContext`\[Xi]^2/4, 
               0, $CellContext`\[Eta]/2 + $CellContext`\[Xi]/
                4 + ($CellContext`\[Eta] $CellContext`\[Xi])/
                2 + $CellContext`\[Xi]^2/4, 
               0, $CellContext`\[Eta]/2 - $CellContext`\[Xi]/
               4 - ($CellContext`\[Eta] $CellContext`\[Xi])/
               2 + $CellContext`\[Xi]^2/4, 0, -(1/2) + $CellContext`\[Xi]^2/2,
                0, -$CellContext`\[Eta] - $CellContext`\[Eta] $CellContext`\
\[Xi], 0, 1/2 - $CellContext`\[Xi]^2/2, 
               
               0, -$CellContext`\[Eta] + $CellContext`\[Eta] $CellContext`\
\[Xi]}}; $CellContext`B = Dot[{{
                Part[$CellContext`\[CapitalGamma], 1, 1], 
                Part[$CellContext`\[CapitalGamma], 1, 2], 0, 0}, {0, 0, 
                Part[$CellContext`\[CapitalGamma], 2, 1], 
                Part[$CellContext`\[CapitalGamma], 2, 2]}, {
                Part[$CellContext`\[CapitalGamma], 2, 1], 
                Part[$CellContext`\[CapitalGamma], 2, 2], 
                Part[$CellContext`\[CapitalGamma], 1, 1], 
                
                Part[$CellContext`\[CapitalGamma], 1, 
                 2]}}, $CellContext`Dmat]; $CellContext`Cmat = \
{{$CellContext`Ey ((1 - $CellContext`\[Nu]^2)/((1 + $CellContext`\[Nu]) (
                 1 - $CellContext`\[Nu] - 
                 2 $CellContext`\[Nu]^2))), $CellContext`Ey ($CellContext`\
\[Nu]/(1 - $CellContext`\[Nu] - 2 $CellContext`\[Nu]^2)), 
               0}, {$CellContext`Ey ($CellContext`\[Nu]/(
                1 - $CellContext`\[Nu] - 
                2 $CellContext`\[Nu]^2)), $CellContext`Ey ((
                 1 - $CellContext`\[Nu]^2)/((1 + $CellContext`\[Nu]) (
                 1 - $CellContext`\[Nu] - 2 $CellContext`\[Nu]^2))), 0}, {
              0, 0, $CellContext`Ey/(2 (1 + $CellContext`\[Nu]))}}; Return[Dot[
               
               Transpose[$CellContext`B], $CellContext`Cmat, $CellContext`B] \
$CellContext`J]]], Evaluate], $CellContext`Q8ElemStiffStrainFull = 
       CompiledFunction[{10, 11., 5468}, {{
           Blank[Real], 2}, 
          Blank[Real], 
          Blank[Real], 
          Blank[Real]}, {{3, 2, 0}, {3, 0, 0}, {3, 0, 1}, {3, 0, 2}, {3, 2, 
         2}}, {{25, {2, 0, 6}}, {0, {2, 0, 2}}, {
          64, {2, 0, 0}}, {{8, 8}, {2, 1, 1}}, {5, {2, 0, 5}}, {
          40, {2, 0, 3}}, {3, {2, 0, 4}}, {0., {3, 0, 3}}, {81, {2, 0, 1}}}, {
         0, 7, 10, 0, 
         14}, {{47, ConstantArray, 3, 0, 3, 2, 1, 1, 3, 2, 4}, {10, 1, 4}, {
          40, 60, 3, 0, 4, 3, 0, 8}, {10, 0, 4}, {16, 4, 8, 4}, {
          47, $CellContext`BCBJQ8Strain, 3, 2, 0, 3, 0, 0, 3, 0, 1, 2, 0, 2, 
           2, 0, 2, 3, 2, 5}, {41, 259, 3, 0, 4, 3, 2, 5, 3, 2, 3}, {10, 1, 
          4}, {40, 60, 3, 0, 4, 3, 0, 8}, {10, 3, 4}, {16, 4, 8, 4}, {10, 5, 
          8}, {40, 60, 3, 0, 8, 3, 0, 9}, {10, 4, 8}, {16, 8, 9, 8}, {40, 57, 
          3, 0, 8, 3, 0, 9}, {19, 9, 8}, {
          47, $CellContext`BCBJQ8Strain, 3, 2, 0, 3, 0, 0, 3, 0, 1, 2, 0, 2, 
           3, 0, 8, 3, 2, 6}, {41, 259, 3, 0, 4, 3, 2, 6, 3, 2, 5}, {10, 1, 
          4}, {40, 60, 3, 0, 4, 3, 0, 8}, {10, 3, 4}, {16, 4, 8, 4}, {10, 5, 
          8}, {40, 60, 3, 0, 8, 3, 0, 5}, {10, 4, 8}, {16, 8, 5, 8}, {40, 57, 
          3, 0, 8, 3, 0, 5}, {
          47, $CellContext`BCBJQ8Strain, 3, 2, 0, 3, 0, 0, 3, 0, 1, 2, 0, 2, 
           3, 0, 5, 3, 2, 7}, {41, 259, 3, 0, 4, 3, 2, 7, 3, 2, 6}, {10, 1, 
          4}, {40, 60, 3, 0, 4, 3, 0, 5}, {10, 3, 4}, {16, 4, 5, 4}, {10, 5, 
          5}, {40, 60, 3, 0, 5, 3, 0, 8}, {10, 4, 5}, {16, 5, 8, 5}, {40, 57, 
          3, 0, 5, 3, 0, 8}, {19, 8, 5}, {
          47, $CellContext`BCBJQ8Strain, 3, 2, 0, 3, 0, 0, 3, 0, 1, 3, 0, 5, 
           2, 0, 2, 3, 2, 8}, {41, 259, 3, 0, 4, 3, 2, 8, 3, 2, 7}, {10, 1, 
          4}, {40, 60, 3, 0, 4, 3, 0, 5}, {10, 6, 4}, {16, 4, 5, 4}, {10, 5, 
          5}, {40, 60, 3, 0, 5, 3, 0, 8}, {10, 4, 5}, {16, 5, 8, 5}, {40, 57, 
          3, 0, 5, 3, 0, 8}, {19, 8, 5}, {10, 5, 8}, {40, 60, 3, 0, 8, 3, 0, 
          6}, {10, 4, 8}, {16, 8, 6, 8}, {40, 57, 3, 0, 8, 3, 0, 6}, {19, 6, 
          8}, {47, $CellContext`BCBJQ8Strain, 3, 2, 0, 3, 0, 0, 3, 0, 1, 3, 0,
            5, 3, 0, 8, 3, 2, 9}, {41, 259, 3, 0, 4, 3, 2, 9, 3, 2, 8}, {10, 
          1, 4}, {40, 60, 3, 0, 4, 3, 0, 5}, {10, 6, 4}, {16, 4, 5, 4}, {10, 
          5, 5}, {40, 60, 3, 0, 5, 3, 0, 6}, {10, 4, 5}, {16, 5, 6, 5}, {40, 
          57, 3, 0, 5, 3, 0, 6}, {19, 6, 5}, {10, 5, 6}, {40, 60, 3, 0, 6, 3, 
          0, 8}, {10, 4, 6}, {16, 6, 8, 6}, {40, 57, 3, 0, 6, 3, 0, 8}, {
          47, $CellContext`BCBJQ8Strain, 3, 2, 0, 3, 0, 0, 3, 0, 1, 3, 0, 5, 
           3, 0, 8, 3, 2, 10}, {41, 259, 3, 0, 4, 3, 2, 10, 3, 2, 9}, {10, 1, 
          4}, {40, 60, 3, 0, 4, 3, 0, 5}, {10, 3, 4}, {16, 4, 5, 4}, {10, 5, 
          8}, {40, 60, 3, 0, 8, 3, 0, 5}, {10, 4, 8}, {16, 8, 5, 8}, {40, 57, 
          3, 0, 8, 3, 0, 5}, {
          47, $CellContext`BCBJQ8Strain, 3, 2, 0, 3, 0, 0, 3, 0, 1, 3, 0, 5, 
           2, 0, 2, 3, 2, 11}, {41, 259, 3, 0, 4, 3, 2, 11, 3, 2, 10}, {10, 1,
           4}, {40, 60, 3, 0, 4, 3, 0, 5}, {10, 6, 4}, {16, 4, 5, 4}, {10, 5, 
          8}, {40, 60, 3, 0, 8, 3, 0, 5}, {10, 4, 8}, {16, 8, 5, 8}, {40, 57, 
          3, 0, 8, 3, 0, 5}, {10, 5, 8}, {40, 60, 3, 0, 8, 3, 0, 6}, {10, 4, 
          8}, {16, 8, 6, 8}, {40, 57, 3, 0, 8, 3, 0, 6}, {19, 6, 8}, {
          47, $CellContext`BCBJQ8Strain, 3, 2, 0, 3, 0, 0, 3, 0, 1, 3, 0, 5, 
           3, 0, 8, 3, 2, 12}, {41, 259, 3, 0, 4, 3, 2, 12, 3, 2, 11}, {10, 1,
           4}, {40, 60, 3, 0, 4, 3, 0, 5}, {10, 6, 4}, {16, 4, 5, 4}, {10, 5, 
          8}, {40, 60, 3, 0, 8, 3, 0, 6}, {10, 4, 8}, {16, 8, 6, 8}, {40, 57, 
          3, 0, 8, 3, 0, 6}, {10, 5, 8}, {40, 60, 3, 0, 8, 3, 0, 7}, {10, 4, 
          8}, {16, 8, 7, 8}, {40, 57, 3, 0, 8, 3, 0, 7}, {
          47, $CellContext`BCBJQ8Strain, 3, 2, 0, 3, 0, 0, 3, 0, 1, 3, 0, 6, 
           3, 0, 7, 3, 2, 13}, {41, 259, 3, 0, 4, 3, 2, 13, 3, 2, 12}, {44, 3,
           5, 6, 7, 8, 9, 10, 11, 12, 3}, {41, 259, 3, 0, 2, 3, 2, 3, 3, 2, 
          5}, {42, "CopyTensor", 3, 2, 5, 3, 2, 4}, {
          42, "CopyTensor", 3, 2, 4, 3, 2, 2}, {1}, {1}}, 
         Function[{$CellContext`nodes, $CellContext`Ey, $CellContext`\[Nu], \
$CellContext`he}, 
          
          Module[{$CellContext`out = 
            ConstantArray[
             0., {8, 8}]}, $CellContext`out = $CellContext`he ((64/
                81) $CellContext`BCBJQ8Strain[$CellContext`nodes, \
$CellContext`Ey, $CellContext`\[Nu], 0, 0] + (40/
                81) $CellContext`BCBJQ8Strain[$CellContext`nodes, \
$CellContext`Ey, $CellContext`\[Nu], 0, -Sqrt[3/5]] + (40/
                81) $CellContext`BCBJQ8Strain[$CellContext`nodes, \
$CellContext`Ey, $CellContext`\[Nu], 0, 
                 Sqrt[3/5]] + (40/
                81) $CellContext`BCBJQ8Strain[$CellContext`nodes, \
$CellContext`Ey, $CellContext`\[Nu], -Sqrt[3/5], 0] + (25/
                81) $CellContext`BCBJQ8Strain[$CellContext`nodes, \
$CellContext`Ey, $CellContext`\[Nu], -Sqrt[3/5], -Sqrt[3/5]] + (25/
                81) $CellContext`BCBJQ8Strain[$CellContext`nodes, \
$CellContext`Ey, $CellContext`\[Nu], -Sqrt[3/5], 
                 Sqrt[3/5]] + (40/
                81) $CellContext`BCBJQ8Strain[$CellContext`nodes, \
$CellContext`Ey, $CellContext`\[Nu], 
                 Sqrt[3/5], 0] + (25/
                81) $CellContext`BCBJQ8Strain[$CellContext`nodes, \
$CellContext`Ey, $CellContext`\[Nu], 
                 Sqrt[3/5], -Sqrt[3/5]] + (25/
                81) $CellContext`BCBJQ8Strain[$CellContext`nodes, \
$CellContext`Ey, $CellContext`\[Nu], 
                 Sqrt[3/5], 
                 Sqrt[3/5]]); Return[$CellContext`out]]], 
         Evaluate], $CellContext`Q4ElemStiffStressReduced = 
       CompiledFunction[{10, 11., 5468}, {{
           Blank[Real], 2}, 
          Blank[Real], 
          Blank[Real], 
          Blank[Real]}, {{3, 2, 0}, {3, 0, 0}, {3, 0, 1}, {3, 0, 2}, {3, 2, 
         2}}, {{0, {2, 0, 1}}, {4, {2, 0, 0}}, {{8, 8}, {2, 1, 1}}, {
          0., {3, 0, 3}}}, {0, 2, 7, 0, 
         6}, {{47, ConstantArray, 3, 0, 3, 2, 1, 1, 3, 2, 3}, {10, 0, 4}, {16,
           4, 2, 4}, {
          47, $CellContext`BCBJQ4Stress, 3, 2, 0, 3, 0, 0, 3, 0, 1, 2, 0, 1, 
           2, 0, 1, 3, 2, 5}, {41, 259, 3, 0, 4, 3, 2, 5, 3, 2, 4}, {
          42, "CopyTensor", 3, 2, 4, 3, 2, 3}, {
          42, "CopyTensor", 3, 2, 3, 3, 2, 2}, {1}, {1}}, 
         Function[{$CellContext`nodes, $CellContext`Ey, $CellContext`\[Nu], \
$CellContext`he}, 
          
          Module[{$CellContext`out = 
            ConstantArray[
             0., {8, 8}]}, $CellContext`out = (
              4 $CellContext`he) \
$CellContext`BCBJQ4Stress[$CellContext`nodes, $CellContext`Ey, $CellContext`\
\[Nu], 0, 0]; Return[$CellContext`out]]], 
         Evaluate], $CellContext`BCBJQ4Stress = 
       CompiledFunction[{10, 11., 5468}, {{
           Blank[Real], 2}, 
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real]}, {{3, 2, 0}, {3, 0, 0}, {3, 0, 1}, {3, 0, 2}, {3, 0, 
         3}, {3, 2, 
         12}}, {{{3, 16}, {2, 1, 6}}, {0, {2, 0, 5}}, {
          4, {2, 0, 3}}, {{8, 8}, {2, 1, 10}}, {{4, 4}, {2, 1, 1}}, {{4, 
           16}, {2, 1, 4}}, {{3, 3}, {2, 1, 8}}, {
          2, {2, 0, 1}}, {-1, {2, 0, 4}}, {12, {2, 0, 6}}, {1, {2, 0, 0}}, {
          3, {2, 0, 2}}, {0., {3, 0, 12}}}, {0, 7, 46, 0, 
         15}, {{38, 0, 0, 0, 0, 0, 0, 11}, {38, 0, 0, 1, 0, 0, 0, 10}, {38, 0,
           0, 2, 0, 0, 0, 9}, {38, 0, 0, 3, 0, 0, 0, 8}, {38, 0, 0, 0, 0, 1, 
          0, 7}, {38, 0, 0, 1, 0, 1, 0, 6}, {38, 0, 0, 2, 0, 1, 0, 5}, {38, 0,
           0, 3, 0, 1, 0, 4}, {
          47, ConstantArray, 3, 0, 12, 2, 1, 1, 3, 2, 11}, {
          47, ConstantArray, 3, 0, 12, 2, 1, 1, 3, 2, 9}, {
          47, ConstantArray, 3, 0, 12, 2, 1, 4, 3, 2, 7}, {
          47, ConstantArray, 3, 0, 12, 2, 1, 6, 3, 2, 5}, {
          47, ConstantArray, 3, 0, 12, 2, 1, 8, 3, 2, 3}, {7, 12, 15}, {
          47, ConstantArray, 3, 0, 12, 2, 1, 10, 3, 2, 2}, {10, 3, 13}, {40, 
          60, 3, 0, 13, 3, 0, 14}, {10, 4, 13}, {13, 13, 3, 13}, {16, 11, 13, 
          16}, {16, 10, 3, 13}, {19, 13, 19}, {19, 8, 13}, {13, 9, 13, 21}, {
          10, 0, 13}, {13, 13, 3, 13}, {16, 21, 13, 21}, {13, 10, 16, 19, 21, 
          13}, {16, 14, 13, 14}, {10, 3, 13}, {40, 60, 3, 0, 13, 3, 0, 16}, {
          10, 4, 13}, {13, 13, 2, 13}, {16, 11, 13, 19}, {16, 9, 2, 13}, {16, 
          8, 2, 21}, {19, 21, 20}, {10, 0, 21}, {13, 21, 2, 21}, {16, 10, 21, 
          18}, {19, 18, 21}, {13, 9, 8, 19, 13, 20, 21, 18}, {16, 16, 18, 
          16}, {10, 3, 18}, {40, 60, 3, 0, 18, 3, 0, 19}, {10, 4, 18}, {13, 
          18, 3, 18}, {16, 7, 18, 13}, {16, 6, 3, 18}, {19, 18, 20}, {19, 4, 
          18}, {13, 5, 18, 21}, {10, 0, 18}, {13, 18, 3, 18}, {16, 21, 18, 
          21}, {13, 6, 13, 20, 21, 18}, {16, 19, 18, 19}, {10, 3, 18}, {40, 
          60, 3, 0, 18, 3, 0, 13}, {10, 4, 18}, {13, 18, 2, 18}, {16, 7, 18, 
          20}, {16, 5, 2, 18}, {16, 4, 2, 21}, {19, 21, 17}, {10, 0, 21}, {13,
           21, 2, 21}, {16, 6, 21, 23}, {19, 23, 21}, {13, 5, 4, 20, 18, 17, 
          21, 23}, {16, 13, 23, 13}, {34, 2, 2, 2, 14, 16, 19, 13, 3, 13}, {
          42, "CopyTensor", 3, 2, 13, 3, 2, 11}, {
          47, Det, 3, 2, 11, 3, 0, 14}, {7, 14, 15}, {
          47, Inverse, 3, 2, 11, 3, 2, 13}, {
          42, "CopyTensor", 3, 2, 13, 3, 2, 9}, {10, 3, 14}, {40, 60, 3, 0, 
          14, 3, 0, 16}, {10, 4, 14}, {13, 14, 3, 14}, {16, 16, 14, 16}, {19, 
          3, 14}, {10, 0, 19}, {13, 19, 14, 19}, {10, 3, 14}, {40, 60, 3, 0, 
          14, 3, 0, 13}, {16, 19, 13, 19}, {10, 0, 13}, {13, 13, 3, 13}, {10, 
          3, 14}, {40, 60, 3, 0, 14, 3, 0, 23}, {16, 13, 23, 13}, {10, 3, 
          23}, {40, 60, 3, 0, 23, 3, 0, 14}, {19, 3, 23}, {10, 4, 20}, {13, 
          20, 23, 20}, {16, 14, 20, 14}, {10, 3, 20}, {40, 60, 3, 0, 20, 3, 0,
           23}, {10, 4, 20}, {13, 20, 2, 20}, {16, 23, 20, 23}, {10, 3, 20}, {
          40, 60, 3, 0, 20, 3, 0, 18}, {19, 2, 20}, {10, 4, 17}, {13, 17, 20, 
          17}, {16, 18, 17, 18}, {10, 0, 17}, {13, 17, 2, 17}, {10, 3, 20}, {
          40, 60, 3, 0, 20, 3, 0, 21}, {16, 17, 21, 17}, {19, 2, 21}, {10, 0, 
          20}, {13, 20, 21, 20}, {10, 3, 21}, {40, 60, 3, 0, 21, 3, 0, 24}, {
          16, 20, 24, 20}, {10, 3, 24}, {40, 60, 3, 0, 24, 3, 0, 21}, {10, 4, 
          24}, {13, 24, 3, 24}, {16, 21, 24, 21}, {19, 3, 24}, {10, 0, 22}, {
          13, 22, 24, 22}, {10, 3, 24}, {40, 60, 3, 0, 24, 3, 0, 25}, {16, 22,
           25, 22}, {10, 0, 25}, {13, 25, 3, 25}, {10, 3, 24}, {40, 60, 3, 0, 
          24, 3, 0, 27}, {16, 25, 27, 25}, {10, 3, 27}, {40, 60, 3, 0, 27, 3, 
          0, 24}, {19, 3, 27}, {10, 4, 28}, {13, 28, 27, 28}, {16, 24, 28, 
          24}, {10, 3, 28}, {40, 60, 3, 0, 28, 3, 0, 27}, {10, 4, 28}, {13, 
          28, 2, 28}, {16, 27, 28, 27}, {10, 3, 28}, {40, 60, 3, 0, 28, 3, 0, 
          26}, {19, 2, 28}, {10, 4, 30}, {13, 30, 28, 30}, {16, 26, 30, 26}, {
          10, 0, 30}, {13, 30, 2, 30}, {10, 3, 28}, {40, 60, 3, 0, 28, 3, 0, 
          29}, {16, 30, 29, 30}, {19, 2, 29}, {10, 0, 28}, {13, 28, 29, 28}, {
          10, 3, 29}, {40, 60, 3, 0, 29, 3, 0, 31}, {16, 28, 31, 28}, {10, 5, 
          31}, {10, 5, 29}, {10, 5, 32}, {10, 5, 33}, {10, 5, 34}, {10, 5, 
          35}, {10, 5, 36}, {10, 5, 37}, {10, 5, 38}, {10, 5, 39}, {10, 5, 
          40}, {10, 5, 41}, {10, 5, 42}, {10, 5, 43}, {10, 5, 44}, {10, 5, 
          45}, {34, 2, 4, 8, 16, 31, 19, 29, 13, 32, 14, 33, 23, 34, 18, 35, 
          17, 36, 20, 37, 38, 21, 39, 22, 40, 25, 41, 24, 42, 27, 43, 26, 44, 
          30, 45, 28, 3, 13}, {42, "CopyTensor", 3, 2, 13, 3, 2, 7}, {38, 9, 
          0, 0, 0, 0, 0, 16}, {38, 9, 0, 0, 0, 1, 0, 19}, {38, 9, 0, 1, 0, 0, 
          0, 13}, {38, 9, 0, 1, 0, 1, 0, 14}, {38, 9, 0, 1, 0, 0, 0, 23}, {38,
           9, 0, 1, 0, 1, 0, 18}, {38, 9, 0, 0, 0, 0, 0, 17}, {38, 9, 0, 0, 0,
           1, 0, 20}, {10, 5, 21}, {10, 5, 22}, {10, 5, 25}, {10, 5, 24}, {34,
           2, 3, 4, 16, 19, 21, 22, 25, 24, 13, 14, 23, 18, 17, 20, 3, 13}, {
          42, "Dot", 3, 2, 13, 3, 2, 7, 2, 0, 6, 3, 2, 14}, {
          42, "CopyTensor", 3, 2, 14, 3, 2, 5}, {40, 56, 3, 0, 1, 3, 0, 16}, {
          19, 16, 19}, {10, 0, 16}, {13, 16, 19, 16}, {40, 60, 3, 0, 16, 3, 0,
           19}, {16, 0, 19, 16}, {40, 56, 3, 0, 1, 3, 0, 19}, {19, 19, 13}, {
          10, 0, 19}, {13, 19, 13, 19}, {40, 60, 3, 0, 19, 3, 0, 13}, {16, 0, 
          13, 19}, {16, 1, 19, 13}, {40, 56, 3, 0, 1, 3, 0, 19}, {19, 19, 
          14}, {10, 0, 19}, {13, 19, 14, 19}, {40, 60, 3, 0, 19, 3, 0, 14}, {
          16, 0, 14, 19}, {16, 1, 19, 14}, {40, 56, 3, 0, 1, 3, 0, 19}, {19, 
          19, 23}, {10, 0, 19}, {13, 19, 23, 19}, {40, 60, 3, 0, 19, 3, 0, 
          23}, {16, 0, 23, 19}, {10, 0, 23}, {13, 23, 1, 23}, {10, 1, 18}, {
          16, 18, 23, 18}, {40, 60, 3, 0, 18, 3, 0, 23}, {16, 0, 23, 18}, {10,
           5, 23}, {10, 5, 17}, {10, 5, 20}, {10, 5, 21}, {34, 2, 3, 3, 16, 
          13, 23, 14, 19, 17, 20, 21, 18, 3, 14}, {
          42, "CopyTensor", 3, 2, 14, 3, 2, 3}, {
          42, "Transpose", 3, 2, 5, 3, 2, 14}, {
          42, "Dot", 3, 2, 14, 3, 2, 3, 2, 0, 6, 3, 2, 13}, {
          42, "Dot", 3, 2, 13, 3, 2, 5, 2, 0, 6, 3, 2, 14}, {41, 259, 3, 0, 
          15, 3, 2, 14, 3, 2, 13}, {42, "CopyTensor", 3, 2, 13, 3, 2, 12}, {
          1}, {1}}, 
         Function[{$CellContext`nodes, $CellContext`Ey, $CellContext`\[Nu], \
$CellContext`\[Xi], $CellContext`\[Eta]}, 
          
          Module[{$CellContext`x1 = 
            Part[$CellContext`nodes, 1, 1], $CellContext`x2 = 
            Part[$CellContext`nodes, 2, 1], $CellContext`x3 = 
            Part[$CellContext`nodes, 3, 1], $CellContext`x4 = 
            Part[$CellContext`nodes, 4, 1], $CellContext`y1 = 
            Part[$CellContext`nodes, 1, 2], $CellContext`y2 = 
            Part[$CellContext`nodes, 2, 2], $CellContext`y3 = 
            Part[$CellContext`nodes, 3, 2], $CellContext`y4 = 
            Part[$CellContext`nodes, 4, 2], $CellContext`Jmat = 
            ConstantArray[0., {4, 4}], $CellContext`\[CapitalGamma] = 
            ConstantArray[0., {4, 4}], $CellContext`Dmat = 
            ConstantArray[0., {4, 16}], $CellContext`B = 
            ConstantArray[0., {3, 16}], $CellContext`Cmat = 
            ConstantArray[0., {3, 3}], $CellContext`J = 0., $CellContext`out = 
            ConstantArray[
             0., {8, 8}]}, $CellContext`Jmat = {{(1/
                4) ($CellContext`x2 + $CellContext`x1 (-1 + $CellContext`\
\[Eta]) - $CellContext`x2 $CellContext`\[Eta] + ($CellContext`x3 - \
$CellContext`x4) (1 + $CellContext`\[Eta])), (1/
                4) ($CellContext`x3 + $CellContext`x4 + $CellContext`x1 (-1 + \
$CellContext`\[Xi]) + $CellContext`x3 $CellContext`\[Xi] - $CellContext`x4 \
$CellContext`\[Xi] - $CellContext`x2 (1 + $CellContext`\[Xi]))}, {(1/
                4) ($CellContext`y2 + $CellContext`y1 (-1 + $CellContext`\
\[Eta]) - $CellContext`y2 $CellContext`\[Eta] + ($CellContext`y3 - \
$CellContext`y4) (1 + $CellContext`\[Eta])), (1/
                4) ($CellContext`y3 + $CellContext`y4 + $CellContext`y1 (-1 + \
$CellContext`\[Xi]) + $CellContext`y3 $CellContext`\[Xi] - $CellContext`y4 \
$CellContext`\[Xi] - $CellContext`y2 (
                 1 + $CellContext`\[Xi]))}}; $CellContext`J = 
            Det[$CellContext`Jmat]; $CellContext`\[CapitalGamma] = 
            Inverse[$CellContext`Jmat]; $CellContext`Dmat = {{(1/
                4) (-1 + $CellContext`\[Eta]), 0, (1 - $CellContext`\[Eta])/4,
                0, (1 + $CellContext`\[Eta])/4, 
               0, (1/4) (-1 - $CellContext`\[Eta]), 
               0}, {(1/4) (-1 + $CellContext`\[Xi]), 
               0, (1/4) (-1 - $CellContext`\[Xi]), 
               0, (1 + $CellContext`\[Xi])/4, 0, (1 - $CellContext`\[Xi])/4, 
               0}, {0, (1/4) (-1 + $CellContext`\[Eta]), 
               0, (1 - $CellContext`\[Eta])/4, 0, (1 + $CellContext`\[Eta])/4,
                0, (1/4) (-1 - $CellContext`\[Eta])}, {
              0, (1/4) (-1 + $CellContext`\[Xi]), 
               0, (1/4) (-1 - $CellContext`\[Xi]), 
               0, (1 + $CellContext`\[Xi])/4, 0, (1 - $CellContext`\[Xi])/
               4}}; $CellContext`B = Dot[{{
                Part[$CellContext`\[CapitalGamma], 1, 1], 
                Part[$CellContext`\[CapitalGamma], 1, 2], 0, 0}, {0, 0, 
                Part[$CellContext`\[CapitalGamma], 2, 1], 
                Part[$CellContext`\[CapitalGamma], 2, 2]}, {
                Part[$CellContext`\[CapitalGamma], 2, 1], 
                Part[$CellContext`\[CapitalGamma], 2, 2], 
                Part[$CellContext`\[CapitalGamma], 1, 1], 
                
                Part[$CellContext`\[CapitalGamma], 1, 
                 2]}}, $CellContext`Dmat]; $CellContext`Cmat = \
{{$CellContext`Ey/(
               1 - $CellContext`\[Nu]^2), $CellContext`\[Nu] \
($CellContext`Ey/(1 - $CellContext`\[Nu]^2)), 
               0}, {$CellContext`\[Nu] ($CellContext`Ey/(
                1 - $CellContext`\[Nu]^2)), $CellContext`Ey/(
               1 - $CellContext`\[Nu]^2), 0}, {
              0, 0, $CellContext`Ey/(2 (1 + $CellContext`\[Nu]))}}; Return[Dot[
               
               Transpose[$CellContext`B], $CellContext`Cmat, $CellContext`B] \
$CellContext`J]]], Evaluate], $CellContext`Q4ElemStiffStressFull = 
       CompiledFunction[{10, 11., 5468}, {{
           Blank[Real], 2}, 
          Blank[Real], 
          Blank[Real], 
          Blank[Real]}, {{3, 2, 0}, {3, 0, 0}, {3, 0, 1}, {3, 0, 2}, {3, 2, 
         2}}, {{{8, 8}, {2, 1, 1}}, {3, {2, 0, 0}}, {0., {3, 0, 3}}}, {0, 1, 
         9, 0, 9}, {{47, ConstantArray, 3, 0, 3, 2, 1, 1, 3, 2, 5}, {10, 0, 
          7}, {40, 60, 3, 0, 7, 3, 0, 4}, {40, 57, 3, 0, 4, 3, 0, 7}, {19, 7, 
          4}, {10, 0, 7}, {40, 60, 3, 0, 7, 3, 0, 5}, {40, 57, 3, 0, 5, 3, 0, 
          7}, {19, 7, 5}, {
          47, $CellContext`BCBJQ4Stress, 3, 2, 0, 3, 0, 0, 3, 0, 1, 3, 0, 4, 
           3, 0, 5, 3, 2, 6}, {10, 0, 4}, {40, 60, 3, 0, 4, 3, 0, 7}, {40, 57,
           3, 0, 7, 3, 0, 4}, {10, 0, 7}, {40, 60, 3, 0, 7, 3, 0, 5}, {40, 57,
           3, 0, 5, 3, 0, 7}, {19, 7, 5}, {
          47, $CellContext`BCBJQ4Stress, 3, 2, 0, 3, 0, 0, 3, 0, 1, 3, 0, 4, 
           3, 0, 5, 3, 2, 7}, {10, 0, 5}, {40, 60, 3, 0, 5, 3, 0, 4}, {40, 57,
           3, 0, 4, 3, 0, 5}, {19, 5, 4}, {10, 0, 5}, {40, 60, 3, 0, 5, 3, 0, 
          6}, {40, 57, 3, 0, 6, 3, 0, 5}, {
          47, $CellContext`BCBJQ4Stress, 3, 2, 0, 3, 0, 0, 3, 0, 1, 3, 0, 4, 
           3, 0, 5, 3, 2, 3}, {10, 0, 4}, {40, 60, 3, 0, 4, 3, 0, 5}, {40, 57,
           3, 0, 5, 3, 0, 4}, {10, 0, 5}, {40, 60, 3, 0, 5, 3, 0, 6}, {40, 57,
           3, 0, 6, 3, 0, 5}, {
          47, $CellContext`BCBJQ4Stress, 3, 2, 0, 3, 0, 0, 3, 0, 1, 3, 0, 4, 
           3, 0, 5, 3, 2, 8}, {44, 6, 7, 3, 8, 6}, {41, 259, 3, 0, 2, 3, 2, 6,
           3, 2, 7}, {42, "CopyTensor", 3, 2, 7, 3, 2, 5}, {
          42, "CopyTensor", 3, 2, 5, 3, 2, 2}, {1}, {1}}, 
         Function[{$CellContext`nodes, $CellContext`Ey, $CellContext`\[Nu], \
$CellContext`he}, 
          
          Module[{$CellContext`out = 
            ConstantArray[
             0., {8, 8}]}, $CellContext`out = $CellContext`he \
($CellContext`BCBJQ4Stress[$CellContext`nodes, $CellContext`Ey, $CellContext`\
\[Nu], -Sqrt[1/3], -
                Sqrt[1/3]] + $CellContext`BCBJQ4Stress[$CellContext`nodes, \
$CellContext`Ey, $CellContext`\[Nu], 
                Sqrt[1/3], -
                Sqrt[1/3]] + $CellContext`BCBJQ4Stress[$CellContext`nodes, \
$CellContext`Ey, $CellContext`\[Nu], -Sqrt[1/3], 
                Sqrt[
                1/3]] + $CellContext`BCBJQ4Stress[$CellContext`nodes, \
$CellContext`Ey, $CellContext`\[Nu], 
                Sqrt[1/3], 
                Sqrt[1/3]]); Return[$CellContext`out]]], 
         Evaluate], $CellContext`Q8ElemStiffStressReduced = 
       CompiledFunction[{10, 11., 5468}, {{
           Blank[Real], 2}, 
          Blank[Real], 
          Blank[Real], 
          Blank[Real]}, {{3, 2, 0}, {3, 0, 0}, {3, 0, 1}, {3, 0, 2}, {3, 2, 
         2}}, {{{8, 8}, {2, 1, 1}}, {3, {2, 0, 0}}, {0., {3, 0, 3}}}, {0, 1, 
         9, 0, 9}, {{47, ConstantArray, 3, 0, 3, 2, 1, 1, 3, 2, 5}, {10, 0, 
          7}, {40, 60, 3, 0, 7, 3, 0, 4}, {40, 57, 3, 0, 4, 3, 0, 7}, {19, 7, 
          4}, {10, 0, 7}, {40, 60, 3, 0, 7, 3, 0, 5}, {40, 57, 3, 0, 5, 3, 0, 
          7}, {19, 7, 5}, {
          47, $CellContext`BCBJQ8Stress, 3, 2, 0, 3, 0, 0, 3, 0, 1, 3, 0, 4, 
           3, 0, 5, 3, 2, 6}, {10, 0, 4}, {40, 60, 3, 0, 4, 3, 0, 7}, {40, 57,
           3, 0, 7, 3, 0, 4}, {10, 0, 7}, {40, 60, 3, 0, 7, 3, 0, 5}, {40, 57,
           3, 0, 5, 3, 0, 7}, {19, 7, 5}, {
          47, $CellContext`BCBJQ8Stress, 3, 2, 0, 3, 0, 0, 3, 0, 1, 3, 0, 4, 
           3, 0, 5, 3, 2, 7}, {10, 0, 5}, {40, 60, 3, 0, 5, 3, 0, 4}, {40, 57,
           3, 0, 4, 3, 0, 5}, {19, 5, 4}, {10, 0, 5}, {40, 60, 3, 0, 5, 3, 0, 
          6}, {40, 57, 3, 0, 6, 3, 0, 5}, {
          47, $CellContext`BCBJQ8Stress, 3, 2, 0, 3, 0, 0, 3, 0, 1, 3, 0, 4, 
           3, 0, 5, 3, 2, 3}, {10, 0, 4}, {40, 60, 3, 0, 4, 3, 0, 5}, {40, 57,
           3, 0, 5, 3, 0, 4}, {10, 0, 5}, {40, 60, 3, 0, 5, 3, 0, 6}, {40, 57,
           3, 0, 6, 3, 0, 5}, {
          47, $CellContext`BCBJQ8Stress, 3, 2, 0, 3, 0, 0, 3, 0, 1, 3, 0, 4, 
           3, 0, 5, 3, 2, 8}, {44, 6, 7, 3, 8, 6}, {41, 259, 3, 0, 2, 3, 2, 6,
           3, 2, 7}, {42, "CopyTensor", 3, 2, 7, 3, 2, 5}, {
          42, "CopyTensor", 3, 2, 5, 3, 2, 2}, {1}, {1}}, 
         Function[{$CellContext`nodes, $CellContext`Ey, $CellContext`\[Nu], \
$CellContext`he}, 
          
          Module[{$CellContext`out = 
            ConstantArray[
             0., {8, 8}]}, $CellContext`out = $CellContext`he \
($CellContext`BCBJQ8Stress[$CellContext`nodes, $CellContext`Ey, $CellContext`\
\[Nu], -Sqrt[1/3], -
                Sqrt[1/3]] + $CellContext`BCBJQ8Stress[$CellContext`nodes, \
$CellContext`Ey, $CellContext`\[Nu], 
                Sqrt[1/3], -
                Sqrt[1/3]] + $CellContext`BCBJQ8Stress[$CellContext`nodes, \
$CellContext`Ey, $CellContext`\[Nu], -Sqrt[1/3], 
                Sqrt[
                1/3]] + $CellContext`BCBJQ8Stress[$CellContext`nodes, \
$CellContext`Ey, $CellContext`\[Nu], 
                Sqrt[1/3], 
                Sqrt[1/3]]); Return[$CellContext`out]]], 
         Evaluate], $CellContext`BCBJQ8Stress = 
       CompiledFunction[{10, 11., 5468}, {{
           Blank[Real], 2}, 
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real]}, {{3, 2, 0}, {3, 0, 0}, {3, 0, 1}, {3, 0, 2}, {3, 0, 
         3}, {3, 2, 
         12}}, {{{3, 16}, {2, 1, 6}}, {0, {2, 0, 9}}, {4, {2, 0, 3}}, {
          8, {2, 0, 7}}, {{8, 8}, {2, 1, 10}}, {6, {2, 0, 5}}, {
          5, {2, 0, 4}}, {{4, 4}, {2, 1, 1}}, {{4, 16}, {2, 1, 4}}, {{3, 3}, {
           2, 1, 8}}, {2, {2, 0, 1}}, {-1, {2, 0, 8}}, {12, {2, 0, 10}}, {
          7, {2, 0, 6}}, {1, {2, 0, 0}}, {3, {2, 0, 2}}, {0., {3, 0, 20}}}, {
         0, 11, 86, 0, 
         15}, {{38, 0, 0, 0, 0, 0, 0, 19}, {38, 0, 0, 1, 0, 0, 0, 18}, {38, 0,
           0, 2, 0, 0, 0, 17}, {38, 0, 0, 3, 0, 0, 0, 16}, {38, 0, 0, 4, 0, 0,
           0, 15}, {38, 0, 0, 5, 0, 0, 0, 14}, {38, 0, 0, 6, 0, 0, 0, 13}, {
          38, 0, 0, 7, 0, 0, 0, 12}, {38, 0, 0, 0, 0, 1, 0, 11}, {38, 0, 0, 1,
           0, 1, 0, 10}, {38, 0, 0, 2, 0, 1, 0, 9}, {38, 0, 0, 3, 0, 1, 0, 
          8}, {38, 0, 0, 4, 0, 1, 0, 7}, {38, 0, 0, 5, 0, 1, 0, 6}, {38, 0, 0,
           6, 0, 1, 0, 5}, {38, 0, 0, 7, 0, 1, 0, 4}, {
          47, ConstantArray, 3, 0, 20, 2, 1, 1, 3, 2, 11}, {
          47, ConstantArray, 3, 0, 20, 2, 1, 1, 3, 2, 9}, {
          47, ConstantArray, 3, 0, 20, 2, 1, 4, 3, 2, 7}, {
          47, ConstantArray, 3, 0, 20, 2, 1, 6, 3, 2, 5}, {
          47, ConstantArray, 3, 0, 20, 2, 1, 8, 3, 2, 3}, {7, 20, 22}, {
          47, ConstantArray, 3, 0, 20, 2, 1, 10, 3, 2, 2}, {10, 3, 25}, {40, 
          60, 3, 0, 25, 3, 0, 26}, {16, 19, 3, 25}, {16, 18, 3, 24}, {19, 24, 
          27}, {16, 17, 3, 24}, {16, 16, 3, 29}, {19, 29, 21}, {40, 56, 3, 0, 
          3, 3, 0, 29}, {16, 19, 29, 32}, {19, 32, 29}, {40, 56, 3, 0, 3, 3, 
          0, 32}, {16, 18, 32, 23}, {40, 56, 3, 0, 3, 3, 0, 32}, {16, 17, 32, 
          30}, {40, 56, 3, 0, 3, 3, 0, 32}, {16, 16, 32, 34}, {19, 34, 32}, {
          10, 1, 34}, {16, 34, 14, 34}, {40, 56, 3, 0, 3, 3, 0, 33}, {10, 8, 
          28}, {13, 28, 33, 28}, {16, 34, 28, 34}, {19, 34, 28}, {10, 1, 
          34}, {16, 34, 12, 34}, {40, 56, 3, 0, 3, 3, 0, 33}, {10, 8, 31}, {
          13, 31, 33, 31}, {16, 34, 31, 34}, {10, 1, 31}, {16, 31, 19, 31}, {
          16, 31, 2, 31}, {10, 1, 33}, {16, 33, 18, 33}, {16, 33, 2, 33}, {10,
           1, 39}, {16, 39, 17, 39}, {16, 39, 2, 39}, {10, 1, 36}, {16, 36, 
          16, 36}, {16, 36, 2, 36}, {10, 3, 38}, {16, 38, 15, 38}, {16, 38, 2,
           38}, {19, 38, 35}, {10, 3, 38}, {16, 38, 13, 38}, {16, 38, 2, 
          38}, {19, 38, 40}, {10, 1, 38}, {16, 38, 19, 38}, {16, 38, 3, 38}, {
          16, 38, 2, 38}, {19, 38, 37}, {10, 1, 38}, {16, 38, 18, 38}, {16, 
          38, 3, 38}, {16, 38, 2, 38}, {19, 38, 43}, {10, 1, 38}, {16, 38, 17,
           38}, {16, 38, 3, 38}, {16, 38, 2, 38}, {10, 1, 46}, {16, 46, 16, 
          46}, {16, 46, 3, 46}, {16, 46, 2, 46}, {10, 3, 44}, {16, 44, 15, 
          44}, {16, 44, 3, 44}, {16, 44, 2, 44}, {10, 3, 41}, {16, 41, 13, 
          41}, {16, 41, 3, 41}, {16, 41, 2, 41}, {19, 41, 42}, {13, 25, 27, 
          24, 21, 29, 23, 30, 32, 28, 34, 31, 33, 39, 36, 35, 40, 37, 43, 38, 
          46, 44, 42, 25}, {16, 26, 25, 26}, {10, 3, 25}, {40, 60, 3, 0, 25, 
          3, 0, 27}, {10, 1, 25}, {16, 25, 19, 25}, {16, 25, 3, 25}, {10, 1, 
          24}, {16, 24, 18, 24}, {16, 24, 3, 24}, {10, 1, 21}, {16, 21, 17, 
          21}, {16, 21, 3, 21}, {10, 1, 29}, {16, 29, 16, 29}, {16, 29, 3, 
          29}, {10, 3, 23}, {16, 23, 14, 23}, {16, 23, 3, 23}, {19, 23, 30}, {
          10, 3, 23}, {16, 23, 12, 23}, {16, 23, 3, 23}, {19, 23, 32}, {16, 
          19, 2, 23}, {16, 18, 2, 28}, {19, 28, 34}, {16, 17, 2, 28}, {16, 16,
           2, 31}, {19, 31, 33}, {10, 1, 31}, {16, 31, 19, 31}, {16, 31, 3, 
          31}, {16, 31, 2, 31}, {19, 31, 39}, {10, 1, 31}, {16, 31, 18, 31}, {
          16, 31, 3, 31}, {16, 31, 2, 31}, {10, 1, 36}, {16, 36, 17, 36}, {16,
           36, 3, 36}, {16, 36, 2, 36}, {10, 1, 35}, {16, 35, 16, 35}, {16, 
          35, 3, 35}, {16, 35, 2, 35}, {19, 35, 40}, {10, 3, 35}, {16, 35, 14,
           35}, {16, 35, 3, 35}, {16, 35, 2, 35}, {19, 35, 37}, {10, 3, 35}, {
          16, 35, 12, 35}, {16, 35, 3, 35}, {16, 35, 2, 35}, {40, 56, 3, 0, 2,
           3, 0, 43}, {16, 19, 43, 38}, {19, 38, 43}, {40, 56, 3, 0, 2, 3, 0, 
          38}, {16, 18, 38, 46}, {19, 46, 38}, {40, 56, 3, 0, 2, 3, 0, 46}, {
          16, 17, 46, 44}, {40, 56, 3, 0, 2, 3, 0, 46}, {16, 16, 46, 42}, {10,
           1, 46}, {16, 46, 15, 46}, {40, 56, 3, 0, 2, 3, 0, 41}, {10, 8, 
          47}, {13, 47, 41, 47}, {16, 46, 47, 46}, {10, 1, 47}, {16, 47, 13, 
          47}, {40, 56, 3, 0, 2, 3, 0, 41}, {10, 8, 50}, {13, 50, 41, 50}, {
          16, 47, 50, 47}, {19, 47, 50}, {13, 25, 24, 21, 29, 30, 32, 23, 34, 
          28, 33, 39, 31, 36, 40, 37, 35, 43, 38, 44, 42, 46, 50, 25}, {16, 
          27, 25, 27}, {10, 3, 25}, {40, 60, 3, 0, 25, 3, 0, 24}, {16, 11, 3, 
          25}, {16, 10, 3, 21}, {19, 21, 29}, {16, 9, 3, 21}, {16, 8, 3, 
          30}, {19, 30, 32}, {40, 56, 3, 0, 3, 3, 0, 30}, {16, 11, 30, 23}, {
          19, 23, 30}, {40, 56, 3, 0, 3, 3, 0, 23}, {16, 10, 23, 34}, {40, 56,
           3, 0, 3, 3, 0, 23}, {16, 9, 23, 28}, {40, 56, 3, 0, 3, 3, 0, 23}, {
          16, 8, 23, 33}, {19, 33, 23}, {10, 1, 33}, {16, 33, 6, 33}, {40, 56,
           3, 0, 3, 3, 0, 39}, {10, 8, 31}, {13, 31, 39, 31}, {16, 33, 31, 
          33}, {19, 33, 31}, {10, 1, 33}, {16, 33, 4, 33}, {40, 56, 3, 0, 3, 
          3, 0, 39}, {10, 8, 36}, {13, 36, 39, 36}, {16, 33, 36, 33}, {10, 1, 
          36}, {16, 36, 11, 36}, {16, 36, 2, 36}, {10, 1, 39}, {16, 39, 10, 
          39}, {16, 39, 2, 39}, {10, 1, 40}, {16, 40, 9, 40}, {16, 40, 2, 
          40}, {10, 1, 37}, {16, 37, 8, 37}, {16, 37, 2, 37}, {10, 3, 35}, {
          16, 35, 7, 35}, {16, 35, 2, 35}, {19, 35, 43}, {10, 3, 35}, {16, 35,
           5, 35}, {16, 35, 2, 35}, {19, 35, 38}, {10, 1, 35}, {16, 35, 11, 
          35}, {16, 35, 3, 35}, {16, 35, 2, 35}, {19, 35, 44}, {10, 1, 35}, {
          16, 35, 10, 35}, {16, 35, 3, 35}, {16, 35, 2, 35}, {19, 35, 42}, {
          10, 1, 35}, {16, 35, 9, 35}, {16, 35, 3, 35}, {16, 35, 2, 35}, {10, 
          1, 46}, {16, 46, 8, 46}, {16, 46, 3, 46}, {16, 46, 2, 46}, {10, 3, 
          50}, {16, 50, 7, 50}, {16, 50, 3, 50}, {16, 50, 2, 50}, {10, 3, 
          47}, {16, 47, 5, 47}, {16, 47, 3, 47}, {16, 47, 2, 47}, {19, 47, 
          41}, {13, 25, 29, 21, 32, 30, 34, 28, 23, 31, 33, 36, 39, 40, 37, 
          43, 38, 44, 42, 35, 46, 50, 41, 25}, {16, 24, 25, 24}, {10, 3, 
          25}, {40, 60, 3, 0, 25, 3, 0, 29}, {10, 1, 25}, {16, 25, 11, 25}, {
          16, 25, 3, 25}, {10, 1, 21}, {16, 21, 10, 21}, {16, 21, 3, 21}, {10,
           1, 32}, {16, 32, 9, 32}, {16, 32, 3, 32}, {10, 1, 30}, {16, 30, 8, 
          30}, {16, 30, 3, 30}, {10, 3, 34}, {16, 34, 6, 34}, {16, 34, 3, 
          34}, {19, 34, 28}, {10, 3, 34}, {16, 34, 4, 34}, {16, 34, 3, 34}, {
          19, 34, 23}, {16, 11, 2, 34}, {16, 10, 2, 31}, {19, 31, 33}, {16, 9,
           2, 31}, {16, 8, 2, 36}, {19, 36, 39}, {10, 1, 36}, {16, 36, 11, 
          36}, {16, 36, 3, 36}, {16, 36, 2, 36}, {19, 36, 40}, {10, 1, 36}, {
          16, 36, 10, 36}, {16, 36, 3, 36}, {16, 36, 2, 36}, {10, 1, 37}, {16,
           37, 9, 37}, {16, 37, 3, 37}, {16, 37, 2, 37}, {10, 1, 43}, {16, 43,
           8, 43}, {16, 43, 3, 43}, {16, 43, 2, 43}, {19, 43, 38}, {10, 3, 
          43}, {16, 43, 6, 43}, {16, 43, 3, 43}, {16, 43, 2, 43}, {19, 43, 
          44}, {10, 3, 43}, {16, 43, 4, 43}, {16, 43, 3, 43}, {16, 43, 2, 
          43}, {40, 56, 3, 0, 2, 3, 0, 42}, {16, 11, 42, 35}, {19, 35, 42}, {
          40, 56, 3, 0, 2, 3, 0, 35}, {16, 10, 35, 46}, {19, 46, 35}, {40, 56,
           3, 0, 2, 3, 0, 46}, {16, 9, 46, 50}, {40, 56, 3, 0, 2, 3, 0, 46}, {
          16, 8, 46, 41}, {10, 1, 46}, {16, 46, 7, 46}, {40, 56, 3, 0, 2, 3, 
          0, 47}, {10, 8, 49}, {13, 49, 47, 49}, {16, 46, 49, 46}, {10, 1, 
          49}, {16, 49, 5, 49}, {40, 56, 3, 0, 2, 3, 0, 47}, {10, 8, 48}, {13,
           48, 47, 48}, {16, 49, 48, 49}, {19, 49, 48}, {13, 25, 21, 32, 30, 
          28, 23, 34, 33, 31, 39, 40, 36, 37, 38, 44, 43, 42, 35, 50, 41, 46, 
          48, 25}, {16, 29, 25, 29}, {34, 2, 2, 2, 26, 27, 24, 29, 3, 13}, {
          42, "CopyTensor", 3, 2, 13, 3, 2, 11}, {
          47, Det, 3, 2, 11, 3, 0, 26}, {7, 26, 22}, {
          47, Inverse, 3, 2, 11, 3, 2, 13}, {
          42, "CopyTensor", 3, 2, 13, 3, 2, 9}, {10, 3, 26}, {40, 60, 3, 0, 
          26, 3, 0, 27}, {16, 3, 27, 26}, {40, 56, 3, 0, 3, 3, 0, 27}, {10, 3,
           24}, {40, 60, 3, 0, 24, 3, 0, 29}, {16, 27, 29, 27}, {19, 27, 
          29}, {10, 1, 27}, {40, 60, 3, 0, 27, 3, 0, 24}, {16, 2, 24, 27}, {
          16, 3, 2, 24}, {10, 1, 25}, {40, 60, 3, 0, 25, 3, 0, 21}, {16, 24, 
          21, 24}, {19, 24, 21}, {13, 26, 29, 27, 21, 26}, {10, 3, 29}, {40, 
          60, 3, 0, 29, 3, 0, 27}, {16, 3, 27, 29}, {19, 29, 27}, {40, 56, 3, 
          0, 3, 3, 0, 29}, {10, 3, 21}, {40, 60, 3, 0, 21, 3, 0, 24}, {16, 29,
           24, 29}, {10, 1, 24}, {40, 60, 3, 0, 24, 3, 0, 21}, {16, 2, 21, 
          24}, {16, 3, 2, 21}, {10, 1, 25}, {40, 60, 3, 0, 25, 3, 0, 32}, {16,
           21, 32, 21}, {19, 21, 32}, {13, 27, 29, 24, 32, 27}, {10, 3, 29}, {
          40, 60, 3, 0, 29, 3, 0, 24}, {16, 3, 24, 29}, {40, 56, 3, 0, 3, 3, 
          0, 24}, {10, 3, 32}, {40, 60, 3, 0, 32, 3, 0, 21}, {16, 24, 21, 
          24}, {10, 1, 21}, {40, 60, 3, 0, 21, 3, 0, 32}, {16, 2, 32, 21}, {
          16, 3, 2, 32}, {10, 1, 25}, {40, 60, 3, 0, 25, 3, 0, 30}, {16, 32, 
          30, 32}, {13, 29, 24, 21, 32, 29}, {10, 3, 24}, {40, 60, 3, 0, 24, 
          3, 0, 21}, {16, 3, 21, 24}, {19, 24, 21}, {40, 56, 3, 0, 3, 3, 0, 
          24}, {10, 3, 32}, {40, 60, 3, 0, 32, 3, 0, 30}, {16, 24, 30, 24}, {
          19, 24, 30}, {10, 1, 24}, {40, 60, 3, 0, 24, 3, 0, 32}, {16, 2, 32, 
          24}, {16, 3, 2, 32}, {10, 1, 25}, {40, 60, 3, 0, 25, 3, 0, 28}, {16,
           32, 28, 32}, {13, 21, 30, 24, 32, 21}, {19, 2, 30}, {16, 3, 2, 
          24}, {13, 30, 24, 30}, {10, 1, 24}, {40, 60, 3, 0, 24, 3, 0, 32}, {
          40, 56, 3, 0, 3, 3, 0, 24}, {10, 1, 28}, {40, 60, 3, 0, 28, 3, 0, 
          25}, {16, 24, 25, 24}, {19, 24, 25}, {13, 32, 25, 32}, {19, 2, 
          25}, {16, 3, 2, 24}, {19, 24, 28}, {13, 25, 28, 25}, {10, 1, 28}, {
          40, 60, 3, 0, 28, 3, 0, 24}, {19, 24, 28}, {40, 56, 3, 0, 3, 3, 0, 
          24}, {10, 1, 23}, {40, 60, 3, 0, 23, 3, 0, 34}, {16, 24, 34, 24}, {
          13, 28, 24, 28}, {10, 1, 24}, {40, 60, 3, 0, 24, 3, 0, 34}, {16, 3, 
          34, 24}, {10, 3, 34}, {40, 60, 3, 0, 34, 3, 0, 23}, {16, 2, 23, 
          34}, {16, 3, 2, 23}, {10, 1, 33}, {40, 60, 3, 0, 33, 3, 0, 31}, {16,
           23, 31, 23}, {19, 23, 31}, {40, 56, 3, 0, 2, 3, 0, 23}, {10, 3, 
          33}, {40, 60, 3, 0, 33, 3, 0, 39}, {16, 23, 39, 23}, {19, 23, 39}, {
          13, 24, 34, 31, 39, 24}, {10, 1, 34}, {40, 60, 3, 0, 34, 3, 0, 
          31}, {16, 3, 31, 34}, {10, 3, 31}, {40, 60, 3, 0, 31, 3, 0, 39}, {
          16, 2, 39, 31}, {19, 31, 39}, {16, 3, 2, 31}, {10, 1, 23}, {40, 60, 
          3, 0, 23, 3, 0, 33}, {16, 31, 33, 31}, {40, 56, 3, 0, 2, 3, 0, 
          33}, {10, 3, 23}, {40, 60, 3, 0, 23, 3, 0, 40}, {16, 33, 40, 33}, {
          19, 33, 40}, {13, 34, 39, 31, 40, 34}, {10, 1, 39}, {40, 60, 3, 0, 
          39, 3, 0, 31}, {16, 3, 31, 39}, {10, 3, 31}, {40, 60, 3, 0, 31, 3, 
          0, 40}, {16, 2, 40, 31}, {16, 3, 2, 40}, {10, 1, 33}, {40, 60, 3, 0,
           33, 3, 0, 23}, {16, 40, 23, 40}, {40, 56, 3, 0, 2, 3, 0, 23}, {10, 
          3, 33}, {40, 60, 3, 0, 33, 3, 0, 36}, {16, 23, 36, 23}, {13, 39, 31,
           40, 23, 39}, {10, 1, 31}, {40, 60, 3, 0, 31, 3, 0, 40}, {16, 3, 40,
           31}, {10, 3, 40}, {40, 60, 3, 0, 40, 3, 0, 23}, {16, 2, 23, 40}, {
          19, 40, 23}, {16, 3, 2, 40}, {10, 1, 36}, {40, 60, 3, 0, 36, 3, 0, 
          33}, {16, 40, 33, 40}, {19, 40, 33}, {40, 56, 3, 0, 2, 3, 0, 40}, {
          10, 3, 36}, {40, 60, 3, 0, 36, 3, 0, 37}, {16, 40, 37, 40}, {13, 31,
           23, 33, 40, 31}, {10, 1, 23}, {40, 60, 3, 0, 23, 3, 0, 33}, {19, 
          33, 23}, {40, 56, 3, 0, 2, 3, 0, 33}, {10, 1, 40}, {40, 60, 3, 0, 
          40, 3, 0, 37}, {16, 33, 37, 33}, {13, 23, 33, 23}, {19, 3, 33}, {16,
           3, 2, 37}, {19, 37, 40}, {13, 33, 40, 33}, {10, 1, 40}, {40, 60, 3,
           0, 40, 3, 0, 37}, {40, 56, 3, 0, 2, 3, 0, 40}, {10, 1, 36}, {40, 
          60, 3, 0, 36, 3, 0, 38}, {16, 40, 38, 40}, {19, 40, 38}, {13, 37, 
          38, 37}, {19, 3, 38}, {16, 3, 2, 40}, {13, 38, 40, 38}, {10, 3, 
          40}, {40, 60, 3, 0, 40, 3, 0, 36}, {16, 3, 36, 40}, {40, 56, 3, 0, 
          3, 3, 0, 36}, {10, 3, 44}, {40, 60, 3, 0, 44, 3, 0, 43}, {16, 36, 
          43, 36}, {19, 36, 43}, {10, 1, 36}, {40, 60, 3, 0, 36, 3, 0, 44}, {
          16, 2, 44, 36}, {16, 3, 2, 44}, {10, 1, 42}, {40, 60, 3, 0, 42, 3, 
          0, 35}, {16, 44, 35, 44}, {19, 44, 35}, {13, 40, 43, 36, 35, 40}, {
          10, 3, 43}, {40, 60, 3, 0, 43, 3, 0, 36}, {16, 3, 36, 43}, {19, 43, 
          36}, {40, 56, 3, 0, 3, 3, 0, 43}, {10, 3, 35}, {40, 60, 3, 0, 35, 3,
           0, 44}, {16, 43, 44, 43}, {10, 1, 44}, {40, 60, 3, 0, 44, 3, 0, 
          35}, {16, 2, 35, 44}, {16, 3, 2, 35}, {10, 1, 42}, {40, 60, 3, 0, 
          42, 3, 0, 50}, {16, 35, 50, 35}, {19, 35, 50}, {13, 36, 43, 44, 50, 
          36}, {10, 3, 43}, {40, 60, 3, 0, 43, 3, 0, 44}, {16, 3, 44, 43}, {
          40, 56, 3, 0, 3, 3, 0, 44}, {10, 3, 50}, {40, 60, 3, 0, 50, 3, 0, 
          35}, {16, 44, 35, 44}, {10, 1, 35}, {40, 60, 3, 0, 35, 3, 0, 50}, {
          16, 2, 50, 35}, {16, 3, 2, 50}, {10, 1, 42}, {40, 60, 3, 0, 42, 3, 
          0, 41}, {16, 50, 41, 50}, {13, 43, 44, 35, 50, 43}, {10, 3, 44}, {
          40, 60, 3, 0, 44, 3, 0, 35}, {16, 3, 35, 44}, {19, 44, 35}, {40, 56,
           3, 0, 3, 3, 0, 44}, {10, 3, 50}, {40, 60, 3, 0, 50, 3, 0, 41}, {16,
           44, 41, 44}, {19, 44, 41}, {10, 1, 44}, {40, 60, 3, 0, 44, 3, 0, 
          50}, {16, 2, 50, 44}, {16, 3, 2, 50}, {10, 1, 42}, {40, 60, 3, 0, 
          42, 3, 0, 46}, {16, 50, 46, 50}, {13, 35, 41, 44, 50, 35}, {19, 2, 
          41}, {16, 3, 2, 44}, {13, 41, 44, 41}, {10, 1, 44}, {40, 60, 3, 0, 
          44, 3, 0, 50}, {40, 56, 3, 0, 3, 3, 0, 44}, {10, 1, 46}, {40, 60, 3,
           0, 46, 3, 0, 42}, {16, 44, 42, 44}, {19, 44, 42}, {13, 50, 42, 
          50}, {19, 2, 42}, {16, 3, 2, 44}, {19, 44, 46}, {13, 42, 46, 42}, {
          10, 1, 46}, {40, 60, 3, 0, 46, 3, 0, 44}, {19, 44, 46}, {40, 56, 3, 
          0, 3, 3, 0, 44}, {10, 1, 48}, {40, 60, 3, 0, 48, 3, 0, 49}, {16, 44,
           49, 44}, {13, 46, 44, 46}, {10, 1, 44}, {40, 60, 3, 0, 44, 3, 0, 
          49}, {16, 3, 49, 44}, {10, 3, 49}, {40, 60, 3, 0, 49, 3, 0, 48}, {
          16, 2, 48, 49}, {16, 3, 2, 48}, {10, 1, 47}, {40, 60, 3, 0, 47, 3, 
          0, 45}, {16, 48, 45, 48}, {19, 48, 45}, {40, 56, 3, 0, 2, 3, 0, 
          48}, {10, 3, 47}, {40, 60, 3, 0, 47, 3, 0, 53}, {16, 48, 53, 48}, {
          19, 48, 53}, {13, 44, 49, 45, 53, 44}, {10, 1, 49}, {40, 60, 3, 0, 
          49, 3, 0, 45}, {16, 3, 45, 49}, {10, 3, 45}, {40, 60, 3, 0, 45, 3, 
          0, 53}, {16, 2, 53, 45}, {19, 45, 53}, {16, 3, 2, 45}, {10, 1, 
          48}, {40, 60, 3, 0, 48, 3, 0, 47}, {16, 45, 47, 45}, {40, 56, 3, 0, 
          2, 3, 0, 47}, {10, 3, 48}, {40, 60, 3, 0, 48, 3, 0, 54}, {16, 47, 
          54, 47}, {19, 47, 54}, {13, 49, 53, 45, 54, 49}, {10, 1, 53}, {40, 
          60, 3, 0, 53, 3, 0, 45}, {16, 3, 45, 53}, {10, 3, 45}, {40, 60, 3, 
          0, 45, 3, 0, 54}, {16, 2, 54, 45}, {16, 3, 2, 54}, {10, 1, 47}, {40,
           60, 3, 0, 47, 3, 0, 48}, {16, 54, 48, 54}, {40, 56, 3, 0, 2, 3, 0, 
          48}, {10, 3, 47}, {40, 60, 3, 0, 47, 3, 0, 51}, {16, 48, 51, 48}, {
          13, 53, 45, 54, 48, 53}, {10, 1, 45}, {40, 60, 3, 0, 45, 3, 0, 
          54}, {16, 3, 54, 45}, {10, 3, 54}, {40, 60, 3, 0, 54, 3, 0, 48}, {
          16, 2, 48, 54}, {19, 54, 48}, {16, 3, 2, 54}, {10, 1, 51}, {40, 60, 
          3, 0, 51, 3, 0, 47}, {16, 54, 47, 54}, {19, 54, 47}, {40, 56, 3, 0, 
          2, 3, 0, 54}, {10, 3, 51}, {40, 60, 3, 0, 51, 3, 0, 52}, {16, 54, 
          52, 54}, {13, 45, 48, 47, 54, 45}, {10, 1, 48}, {40, 60, 3, 0, 48, 
          3, 0, 47}, {19, 47, 48}, {40, 56, 3, 0, 2, 3, 0, 47}, {10, 1, 54}, {
          40, 60, 3, 0, 54, 3, 0, 52}, {16, 47, 52, 47}, {13, 48, 47, 48}, {
          19, 3, 47}, {16, 3, 2, 52}, {19, 52, 54}, {13, 47, 54, 47}, {10, 1, 
          54}, {40, 60, 3, 0, 54, 3, 0, 52}, {40, 56, 3, 0, 2, 3, 0, 54}, {10,
           1, 51}, {40, 60, 3, 0, 51, 3, 0, 55}, {16, 54, 55, 54}, {19, 54, 
          55}, {13, 52, 55, 52}, {19, 3, 55}, {16, 3, 2, 54}, {13, 55, 54, 
          55}, {10, 9, 54}, {10, 9, 51}, {10, 9, 56}, {10, 9, 57}, {10, 9, 
          58}, {10, 9, 59}, {10, 9, 60}, {10, 9, 61}, {10, 9, 62}, {10, 9, 
          63}, {10, 9, 64}, {10, 9, 65}, {10, 9, 66}, {10, 9, 67}, {10, 9, 
          68}, {10, 9, 69}, {10, 9, 70}, {10, 9, 71}, {10, 9, 72}, {10, 9, 
          73}, {10, 9, 74}, {10, 9, 75}, {10, 9, 76}, {10, 9, 77}, {10, 9, 
          78}, {10, 9, 79}, {10, 9, 80}, {10, 9, 81}, {10, 9, 82}, {10, 9, 
          83}, {10, 9, 84}, {10, 9, 85}, {34, 2, 4, 16, 26, 54, 27, 51, 29, 
          56, 21, 57, 30, 58, 32, 59, 25, 60, 28, 61, 24, 62, 34, 63, 39, 64, 
          31, 65, 23, 66, 33, 67, 37, 68, 38, 69, 70, 40, 71, 36, 72, 43, 73, 
          35, 74, 41, 75, 50, 76, 42, 77, 46, 78, 44, 79, 49, 80, 53, 81, 45, 
          82, 48, 83, 47, 84, 52, 85, 55, 3, 13}, {
          42, "CopyTensor", 3, 2, 13, 3, 2, 7}, {38, 9, 0, 0, 0, 0, 0, 26}, {
          38, 9, 0, 0, 0, 1, 0, 27}, {38, 9, 0, 1, 0, 0, 0, 29}, {38, 9, 0, 1,
           0, 1, 0, 21}, {38, 9, 0, 1, 0, 0, 0, 30}, {38, 9, 0, 1, 0, 1, 0, 
          32}, {38, 9, 0, 0, 0, 0, 0, 25}, {38, 9, 0, 0, 0, 1, 0, 28}, {10, 9,
           24}, {10, 9, 34}, {10, 9, 39}, {10, 9, 31}, {34, 2, 3, 4, 26, 27, 
          24, 34, 39, 31, 29, 21, 30, 32, 25, 28, 3, 13}, {
          42, "Dot", 3, 2, 13, 3, 2, 7, 2, 0, 10, 3, 2, 14}, {
          42, "CopyTensor", 3, 2, 14, 3, 2, 5}, {40, 56, 3, 0, 1, 3, 0, 26}, {
          19, 26, 27}, {10, 0, 26}, {13, 26, 27, 26}, {40, 60, 3, 0, 26, 3, 0,
           27}, {16, 0, 27, 26}, {40, 56, 3, 0, 1, 3, 0, 27}, {19, 27, 29}, {
          10, 0, 27}, {13, 27, 29, 27}, {40, 60, 3, 0, 27, 3, 0, 29}, {16, 0, 
          29, 27}, {16, 1, 27, 29}, {40, 56, 3, 0, 1, 3, 0, 27}, {19, 27, 
          21}, {10, 0, 27}, {13, 27, 21, 27}, {40, 60, 3, 0, 27, 3, 0, 21}, {
          16, 0, 21, 27}, {16, 1, 27, 21}, {40, 56, 3, 0, 1, 3, 0, 27}, {19, 
          27, 30}, {10, 0, 27}, {13, 27, 30, 27}, {40, 60, 3, 0, 27, 3, 0, 
          30}, {16, 0, 30, 27}, {10, 0, 30}, {13, 30, 1, 30}, {10, 1, 32}, {
          16, 32, 30, 32}, {40, 60, 3, 0, 32, 3, 0, 30}, {16, 0, 30, 32}, {10,
           9, 30}, {10, 9, 25}, {10, 9, 28}, {10, 9, 24}, {34, 2, 3, 3, 26, 
          29, 30, 21, 27, 25, 28, 24, 32, 3, 14}, {
          42, "CopyTensor", 3, 2, 14, 3, 2, 3}, {
          42, "Transpose", 3, 2, 5, 3, 2, 14}, {
          42, "Dot", 3, 2, 14, 3, 2, 3, 2, 0, 10, 3, 2, 13}, {
          42, "Dot", 3, 2, 13, 3, 2, 5, 2, 0, 10, 3, 2, 14}, {41, 259, 3, 0, 
          22, 3, 2, 14, 3, 2, 13}, {42, "CopyTensor", 3, 2, 13, 3, 2, 12}, {
          1}, {1}}, 
         Function[{$CellContext`nodes, $CellContext`Ey, $CellContext`\[Nu], \
$CellContext`\[Xi], $CellContext`\[Eta]}, 
          
          Module[{$CellContext`x1 = 
            Part[$CellContext`nodes, 1, 1], $CellContext`x2 = 
            Part[$CellContext`nodes, 2, 1], $CellContext`x3 = 
            Part[$CellContext`nodes, 3, 1], $CellContext`x4 = 
            Part[$CellContext`nodes, 4, 1], $CellContext`x5 = 
            Part[$CellContext`nodes, 5, 1], $CellContext`x6 = 
            Part[$CellContext`nodes, 6, 1], $CellContext`x7 = 
            Part[$CellContext`nodes, 7, 1], $CellContext`x8 = 
            Part[$CellContext`nodes, 8, 1], $CellContext`y1 = 
            Part[$CellContext`nodes, 1, 2], $CellContext`y2 = 
            Part[$CellContext`nodes, 2, 2], $CellContext`y3 = 
            Part[$CellContext`nodes, 3, 2], $CellContext`y4 = 
            Part[$CellContext`nodes, 4, 2], $CellContext`y5 = 
            Part[$CellContext`nodes, 5, 2], $CellContext`y6 = 
            Part[$CellContext`nodes, 6, 2], $CellContext`y7 = 
            Part[$CellContext`nodes, 7, 2], $CellContext`y8 = 
            Part[$CellContext`nodes, 8, 2], $CellContext`Jmat = 
            ConstantArray[0., {4, 4}], $CellContext`\[CapitalGamma] = 
            ConstantArray[0., {4, 4}], $CellContext`Dmat = 
            ConstantArray[0., {4, 16}], $CellContext`B = 
            ConstantArray[0., {3, 16}], $CellContext`Cmat = 
            ConstantArray[0., {3, 3}], $CellContext`J = 0., $CellContext`out = 
            ConstantArray[
             0., {8, 8}]}, $CellContext`Jmat = {{(1/
                4) ($CellContext`x1 $CellContext`\[Eta] - $CellContext`x2 \
$CellContext`\[Eta] + $CellContext`x3 $CellContext`\[Eta] - $CellContext`x4 \
$CellContext`\[Eta] - $CellContext`x1 $CellContext`\[Eta]^2 + $CellContext`x2 \
$CellContext`\[Eta]^2 + $CellContext`x3 $CellContext`\[Eta]^2 - \
$CellContext`x4 $CellContext`\[Eta]^2 - (
                 2 $CellContext`x6) (-1 + $CellContext`\[Eta]^2) + (
                  2 $CellContext`x8) (-1 + $CellContext`\[Eta]^2) + (
                  2 $CellContext`x1) $CellContext`\[Xi] + (
                  2 $CellContext`x2) $CellContext`\[Xi] + (
                  2 $CellContext`x3) $CellContext`\[Xi] + (
                  2 $CellContext`x4) $CellContext`\[Xi] - (
                 4 $CellContext`x5) $CellContext`\[Xi] - (
                 4 $CellContext`x7) $CellContext`\[Xi] - ((
                  2 $CellContext`x1) $CellContext`\[Eta]) $CellContext`\[Xi] - \
((2 $CellContext`x2) $CellContext`\[Eta]) $CellContext`\[Xi] + ((
                   2 $CellContext`x3) $CellContext`\[Eta]) $CellContext`\[Xi] + \
((2 $CellContext`x4) $CellContext`\[Eta]) $CellContext`\[Xi] + ((
                   4 $CellContext`x5) $CellContext`\[Eta]) $CellContext`\[Xi] - \
((4 $CellContext`x7) $CellContext`\[Eta]) $CellContext`\[Xi]), (1/
                4) ((2 $CellContext`x1) $CellContext`\[Eta] + (
                  2 $CellContext`x2) $CellContext`\[Eta] + (
                  2 $CellContext`x3) $CellContext`\[Eta] + (
                  2 $CellContext`x4) $CellContext`\[Eta] - (
                 4 $CellContext`x6) $CellContext`\[Eta] - (
                 4 $CellContext`x8) $CellContext`\[Eta] + $CellContext`x1 \
$CellContext`\[Xi] - $CellContext`x2 $CellContext`\[Xi] + $CellContext`x3 \
$CellContext`\[Xi] - $CellContext`x4 $CellContext`\[Xi] - ((
                  2 $CellContext`x1) $CellContext`\[Eta]) $CellContext`\[Xi] + \
((2 $CellContext`x2) $CellContext`\[Eta]) $CellContext`\[Xi] + ((
                   2 $CellContext`x3) $CellContext`\[Eta]) $CellContext`\[Xi] - \
((2 $CellContext`x4) $CellContext`\[Eta]) $CellContext`\[Xi] - ((
                  4 $CellContext`x6) $CellContext`\[Eta]) $CellContext`\[Xi] + \
((4 $CellContext`x8) $CellContext`\[Eta]) $CellContext`\[Xi] - \
$CellContext`x1 $CellContext`\[Xi]^2 - $CellContext`x2 $CellContext`\[Xi]^2 + \
$CellContext`x3 $CellContext`\[Xi]^2 + $CellContext`x4 $CellContext`\[Xi]^2 + \
(2 $CellContext`x5) (-1 + $CellContext`\[Xi]^2) - (
                 2 $CellContext`x7) (-1 + $CellContext`\[Xi]^2))}, {(1/
                4) ($CellContext`y1 $CellContext`\[Eta] - $CellContext`y2 \
$CellContext`\[Eta] + $CellContext`y3 $CellContext`\[Eta] - $CellContext`y4 \
$CellContext`\[Eta] - $CellContext`y1 $CellContext`\[Eta]^2 + $CellContext`y2 \
$CellContext`\[Eta]^2 + $CellContext`y3 $CellContext`\[Eta]^2 - \
$CellContext`y4 $CellContext`\[Eta]^2 - (
                 2 $CellContext`y6) (-1 + $CellContext`\[Eta]^2) + (
                  2 $CellContext`y8) (-1 + $CellContext`\[Eta]^2) + (
                  2 $CellContext`y1) $CellContext`\[Xi] + (
                  2 $CellContext`y2) $CellContext`\[Xi] + (
                  2 $CellContext`y3) $CellContext`\[Xi] + (
                  2 $CellContext`y4) $CellContext`\[Xi] - (
                 4 $CellContext`y5) $CellContext`\[Xi] - (
                 4 $CellContext`y7) $CellContext`\[Xi] - ((
                  2 $CellContext`y1) $CellContext`\[Eta]) $CellContext`\[Xi] - \
((2 $CellContext`y2) $CellContext`\[Eta]) $CellContext`\[Xi] + ((
                   2 $CellContext`y3) $CellContext`\[Eta]) $CellContext`\[Xi] + \
((2 $CellContext`y4) $CellContext`\[Eta]) $CellContext`\[Xi] + ((
                   4 $CellContext`y5) $CellContext`\[Eta]) $CellContext`\[Xi] - \
((4 $CellContext`y7) $CellContext`\[Eta]) $CellContext`\[Xi]), (1/
                4) ((2 $CellContext`y1) $CellContext`\[Eta] + (
                  2 $CellContext`y2) $CellContext`\[Eta] + (
                  2 $CellContext`y3) $CellContext`\[Eta] + (
                  2 $CellContext`y4) $CellContext`\[Eta] - (
                 4 $CellContext`y6) $CellContext`\[Eta] - (
                 4 $CellContext`y8) $CellContext`\[Eta] + $CellContext`y1 \
$CellContext`\[Xi] - $CellContext`y2 $CellContext`\[Xi] + $CellContext`y3 \
$CellContext`\[Xi] - $CellContext`y4 $CellContext`\[Xi] - ((
                  2 $CellContext`y1) $CellContext`\[Eta]) $CellContext`\[Xi] + \
((2 $CellContext`y2) $CellContext`\[Eta]) $CellContext`\[Xi] + ((
                   2 $CellContext`y3) $CellContext`\[Eta]) $CellContext`\[Xi] - \
((2 $CellContext`y4) $CellContext`\[Eta]) $CellContext`\[Xi] - ((
                  4 $CellContext`y6) $CellContext`\[Eta]) $CellContext`\[Xi] + \
((4 $CellContext`y8) $CellContext`\[Eta]) $CellContext`\[Xi] - \
$CellContext`y1 $CellContext`\[Xi]^2 - $CellContext`y2 $CellContext`\[Xi]^2 + \
$CellContext`y3 $CellContext`\[Xi]^2 + $CellContext`y4 $CellContext`\[Xi]^2 + \
(2 $CellContext`y5) (-1 + $CellContext`\[Xi]^2) - (
                 2 $CellContext`y7) (-1 + $CellContext`\[Xi]^2))}}; \
$CellContext`J = Det[$CellContext`Jmat]; $CellContext`\[CapitalGamma] = 
            Inverse[$CellContext`Jmat]; $CellContext`Dmat = {{$CellContext`\
\[Eta]/4 - $CellContext`\[Eta]^2/
               4 + $CellContext`\[Xi]/
                2 - ($CellContext`\[Eta] $CellContext`\[Xi])/2, 
               0, -($CellContext`\[Eta]/4) + $CellContext`\[Eta]^2/
                4 + $CellContext`\[Xi]/
                2 - ($CellContext`\[Eta] $CellContext`\[Xi])/2, 
               0, $CellContext`\[Eta]/4 + $CellContext`\[Eta]^2/
                4 + $CellContext`\[Xi]/
                2 + ($CellContext`\[Eta] $CellContext`\[Xi])/2, 
               0, -($CellContext`\[Eta]/4) - $CellContext`\[Eta]^2/
               4 + $CellContext`\[Xi]/
                2 + ($CellContext`\[Eta] $CellContext`\[Xi])/2, 
               0, -$CellContext`\[Xi] + $CellContext`\[Eta] \
$CellContext`\[Xi], 0, 1/2 - $CellContext`\[Eta]^2/2, 
               0, -$CellContext`\[Xi] - $CellContext`\[Eta] \
$CellContext`\[Xi], 0, -(1/2) + $CellContext`\[Eta]^2/2, 
               0}, {$CellContext`\[Eta]/2 + $CellContext`\[Xi]/
                4 - ($CellContext`\[Eta] $CellContext`\[Xi])/
               2 - $CellContext`\[Xi]^2/4, 
               0, $CellContext`\[Eta]/2 - $CellContext`\[Xi]/
               4 + ($CellContext`\[Eta] $CellContext`\[Xi])/
                2 - $CellContext`\[Xi]^2/4, 
               0, $CellContext`\[Eta]/2 + $CellContext`\[Xi]/
                4 + ($CellContext`\[Eta] $CellContext`\[Xi])/
                2 + $CellContext`\[Xi]^2/4, 
               0, $CellContext`\[Eta]/2 - $CellContext`\[Xi]/
               4 - ($CellContext`\[Eta] $CellContext`\[Xi])/
               2 + $CellContext`\[Xi]^2/4, 0, -(1/2) + $CellContext`\[Xi]^2/2,
                0, -$CellContext`\[Eta] - $CellContext`\[Eta] $CellContext`\
\[Xi], 0, 1/2 - $CellContext`\[Xi]^2/2, 
               0, -$CellContext`\[Eta] + $CellContext`\[Eta] $CellContext`\
\[Xi], 0}, {0, $CellContext`\[Eta]/4 - $CellContext`\[Eta]^2/
               4 + $CellContext`\[Xi]/
                2 - ($CellContext`\[Eta] $CellContext`\[Xi])/2, 
               0, -($CellContext`\[Eta]/4) + $CellContext`\[Eta]^2/
                4 + $CellContext`\[Xi]/
                2 - ($CellContext`\[Eta] $CellContext`\[Xi])/2, 
               0, $CellContext`\[Eta]/4 + $CellContext`\[Eta]^2/
                4 + $CellContext`\[Xi]/
                2 + ($CellContext`\[Eta] $CellContext`\[Xi])/2, 
               0, -($CellContext`\[Eta]/4) - $CellContext`\[Eta]^2/
               4 + $CellContext`\[Xi]/
                2 + ($CellContext`\[Eta] $CellContext`\[Xi])/2, 
               0, -$CellContext`\[Xi] + $CellContext`\[Eta] \
$CellContext`\[Xi], 0, 1/2 - $CellContext`\[Eta]^2/2, 
               0, -$CellContext`\[Xi] - $CellContext`\[Eta] \
$CellContext`\[Xi], 0, -(1/2) + $CellContext`\[Eta]^2/2}, {
              0, $CellContext`\[Eta]/2 + $CellContext`\[Xi]/
                4 - ($CellContext`\[Eta] $CellContext`\[Xi])/
               2 - $CellContext`\[Xi]^2/4, 
               0, $CellContext`\[Eta]/2 - $CellContext`\[Xi]/
               4 + ($CellContext`\[Eta] $CellContext`\[Xi])/
                2 - $CellContext`\[Xi]^2/4, 
               0, $CellContext`\[Eta]/2 + $CellContext`\[Xi]/
                4 + ($CellContext`\[Eta] $CellContext`\[Xi])/
                2 + $CellContext`\[Xi]^2/4, 
               0, $CellContext`\[Eta]/2 - $CellContext`\[Xi]/
               4 - ($CellContext`\[Eta] $CellContext`\[Xi])/
               2 + $CellContext`\[Xi]^2/4, 0, -(1/2) + $CellContext`\[Xi]^2/2,
                0, -$CellContext`\[Eta] - $CellContext`\[Eta] $CellContext`\
\[Xi], 0, 1/2 - $CellContext`\[Xi]^2/2, 
               0, -$CellContext`\[Eta] + $CellContext`\[Eta] $CellContext`\
\[Xi]}}; $CellContext`B = Dot[{{
                Part[$CellContext`\[CapitalGamma], 1, 1], 
                Part[$CellContext`\[CapitalGamma], 1, 2], 0, 0}, {0, 0, 
                Part[$CellContext`\[CapitalGamma], 2, 1], 
                Part[$CellContext`\[CapitalGamma], 2, 2]}, {
                Part[$CellContext`\[CapitalGamma], 2, 1], 
                Part[$CellContext`\[CapitalGamma], 2, 2], 
                Part[$CellContext`\[CapitalGamma], 1, 1], 
                
                Part[$CellContext`\[CapitalGamma], 1, 
                 2]}}, $CellContext`Dmat]; $CellContext`Cmat = \
{{$CellContext`Ey/(
               1 - $CellContext`\[Nu]^2), $CellContext`\[Nu] \
($CellContext`Ey/(1 - $CellContext`\[Nu]^2)), 
               0}, {$CellContext`\[Nu] ($CellContext`Ey/(
                1 - $CellContext`\[Nu]^2)), $CellContext`Ey/(
               1 - $CellContext`\[Nu]^2), 0}, {
              0, 0, $CellContext`Ey/(2 (1 + $CellContext`\[Nu]))}}; Return[Dot[
               
               Transpose[$CellContext`B], $CellContext`Cmat, $CellContext`B] \
$CellContext`J]]], Evaluate], $CellContext`Q8ElemStiffStressFull = 
       CompiledFunction[{10, 11., 5468}, {{
           Blank[Real], 2}, 
          Blank[Real], 
          Blank[Real], 
          Blank[Real]}, {{3, 2, 0}, {3, 0, 0}, {3, 0, 1}, {3, 0, 2}, {3, 2, 
         2}}, {{25, {2, 0, 6}}, {0, {2, 0, 2}}, {
          64, {2, 0, 0}}, {{8, 8}, {2, 1, 1}}, {5, {2, 0, 5}}, {
          40, {2, 0, 3}}, {3, {2, 0, 4}}, {0., {3, 0, 3}}, {81, {2, 0, 1}}}, {
         0, 7, 10, 0, 
         14}, {{47, ConstantArray, 3, 0, 3, 2, 1, 1, 3, 2, 4}, {10, 1, 4}, {
          40, 60, 3, 0, 4, 3, 0, 8}, {10, 0, 4}, {16, 4, 8, 4}, {
          47, $CellContext`BCBJQ8Stress, 3, 2, 0, 3, 0, 0, 3, 0, 1, 2, 0, 2, 
           2, 0, 2, 3, 2, 5}, {41, 259, 3, 0, 4, 3, 2, 5, 3, 2, 3}, {10, 1, 
          4}, {40, 60, 3, 0, 4, 3, 0, 8}, {10, 3, 4}, {16, 4, 8, 4}, {10, 5, 
          8}, {40, 60, 3, 0, 8, 3, 0, 9}, {10, 4, 8}, {16, 8, 9, 8}, {40, 57, 
          3, 0, 8, 3, 0, 9}, {19, 9, 8}, {
          47, $CellContext`BCBJQ8Stress, 3, 2, 0, 3, 0, 0, 3, 0, 1, 2, 0, 2, 
           3, 0, 8, 3, 2, 6}, {41, 259, 3, 0, 4, 3, 2, 6, 3, 2, 5}, {10, 1, 
          4}, {40, 60, 3, 0, 4, 3, 0, 8}, {10, 3, 4}, {16, 4, 8, 4}, {10, 5, 
          8}, {40, 60, 3, 0, 8, 3, 0, 5}, {10, 4, 8}, {16, 8, 5, 8}, {40, 57, 
          3, 0, 8, 3, 0, 5}, {
          47, $CellContext`BCBJQ8Stress, 3, 2, 0, 3, 0, 0, 3, 0, 1, 2, 0, 2, 
           3, 0, 5, 3, 2, 7}, {41, 259, 3, 0, 4, 3, 2, 7, 3, 2, 6}, {10, 1, 
          4}, {40, 60, 3, 0, 4, 3, 0, 5}, {10, 3, 4}, {16, 4, 5, 4}, {10, 5, 
          5}, {40, 60, 3, 0, 5, 3, 0, 8}, {10, 4, 5}, {16, 5, 8, 5}, {40, 57, 
          3, 0, 5, 3, 0, 8}, {19, 8, 5}, {
          47, $CellContext`BCBJQ8Stress, 3, 2, 0, 3, 0, 0, 3, 0, 1, 3, 0, 5, 
           2, 0, 2, 3, 2, 8}, {41, 259, 3, 0, 4, 3, 2, 8, 3, 2, 7}, {10, 1, 
          4}, {40, 60, 3, 0, 4, 3, 0, 5}, {10, 6, 4}, {16, 4, 5, 4}, {10, 5, 
          5}, {40, 60, 3, 0, 5, 3, 0, 8}, {10, 4, 5}, {16, 5, 8, 5}, {40, 57, 
          3, 0, 5, 3, 0, 8}, {19, 8, 5}, {10, 5, 8}, {40, 60, 3, 0, 8, 3, 0, 
          6}, {10, 4, 8}, {16, 8, 6, 8}, {40, 57, 3, 0, 8, 3, 0, 6}, {19, 6, 
          8}, {47, $CellContext`BCBJQ8Stress, 3, 2, 0, 3, 0, 0, 3, 0, 1, 3, 0,
            5, 3, 0, 8, 3, 2, 9}, {41, 259, 3, 0, 4, 3, 2, 9, 3, 2, 8}, {10, 
          1, 4}, {40, 60, 3, 0, 4, 3, 0, 5}, {10, 6, 4}, {16, 4, 5, 4}, {10, 
          5, 5}, {40, 60, 3, 0, 5, 3, 0, 6}, {10, 4, 5}, {16, 5, 6, 5}, {40, 
          57, 3, 0, 5, 3, 0, 6}, {19, 6, 5}, {10, 5, 6}, {40, 60, 3, 0, 6, 3, 
          0, 8}, {10, 4, 6}, {16, 6, 8, 6}, {40, 57, 3, 0, 6, 3, 0, 8}, {
          47, $CellContext`BCBJQ8Stress, 3, 2, 0, 3, 0, 0, 3, 0, 1, 3, 0, 5, 
           3, 0, 8, 3, 2, 10}, {41, 259, 3, 0, 4, 3, 2, 10, 3, 2, 9}, {10, 1, 
          4}, {40, 60, 3, 0, 4, 3, 0, 5}, {10, 3, 4}, {16, 4, 5, 4}, {10, 5, 
          8}, {40, 60, 3, 0, 8, 3, 0, 5}, {10, 4, 8}, {16, 8, 5, 8}, {40, 57, 
          3, 0, 8, 3, 0, 5}, {
          47, $CellContext`BCBJQ8Stress, 3, 2, 0, 3, 0, 0, 3, 0, 1, 3, 0, 5, 
           2, 0, 2, 3, 2, 11}, {41, 259, 3, 0, 4, 3, 2, 11, 3, 2, 10}, {10, 1,
           4}, {40, 60, 3, 0, 4, 3, 0, 5}, {10, 6, 4}, {16, 4, 5, 4}, {10, 5, 
          8}, {40, 60, 3, 0, 8, 3, 0, 5}, {10, 4, 8}, {16, 8, 5, 8}, {40, 57, 
          3, 0, 8, 3, 0, 5}, {10, 5, 8}, {40, 60, 3, 0, 8, 3, 0, 6}, {10, 4, 
          8}, {16, 8, 6, 8}, {40, 57, 3, 0, 8, 3, 0, 6}, {19, 6, 8}, {
          47, $CellContext`BCBJQ8Stress, 3, 2, 0, 3, 0, 0, 3, 0, 1, 3, 0, 5, 
           3, 0, 8, 3, 2, 12}, {41, 259, 3, 0, 4, 3, 2, 12, 3, 2, 11}, {10, 1,
           4}, {40, 60, 3, 0, 4, 3, 0, 5}, {10, 6, 4}, {16, 4, 5, 4}, {10, 5, 
          8}, {40, 60, 3, 0, 8, 3, 0, 6}, {10, 4, 8}, {16, 8, 6, 8}, {40, 57, 
          3, 0, 8, 3, 0, 6}, {10, 5, 8}, {40, 60, 3, 0, 8, 3, 0, 7}, {10, 4, 
          8}, {16, 8, 7, 8}, {40, 57, 3, 0, 8, 3, 0, 7}, {
          47, $CellContext`BCBJQ8Stress, 3, 2, 0, 3, 0, 0, 3, 0, 1, 3, 0, 6, 
           3, 0, 7, 3, 2, 13}, {41, 259, 3, 0, 4, 3, 2, 13, 3, 2, 12}, {44, 3,
           5, 6, 7, 8, 9, 10, 11, 12, 3}, {41, 259, 3, 0, 2, 3, 2, 3, 3, 2, 
          5}, {42, "CopyTensor", 3, 2, 5, 3, 2, 4}, {
          42, "CopyTensor", 3, 2, 4, 3, 2, 2}, {1}, {1}}, 
         Function[{$CellContext`nodes, $CellContext`Ey, $CellContext`\[Nu], \
$CellContext`he}, 
          
          Module[{$CellContext`out = 
            ConstantArray[
             0., {8, 8}]}, $CellContext`out = $CellContext`he ((64/
                81) $CellContext`BCBJQ8Stress[$CellContext`nodes, \
$CellContext`Ey, $CellContext`\[Nu], 0, 0] + (40/
                81) $CellContext`BCBJQ8Stress[$CellContext`nodes, \
$CellContext`Ey, $CellContext`\[Nu], 0, -Sqrt[3/5]] + (40/
                81) $CellContext`BCBJQ8Stress[$CellContext`nodes, \
$CellContext`Ey, $CellContext`\[Nu], 0, 
                 Sqrt[3/5]] + (40/
                81) $CellContext`BCBJQ8Stress[$CellContext`nodes, \
$CellContext`Ey, $CellContext`\[Nu], -Sqrt[3/5], 0] + (25/
                81) $CellContext`BCBJQ8Stress[$CellContext`nodes, \
$CellContext`Ey, $CellContext`\[Nu], -Sqrt[3/5], -Sqrt[3/5]] + (25/
                81) $CellContext`BCBJQ8Stress[$CellContext`nodes, \
$CellContext`Ey, $CellContext`\[Nu], -Sqrt[3/5], 
                 Sqrt[3/5]] + (40/
                81) $CellContext`BCBJQ8Stress[$CellContext`nodes, \
$CellContext`Ey, $CellContext`\[Nu], 
                 Sqrt[3/5], 0] + (25/
                81) $CellContext`BCBJQ8Stress[$CellContext`nodes, \
$CellContext`Ey, $CellContext`\[Nu], 
                 Sqrt[3/5], -Sqrt[3/5]] + (25/
                81) $CellContext`BCBJQ8Stress[$CellContext`nodes, \
$CellContext`Ey, $CellContext`\[Nu], 
                 Sqrt[3/5], 
                 Sqrt[3/5]]); Return[$CellContext`out]]], 
         Evaluate], $CellContext`pos = {17, 18, 11, 12, 5, 6, 13, 14}, 
       Attributes[$CellContext`ApplyFixedBC] = {
        HoldAll}, $CellContext`ApplyFixedBC[
         Pattern[$CellContext`nn, 
          Blank[]], 
         Pattern[K, 
          Blank[]], 
         Pattern[$CellContext`F, 
          Blank[]], 
         Pattern[$CellContext`coor, 
          Blank[]], 
         Pattern[$CellContext`x, 
          Blank[]]] := Module[{$CellContext`xyFlag}, $CellContext`xyFlag := If[
            Or[$CellContext`x == "x", $CellContext`x == "X"], 1, 
            If[
             Or[$CellContext`x == "y", $CellContext`x == "Y"], 2, 0]]; Part[K, 
            Part[$CellContext`coor, $CellContext`nn, $CellContext`xyFlag]] = 
          ReplacePart[
            ConstantArray[0, 
             Length[K]], 
            Part[$CellContext`coor, $CellContext`nn, $CellContext`xyFlag] -> 
            1]; Part[$CellContext`F, 
            Part[$CellContext`coor, $CellContext`nn, $CellContext`xyFlag]] = 
          0; Null], $CellContext`ApplyFixedBC[
         Pattern[$CellContext`nn, 
          Blank[Integer]], 
         Pattern[$CellContext`x, 
          Blank[String]]] := 
       Module[{$CellContext`xyFlag}, $CellContext`xyFlag := If[
            Or[$CellContext`x == "x", $CellContext`x == "X"], 1, 
            If[
             Or[$CellContext`x == "y", $CellContext`x == "Y"], 2, 0]]; Part[K, 
            Part[$CellContext`coor, $CellContext`nn, $CellContext`xyFlag]] = 
          ReplacePart[
            ConstantArray[0, 
             Length[K]], 
            Part[$CellContext`coor, $CellContext`nn, $CellContext`xyFlag] -> 
            1]; Part[$CellContext`F, 
            Part[$CellContext`coor, $CellContext`nn, $CellContext`xyFlag]] = 
          0; Null], $CellContext`Q = {0, 1}, 
       Attributes[$CellContext`ApplyForceBC] = {
        HoldAll}, $CellContext`ApplyForceBC[
         Pattern[$CellContext`nn, 
          Blank[]], 
         Pattern[$CellContext`F, 
          Blank[]], 
         Pattern[$CellContext`coor, 
          Blank[]], 
         Pattern[$CellContext`P, 
          Blank[]], 
         Pattern[$CellContext`x, 
          Blank[]]] := Module[{$CellContext`xyFlag}, $CellContext`xyFlag := If[
            Or[$CellContext`x == "x", $CellContext`x == "X"], 1, 
            If[
             Or[$CellContext`x == "y", $CellContext`x == "Y"], 2, 0]]; AddTo[
           Part[$CellContext`F, 
            
            Part[$CellContext`coor, $CellContext`nn, $CellContext`xyFlag]], \
$CellContext`P]; 
         Null], $CellContext`deformed = {{-3.3509213255910525`*^-17, \
-0.4999999999999966}, {2.1076948413189374`*^-16, 1.2765487854009879`*^-15}, {
        4.999999999999999, 0.46098773499571893`}, {
        5.091714699999143, -0.03524073500431829}, {3.393891645861515*^-16, 
        0.5000000000000003}, {4.908285300000856, 0.9647592649956851}, {
        9.999999999999998, 1.5376245299852083`}, {10.12211999999877, 
        1.03506946998523}, {9.877880000001229, 
        2.0350694699852268`}}, $CellContext`Iy = 1/12}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
},
WindowSize->{1270, 1178},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
PrivateNotebookOptions->{"VersionedStylesheet"->{"Default.nb"[8.] -> False}},
ShowCellBracket->Automatic,
ShowSelection->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"11.0 for Mac OS X x86 (32-bit, 64-bit Kernel) (September \
21, 2016)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[1464, 33, 125981, 1982, 711, "Output"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature ZvDLFkRkNAqDXA1VkEYY@#DB *)
