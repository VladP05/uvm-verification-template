class name_seq_item extends uvm_sequence_item;
    `uvm_object_utils(name_seq_item)

    //signals

    function new(string name = "name_seq_item");
        super.new(name);
    endfunction

    //constraints

endclass : name_seq_item