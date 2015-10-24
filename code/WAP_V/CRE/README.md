WAP SYS V -- CRE section
---
This section has the code for the CRE (Common Runtime Engine) section.

This section has the necessary code to achieve Independence on the underlying engine and its particularities

This section is composed of the following parts:

 * **core**  --  This module implements the base class / package under which posterior modules are loaded
    * **security**  --  This module implements then security layer, accessing the relevant sub-systems on the back end layer
        * **SAM**  (Security Access Manager)  --  This module implements the functions to validate credentials
        * **ACL**   (Access Control Lists)  --  This module implements the functions to verify / validate accessing rights
    * **code_start**  --  This module implements the global functions and data structures for code start-up and code shutdown
    * **code_init**  -- This module implements the global functions and data structures for code initialization (performed module by module, after module initial loading), and loads the **init** module
    * **init**  -- This module is loaded by the **code_init** module and is responsible by the loadding and registration of all subsequente CRE modules. After all are loaded, it calls the necessary functions at the **code_start** module to perform the **COLD_START** action of all **CRE** modules and, afterwards, it calls the necessary functions  at **code_init** to perform the **INITIALIZATION** action of all **CRE** modules.
        * **debug_logger**  --  This module implements the _syslog_ access interface and _log instance container_ for all defined _log channels_, the load of the **debug_logging** module and any existing **Log-x** _log channel_ definition module
            * **debug_logging**  --  This module implements the **DEBUG** and **LOG** functions
            * **Log-1**  --  _Log channel_ 'Log-1' definition and instancialization module
            * **Log-2**  --  _Log channel_ 'Log-2' definition and instancialization  module
            *  ....
            * **Log-n**  --  _Log channel_ 'Log-n' definition and instancialization module
        * **code_runner**  -- This module implements the _code_runner_ execution layer, that abstracts from the underlying existing features
            * **exception_handlers**  --  This module implements / defines _exception_handlers_ for exception's processing
                * **ULS_exceptions**  --  
                * **ULS_handlers**  --  
            * **runtime_engine**  --
                * **code_interrupts**  --  
                * **code_scheduler**  --  
                * **code_threads**  --  
                * **code_processes**  --  
                * **code_interpreters**  --  
        * **error_handler**  --  
            * **bootstrap**  --  
                * **app_args**  --  
                * **p_state**  --  
                    * **p_session**  --  
                        * **base_static_class**  --  
                        * **base data_class**  --  
                        * **base_std_class**  --  
                * **static_config**  --  
                * **toolbox**  --  
                * **app_engines**  --
                    * **app_engine_1**  --  
                    * **app_engine_2**  --  
                    *   ....
                    * **app_engine_n**  --  
                * **arg_parser**  --  
            * **boot_loader**  --  

 