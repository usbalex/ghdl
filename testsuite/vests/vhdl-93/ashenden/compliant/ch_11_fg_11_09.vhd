
-- Copyright (C) 1996 Morgan Kaufmann Publishers, Inc

-- This file is part of VESTs (Vhdl tESTs).

-- VESTs is free software; you can redistribute it and/or modify it
-- under the terms of the GNU General Public License as published by the
-- Free Software Foundation; either version 2 of the License, or (at
-- your option) any later version. 

-- VESTs is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
-- FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
-- for more details. 

-- You should have received a copy of the GNU General Public License
-- along with VESTs; if not, write to the Free Software Foundation,
-- Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 

-- ---------------------------------------------------------------------
--
-- $Id: ch_11_fg_11_09.vhd,v 1.2 2001-10-26 16:29:35 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

library ieee;  use ieee.std_logic_1164.all;

               entity bus_module is
                 port ( synch : inout std_ulogic;  -- . . . );
                        -- not in book
                        other_port : in std_ulogic := 'U' );
                 -- end not in book
               end entity bus_module;

--------------------------------------------------

-- not in book

               library ieee;  use ieee.std_logic_1164.all;

               entity bus_based_system is
               end entity bus_based_system;

-- end not in book


               architecture top_level of bus_based_system is

                 signal synch_control : std_logic;
                 -- . . .

               begin

                 synch_control_pull_up : synch_control <= 'H';

                 bus_module_1 : entity work.bus_module(behavioral)
                   port map ( synch => synch_control, -- . . . );
                              -- not in book
                              other_port => open );
                 -- end not in book

                 bus_module_2 : entity work.bus_module(behavioral)
                   port map ( synch => synch_control, -- . . . );
                              -- not in book
                              other_port => open );
                 -- end not in book

                 -- . . .

               end architecture top_level;
