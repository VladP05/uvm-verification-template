class name_sequence extends uvm_sequence #(name_seq_item);
    `uvm_object_utils(name_sequence)
    
    function new(string name = "name_sequence");
        super.new(name);
    endfunction

    virtual task body();

        req = name_seq_item::type_id::create("req");
        start_item(req);

        //sequence logic

        finish_item(req);


    endtask : body

endclass : name_sequence