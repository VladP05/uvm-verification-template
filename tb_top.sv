`timescale 1ns/1ps

import uvm_pkg::*;
`include "uvm_macros.svh"
import name_pkg::*; //change!!

module tb_top();
    
    //declaration and logic for clk and rst_n signals

    //connect tb signals to interface signals

    //connect interface signals to module signals

    initial begin

        uvm_config_db #(virtual name_if)::set(null, "*", "vif", /*vif_instance_name*/);

        run_test("test"); //change!!

    end

endmodule : tb_top