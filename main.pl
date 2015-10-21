package main
{
    use strict ;
    use warnings ;
    
    BEGIN
    {
        use Cwd ;
        print( getcwd . "\n\n" ) ;
    }

    use constant TRUE => 1 ;
    use constant Debug => TRUE ;
    use constant CONTINUE => TRUE ;

    use lib '../../code' ;
    use lib '../../data' ;
    use lib '.' ;

    use WAP_V ;


    use Data::Dumper ;
    print( Dumper( $WAP_V::self->{ name } ) ) ;
    
    print( "\n\n" ) ;
    
    print( Dumper( WAP_V::new( 'name', 'my_WAP_V_obj' )->{ name } ) ) ;

    print( "\n\n" ) ;

    print( Dumper( WAP_V::get_instance() ) ) ;

    print( "\n\n" ) ;

    print( Dumper( WAP_V::get_instance()->{ name } ) ) ;


}
