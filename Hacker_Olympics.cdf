(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 9.0' *)

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
NotebookDataPosition[      1063,         20]
NotebookDataLength[      3899,        125]
NotebookOptionsPosition[      4285,        113]
NotebookOutlinePosition[      4725,        133]
CellTagsIndexPosition[      4682,        130]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Hacker Olympics 1", "Title"],

Cell["\<\
Leonardo Fibonacci was born around 1170, the exact date is still a mystery. \
However, what he is probably known best for is his numbers, or the Fibonacci \
Sequence. The sequence works like this.Starting with 0 and 1, add the \
previous two numbers together to generate the next number in the sequence. \
So, the pattern looks similar to what' s below.0, 1, 1, 2, 3, 5, 8, 13, 21, \
34 ...

Your job, is to do the following:

1. Continue this sequence until the 500 th number.

2. Strip out every other number from the completed sequence.  So, assuming[0] \
is the index, take out[1], [3], [5], [7] etc.

3. Convert the remaining numbers into alphabet characters. Each character has \
a number associated with it, a = 1, b = 2, c = 3 etc. If the number is \
greater than 26, then divide it by 26 and use the remainder as your alphabet \
character. If the number or remainder is 0, then this translates to the 26 th \
character, since 26 divided by 26 would have a remainder of 0. For another \
example, if the number is 30, then divide by 26, leaving a remainder of 4. \
The proper character is 'd'.

4. Lastly, remove all consonants and concatenate into one string (Note : ' Y' \
is considered a consonant).\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Select", "[", 
   RowBox[{
    RowBox[{"ReplaceAll", "[", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{"Mod", "[", 
          RowBox[{"#", ",", "26"}], "]"}], "&"}], "/@", 
        RowBox[{"Drop", "[", 
         RowBox[{
          RowBox[{"Fibonacci", "[", 
           RowBox[{"Range", "@", "500"}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"1", ",", "500", ",", "2"}], "}"}]}], "]"}]}], "/.", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"Transpose", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"CharacterRange", "[", 
              RowBox[{"\"\<a\>\"", ",", "\"\<z\>\""}], "]"}], ",", 
             RowBox[{"Range", "[", 
              RowBox[{"1", ",", "26"}], "]"}]}], "}"}], "]"}], "/.", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"a_", ",", "b_"}], "}"}], "\[RuleDelayed]", 
           RowBox[{"{", 
            RowBox[{"b", "\[Rule]", "a"}], "}"}]}]}], "//", "Flatten"}], 
        ")"}]}], ",", " ", 
      RowBox[{"0", "\[Rule]", "z"}]}], "]"}], ",", 
    RowBox[{
     RowBox[{"StringMatchQ", "[", 
      RowBox[{
       RowBox[{"ToString", "@", "#"}], ",", 
       RowBox[{"RegularExpression", "[", "\"\<[aeiou]\>\"", "]"}]}], "]"}], 
     "&"}]}], "]"}], "//", "StringJoin"}]], "Input"],

Cell[BoxData["\<\"\
aueeuaeauuaeaueeuaeauuaeaueeuaeauuaeaueeuaeauuaeaueeuaeauuaeaueeuaeauuae\"\>"]\
, "Output"]
}, Open  ]]
}, Open  ]]
},
WindowSize->{683, 708},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->False,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"9.0 for Linux x86 (32-bit) (February 7, 2013)",
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
Cell[CellGroupData[{
Cell[1485, 35, 34, 0, 93, "Title"],
Cell[1522, 37, 1233, 25, 451, "Text"],
Cell[CellGroupData[{
Cell[2780, 66, 1363, 39, 179, "Input"],
Cell[4146, 107, 111, 2, 55, "Output"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature BvTDyhmBBAh3uAK@BXzdDRTC *)
