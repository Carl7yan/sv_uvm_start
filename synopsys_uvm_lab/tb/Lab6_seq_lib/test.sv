program automatic test;
import uvm_pkg::*;

`include "test_collection.sv"

initial begin
  // add $timeformat
  $timeformat(-9, 1, "ns", 10);
  run_test();
end

endprogram
