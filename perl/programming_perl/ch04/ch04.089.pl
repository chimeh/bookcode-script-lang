sub check_warehouse {
    our @Current_Inventory;
    my  $widget;
    foreach $widget (@Current_Inventory) {
        say "I have a $widget in stock today.";
    }
}
