package WAP_V
{
   use strict ;
   no warnings ;
   
   use Cwd ();

   use WAP_V::constants ;
   
#   print( main::Debug . "\n\n" ) ;
#   print( WAP_V::constants::TRUE . "\n\n" ) ;

   
   if( main::Debug == WAP_V::constants::TRUE )
   {
        print( 'DEBUG: WAP_V module included' . "\n" ) ;
        print( 'DEBUG: ' . "\n" ) ;
        print( 'DEBUG: CWD: ' . Cwd::getcwd . "\n" ) ;
        print( 'DEBUG: ' . "\n" ) ;
   }

   # -------------------------
   # DEFINE the $self property
   # -------------------------
   our $myself = new( 'name', __PACKAGE__ ) ;

   # --------------------------
   # INSTANCE creation operator
   # --------------------------
   #
   # This method creates and returns a new instance of the module
   # populated with the data passed as parameters to the new method
   
   sub new
   {
        my $instance = { @_ } ;
        bless( $instance, __PACKAGE__ ) ;
        return( $instance ) ;
   }
   
   
   # -----------------------
   # METHOD:  get_instance()
   # -----------------------
   #
   # This method returns the default object of the module
   
   sub get_instance()
   {
        return( $myself ) ;
   }

}

WAP_V::constants::CONTINUE ;
