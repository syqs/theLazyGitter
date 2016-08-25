BEGIN {
  RS = "\f";
  sep =  "%%%%\n";
}
{
  len = split($0, records, sep);
  print records[1] > "README.md";
  print records[2] > "solution.js";
  for (i = 3; i < len; i++) {
    print records[i] sep > "tmp_problems";
  }
}