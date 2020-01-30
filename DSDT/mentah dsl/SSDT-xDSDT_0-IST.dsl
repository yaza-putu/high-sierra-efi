/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-xDSDT_0-IST.aml, Tue Jan 28 17:04:28 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000038C (908)
 *     Revision         0x01
 *     Checksum         0xB6
 *     OEM ID           "AMI"
 *     OEM Table ID     "IST"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "MSFT"
 *     Compiler Version 0x03000001 (50331649)
 */
DefinitionBlock ("", "SSDT", 1, "AMI", "IST", 0x00000001)
{
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_PR_.APSS, PkgObj)
    External (_PR_.P000, ProcessorObj)
    External (_PR_.P001, ProcessorObj)
    External (_PR_.P002, ProcessorObj)
    External (_PR_.P003, ProcessorObj)
    External (_PR_.PDCV, IntObj)
    External (_PR_.PTCI, PkgObj)
    External (_PR_.TSSI, PkgObj)
    External (_PR_.TSSM, PkgObj)
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (MDBG, MethodObj)    // Imported: 1 Arguments
    External (PSTE, IntObj)
    External (TSTE, IntObj)

    Scope (\_PR.P000)
    {
        Name (_PCT, Package (0x02)  // _PCT: Performance Control
        {
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000199, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x10,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000198, // Address
                    ,)
            }
        })
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (APSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\PSTE)
        }

        Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x00, 
                0xFE, 
                0x04
            }
        })
        Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
        {
            Return (\TSTE)
        }

        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            If (And (PDCV, 0x04))
            {
                Return (Package (0x02)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }
                })
            }

            Return (PTCI)
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            If (And (PDCV, 0x04))
            {
                Return (TSSM)
            }

            Return (TSSI)
        }
    }

    Scope (\_PR.P001)
    {
        Name (_PCT, Package (0x02)  // _PCT: Performance Control
        {
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000199, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x10,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000198, // Address
                    ,)
            }
        })
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (APSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\PSTE)
        }

        Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x00, 
                0xFE, 
                0x04
            }
        })
        Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
        {
            Return (\TSTE)
        }

        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            If (And (PDCV, 0x04))
            {
                Return (Package (0x02)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }
                })
            }

            Return (PTCI)
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            If (And (PDCV, 0x04))
            {
                Return (TSSM)
            }

            Return (TSSI)
        }
    }

    Scope (\_PR.P002)
    {
        Name (_PCT, Package (0x02)  // _PCT: Performance Control
        {
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000199, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x10,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000198, // Address
                    ,)
            }
        })
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (APSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\PSTE)
        }

        Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x00, 
                0xFE, 
                0x04
            }
        })
        Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
        {
            Return (\TSTE)
        }

        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            If (And (PDCV, 0x04))
            {
                Return (Package (0x02)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }
                })
            }

            Return (PTCI)
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            If (And (PDCV, 0x04))
            {
                Return (TSSM)
            }

            Return (TSSI)
        }
    }

    Scope (\_PR.P003)
    {
        Name (_PCT, Package (0x02)  // _PCT: Performance Control
        {
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000199, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x10,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000198, // Address
                    ,)
            }
        })
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (APSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\PSTE)
        }

        Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x00, 
                0xFE, 
                0x04
            }
        })
        Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
        {
            Return (\TSTE)
        }

        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            If (And (PDCV, 0x04))
            {
                Return (Package (0x02)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }
                })
            }

            Return (PTCI)
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            If (And (PDCV, 0x04))
            {
                Return (TSSM)
            }

            Return (TSSI)
        }
    }
}

