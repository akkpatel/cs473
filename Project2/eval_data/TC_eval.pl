#usage is that perl TC_eval.pl OUTPUTFILENAME

open (INPUTFILE,$ARGV[0]) or die "cannot open input file\n";

$R=0;
$S=0;
$TruePos=0;
$TrueNeg=0;
$FalsePos=0;
$FalseNeg=0;

while (<INPUTFILE>){
  ($fileId,$fileId2)=split;
  if ($fileId=~/r_/){
  	$R++;
    if ($fileId2=~/r/){
      $TruePos++;
    }else{
	$FalseNeg++;
     	
    }
  }else{
  	$S++;
    if ($fileId2=~/r/){
      $FalsePos++;	
    }else{
    	$TrueNeg++;  
    }
  }
}
print "Total Number of regular emails are ".$R." \n";
print "Total Number of spam emails are ".$S." \n";
print "The value of a is ".$TruePos." \n";
print "The value of d is ".$TrueNeg." \n";
print "The value of b is ".$FalsePos." \n";
print "The value of c is ".$FalseNeg." \n";
