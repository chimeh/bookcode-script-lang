qr{
    (?&abstract_description_of_what_is_being_matched)

    (?(DEFINE)
        (?<abstract_description_of_what_is_being_matched>
            (?&component1)
            (?&component2)
            (?&component3)
            ...
        )
        (?<component1> ... )
        (?<component2> ... )
        (?<component3> ... )
        ...
    )
 }x;
