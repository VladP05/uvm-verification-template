class name_sequencer extends uvm_sequencer #(name_seq_item);
    `uvm_component_utils(name_sequencer)
    
    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

endclass : name_sequencer