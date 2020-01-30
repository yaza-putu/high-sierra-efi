/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of DSDT.aml, Tue Jan 28 17:04:28 2020
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x00007A13 (31251)
 *     Revision         0x02
 *     Checksum         0x32
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "SLIC-BPC"
 *     OEM Revision     0x00000007 (7)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20051117 (537202967)
 */
DefinitionBlock ("", "DSDT", 2, "HPQOEM", "SLIC-BPC", 0x00000007)
{
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (_SB_.WMID.WMBB, MethodObj)    // 1 Arguments
    External (MDBG, MethodObj)    // Imported: 1 Arguments

    Name (SP1O, 0x2E)
    Name (IO1B, 0x0620)
    Name (IO1L, 0x20)
    Name (IO2B, 0x0800)
    Name (IO2L, 0x0100)
    Name (IO3B, 0x0600)
    Name (IO3L, 0x0F)
    Name (IO4B, 0x0610)
    Name (IO4L, 0x10)
    Name (IO5B, 0x0680)
    Name (IO5L, 0x10)
    Name (IO6B, 0x0690)
    Name (IO6L, 0x10)
    Name (IO7B, 0x0640)
    Name (IO7L, 0x20)
    Name (IO8B, 0x0660)
    Name (IO8L, 0x20)
    Name (IOES, Zero)
    Name (TCBR, 0xFED08000)
    Name (TCLT, 0x1000)
    Name (SRCB, 0xFED1C000)
    Name (SRCL, 0x4000)
    Name (SUSW, 0xFF)
    Name (PMBS, 0x0400)
    Name (PMLN, 0x80)
    Name (SMIP, 0xB2)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x00100000)
    Name (PM30, 0x0430)
    Name (SMBS, 0x1180)
    Name (SMBL, 0x20)
    Name (HPTB, 0xFED00000)
    Name (HPTC, 0xFED1F404)
    Name (PEBS, 0xE0000000)
    Name (PELN, 0x10000000)
    Name (LAPB, 0xFEE00000)
    Name (VTDS, 0xFED90000)
    Name (VTDL, 0x4000)
    Name (ACPH, 0xDE)
    Name (ASSB, Zero)
    Name (AOTB, Zero)
    Name (AAXB, Zero)
    Name (PEHP, One)
    Name (SHPC, Zero)
    Name (PEPM, One)
    Name (PEER, One)
    Name (PECS, One)
    Name (ITKE, Zero)
    Name (MBEC, 0xFFFF)
    Name (TOBS, 0x0460)
    Name (SUCC, One)
    Name (NVLD, 0x02)
    Name (CRIT, 0x04)
    Name (NCRT, 0x06)
    Name (LDST, One)
    Name (DSSP, Zero)
    Name (FHPP, Zero)
    Name (SMIT, 0xB2)
    Name (OFST, 0x35)
    Name (OTPM, One)
    Name (HESD, One)
    Name (OCED, Zero)
    Name (TPMF, Zero)
    Name (TMF1, Zero)
    Name (TMF2, Zero)
    Name (TMF3, Zero)
    Name (GPBS, 0x0500)
    Name (GPLN, 0x80)
    Name (PICM, Zero)
    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        If (Arg0)
        {
            Store (0xAA, DBG8)
        }
        Else
        {
            Store (0xAC, DBG8)
        }

        Store (Arg0, PICM)
    }

    Name (OSVR, Ones)
    Method (OSFL, 0, NotSerialized)
    {
        If (LNotEqual (OSVR, Ones))
        {
            Return (OSVR)
        }

        If (LEqual (PICM, Zero))
        {
            Store (0xAC, DBG8)
        }

        Store (One, OSVR)
        If (CondRefOf (_OSI, Local0))
        {
            If (_OSI ("Linux"))
            {
                Store (0x03, OSVR)
            }

            If (_OSI ("Windows 2001"))
            {
                Store (0x04, OSVR)
            }

            If (_OSI ("Windows 2001.1"))
            {
                Store (0x05, OSVR)
            }

            If (_OSI ("FreeBSD"))
            {
                Store (0x06, OSVR)
            }

            If (_OSI ("HP-UX"))
            {
                Store (0x07, OSVR)
            }

            If (_OSI ("OpenVMS"))
            {
                Store (0x08, OSVR)
            }

            If (_OSI ("Windows 2001 SP1"))
            {
                Store (0x09, OSVR)
            }

            If (_OSI ("Windows 2001 SP2"))
            {
                Store (0x0A, OSVR)
            }

            If (_OSI ("Windows 2001 SP3"))
            {
                Store (0x0B, OSVR)
            }

            If (_OSI ("Windows 2006"))
            {
                Store (0x0C, OSVR)
            }

            If (_OSI ("Windows 2006 SP1"))
            {
                Store (0x0D, OSVR)
            }

            If (_OSI ("Windows 2009"))
            {
                Store (0x0E, OSVR)
            }
        }
        Else
        {
            If (MCTH (_OS, "Microsoft Windows NT"))
            {
                Store (Zero, OSVR)
            }

            If (MCTH (_OS, "Microsoft Windows"))
            {
                Store (One, OSVR)
            }

            If (MCTH (_OS, "Microsoft WindowsME: Millennium Edition"))
            {
                Store (0x02, OSVR)
            }

            If (MCTH (_OS, "Linux"))
            {
                Store (0x03, OSVR)
            }

            If (MCTH (_OS, "FreeBSD"))
            {
                Store (0x06, OSVR)
            }

            If (MCTH (_OS, "HP-UX"))
            {
                Store (0x07, OSVR)
            }

            If (MCTH (_OS, "OpenVMS"))
            {
                Store (0x08, OSVR)
            }
        }

        Return (OSVR)
    }

    Method (MCTH, 2, NotSerialized)
    {
        If (LLess (SizeOf (Arg0), SizeOf (Arg1)))
        {
            Return (Zero)
        }

        Add (SizeOf (Arg0), One, Local0)
        Name (BUF0, Buffer (Local0){})
        Name (BUF1, Buffer (Local0){})
        Store (Arg0, BUF0)
        Store (Arg1, BUF1)
        While (Local0)
        {
            Decrement (Local0)
            If (LNotEqual (DerefOf (Index (BUF0, Local0)), DerefOf (Index (BUF1, Local0))))
            {
                Return (Zero)
            }
        }

        Return (One)
    }

    Name (PRWP, Package (0x02)
    {
        Zero, 
        Zero
    })
    Method (GPRW, 2, NotSerialized)
    {
        Store (Arg0, Index (PRWP, Zero))
        Store (ShiftLeft (SS1, One), Local0)
        Or (Local0, ShiftLeft (SS2, 0x02), Local0)
        Or (Local0, ShiftLeft (SS3, 0x03), Local0)
        Or (Local0, ShiftLeft (SS4, 0x04), Local0)
        If (And (ShiftLeft (One, Arg1), Local0))
        {
            Store (Arg1, Index (PRWP, One))
        }
        Else
        {
            ShiftRight (Local0, One, Local0)
            If (LOr (LEqual (OSFL (), One), LEqual (OSFL (), 0x02)))
            {
                FindSetLeftBit (Local0, Index (PRWP, One))
            }
            Else
            {
                FindSetRightBit (Local0, Index (PRWP, One))
            }
        }

        Return (PRWP)
    }

    Name (WAKP, Package (0x02)
    {
        Zero, 
        Zero
    })
    OperationRegion (DEB0, SystemIO, 0x80, One)
    Field (DEB0, ByteAcc, NoLock, Preserve)
    {
        DBG8,   8
    }

    OperationRegion (DEB1, SystemIO, 0x90, 0x02)
    Field (DEB1, WordAcc, NoLock, Preserve)
    {
        DBG9,   16
    }

    Name (SS1, One)
    Name (SS2, Zero)
    Name (SS3, One)
    Name (SS4, One)
    Name (IOST, 0x4401)
    Name (TOPM, 0x00000000)
    Name (ROMS, 0xFFE00000)
    Name (VGAF, One)
    Scope (_SB)
    {
        Name (PR00, Package (0x17)
        {
            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x03, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKA, 
                Zero
            }
        })
        Name (AR00, Package (0x17)
        {
            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                Zero, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x03, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x10
            }
        })
        Name (PR20, Package (0x0C)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                One, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x02, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x03, 
                LNKF, 
                Zero
            }
        })
        Name (AR20, Package (0x0C)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                One, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x02, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x03, 
                Zero, 
                0x15
            }
        })
        Name (PR11, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR11, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR12, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR12, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR13, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR13, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR14, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR14, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PR15, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR15, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR16, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR16, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR17, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR17, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR18, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                Zero
            }
        })
        Name (AR18, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PR01, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR01, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR02, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR02, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR03, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR03, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                Zero
            }
        })
        Name (AR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,5,6,7,10,11,12,14,15}
        })
        Alias (PRSA, PRSB)
        Name (PRSC, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,5,6,10,11,12,14,15}
        })
        Alias (PRSC, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03"))  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            Method (^BN00, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (BN00 ())
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR00)
                }

                Return (PR00)
            }

            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
            {
                If (LOr (LEqual (OSFL (), One), LEqual (OSFL (), 0x02)))
                {
                    Return (0x02)
                }
                Else
                {
                    Return (0x03)
                }
            }

            Device (MCH)
            {
                Name (_HID, EisaId ("PNP0C01"))  // _HID: Hardware ID
                Name (_UID, 0x0A)  // _UID: Unique ID
                Name (MCHR, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFED10000,         // Address Base
                        0x0000A000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x1FE00000,         // Address Length
                        _Y00)
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00001000,         // Address Length
                        _Y01)
                    Memory32Fixed (ReadWrite,
                        0xFED20000,         // Address Base
                        0x00020000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFEE00000,         // Address Base
                        0x00010000,         // Address Length
                        )
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    CreateDWordField (MCHR, \_SB.PCI0.MCH._Y00._BAS, PCIB)  // _BAS: Base Address
                    CreateDWordField (MCHR, \_SB.PCI0.MCH._Y00._LEN, PCIL)  // _LEN: Length
                    If (LNotEqual (PEXB, Zero))
                    {
                        Store (PEXB, PCIB)
                        Store (PEXL, PCIL)
                    }
                    Else
                    {
                        Store (PEBS, PCIB)
                        Store (PELN, PCIL)
                    }

                    CreateDWordField (MCHR, \_SB.PCI0.MCH._Y01._BAS, VTCB)  // _BAS: Base Address
                    CreateDWordField (MCHR, \_SB.PCI0.MCH._Y01._LEN, VTCL)  // _LEN: Length
                    If (LNotEqual (VTDB, Zero))
                    {
                        Store (VTDB, VTCB)
                        Store (VTLN, VTCL)
                    }
                    Else
                    {
                        Store (VTDS, VTCB)
                        Store (VTDL, VTCL)
                    }

                    Return (MCHR)
                }
            }

            OperationRegion (NBNV, SystemMemory, 0xCF513D98, 0x0100)
            Field (NBNV, AnyAcc, Lock, Preserve)
            {
                NBSG,   32, 
                Offset (0x10), 
                PEXB,   32, 
                PEXL,   32, 
                MCHB,   32, 
                MCHL,   32, 
                VTDB,   32, 
                VTLN,   32
            }

            Method (NPTS, 1, NotSerialized)
            {
            }

            Method (NWAK, 1, NotSerialized)
            {
            }

            Name (CPRB, One)
            Name (LVGA, 0x55)
            Name (BRB, 0x0000)
            Name (BRL, 0x0100)
            Name (IOB, 0x1000)
            Name (IOL, 0xF000)
            Name (MBB, 0xD0000000)
            Name (MBL, 0x30000000)
            Name (MABL, 0x00000000)
            Name (MABH, 0x00000000)
            Name (MALL, 0x00000000)
            Name (MALH, 0x00000000)
            Name (MAML, 0x00000000)
            Name (MAMH, 0x00000000)
            Name (CRS1, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x007F,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0080,             // Length
                    ,, _Y02)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x03AF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x03B0,             // Length
                    ,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x03E0,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0918,             // Length
                    ,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0000,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0000,             // Length
                    ,, _Y04, TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0x0FFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0300,             // Length
                    ,, _Y03, TypeStatic, DenseTranslation)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y05, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x02000000,         // Range Minimum
                    0xFFDFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xFDFC0000,         // Length
                    ,, _Y06, AddressRangeMemory, TypeStatic)
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000000000000, // Range Minimum
                    0x0000000000000000, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000000, // Length
                    ,, _Y07, AddressRangeMemory, TypeStatic)
            })
            Name (CRS2, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0080,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0080,             // Length
                    ,, _Y08)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0000,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0000,             // Length
                    ,, _Y0A, TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0000,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0000,             // Length
                    ,, _Y09, TypeStatic, DenseTranslation)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y0B, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x80000000,         // Range Minimum
                    0xFFFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x80000000,         // Length
                    ,, _Y0C, AddressRangeMemory, TypeStatic)
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000000000000, // Range Minimum
                    0x0000000000000000, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000000, // Length
                    ,, _Y0D, AddressRangeMemory, TypeStatic)
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                BreakPoint
                If (CPRB)
                {
                    CreateWordField (CRS1, \_SB.PCI0._Y02._MIN, MIN0)  // _MIN: Minimum Base Address
                    CreateWordField (CRS1, \_SB.PCI0._Y02._MAX, MAX0)  // _MAX: Maximum Base Address
                    CreateWordField (CRS1, \_SB.PCI0._Y02._LEN, LEN0)  // _LEN: Length
                    Store (BRB, MIN0)
                    Store (BRL, LEN0)
                    Store (LEN0, Local0)
                    Add (MIN0, Decrement (Local0), MAX0)
                    CreateWordField (CRS1, \_SB.PCI0._Y03._MIN, MIN1)  // _MIN: Minimum Base Address
                    CreateWordField (CRS1, \_SB.PCI0._Y03._MAX, MAX1)  // _MAX: Maximum Base Address
                    CreateWordField (CRS1, \_SB.PCI0._Y03._LEN, LEN1)  // _LEN: Length
                    If (LEqual (IOB, 0x1000))
                    {
                        Store (IOL, Local0)
                        Add (IOB, Decrement (Local0), MAX1)
                        Subtract (MAX1, MIN1, Local0)
                        Add (Local0, One, LEN1)
                    }
                    Else
                    {
                        Store (IOB, MIN1)
                        Store (IOL, LEN1)
                        Store (LEN1, Local0)
                        Add (MIN1, Decrement (Local0), MAX1)
                    }

                    If (LOr (LEqual (LVGA, One), LEqual (LVGA, 0x55)))
                    {
                        If (VGAF)
                        {
                            CreateWordField (CRS1, \_SB.PCI0._Y04._MIN, IMN1)  // _MIN: Minimum Base Address
                            CreateWordField (CRS1, \_SB.PCI0._Y04._MAX, IMX1)  // _MAX: Maximum Base Address
                            CreateWordField (CRS1, \_SB.PCI0._Y04._LEN, ILN1)  // _LEN: Length
                            Store (0x03B0, IMN1)
                            Store (0x03DF, IMX1)
                            Store (0x30, ILN1)
                            CreateDWordField (CRS1, \_SB.PCI0._Y05._MIN, VMN1)  // _MIN: Minimum Base Address
                            CreateDWordField (CRS1, \_SB.PCI0._Y05._MAX, VMX1)  // _MAX: Maximum Base Address
                            CreateDWordField (CRS1, \_SB.PCI0._Y05._LEN, VLN1)  // _LEN: Length
                            Store (0x000A0000, VMN1)
                            Store (0x000BFFFF, VMX1)
                            Store (0x00020000, VLN1)
                            Store (Zero, VGAF)
                        }
                    }

                    CreateDWordField (CRS1, \_SB.PCI0._Y06._MIN, MIN3)  // _MIN: Minimum Base Address
                    CreateDWordField (CRS1, \_SB.PCI0._Y06._MAX, MAX3)  // _MAX: Maximum Base Address
                    CreateDWordField (CRS1, \_SB.PCI0._Y06._LEN, LEN3)  // _LEN: Length
                    Store (MBB, MIN3)
                    Store (MBL, LEN3)
                    Store (LEN3, Local0)
                    Add (MIN3, Decrement (Local0), MAX3)
                    If (LOr (MALH, MALL))
                    {
                        CreateDWordField (CRS1, \_SB.PCI0._Y07._MIN, MN8L)  // _MIN: Minimum Base Address
                        Add (0xB4, 0x04, Local0)
                        CreateDWordField (CRS1, Local0, MN8H)
                        Store (MABL, MN8L)
                        Store (MABH, MN8H)
                        CreateDWordField (CRS1, \_SB.PCI0._Y07._MAX, MX8L)  // _MAX: Maximum Base Address
                        Add (0xBC, 0x04, Local1)
                        CreateDWordField (CRS1, Local1, MX8H)
                        CreateDWordField (CRS1, \_SB.PCI0._Y07._LEN, LN8L)  // _LEN: Length
                        Add (0xCC, 0x04, Local2)
                        CreateDWordField (CRS1, Local2, LN8H)
                        Store (MABL, MN8L)
                        Store (MABH, MN8H)
                        Store (MALL, LN8L)
                        Store (MALH, LN8H)
                        Store (MAML, MX8L)
                        Store (MAMH, MX8H)
                    }

                    Return (CRS1)
                }
                Else
                {
                    CreateWordField (CRS2, \_SB.PCI0._Y08._MIN, MIN2)  // _MIN: Minimum Base Address
                    CreateWordField (CRS2, \_SB.PCI0._Y08._MAX, MAX2)  // _MAX: Maximum Base Address
                    CreateWordField (CRS2, \_SB.PCI0._Y08._LEN, LEN2)  // _LEN: Length
                    Store (BRB, MIN2)
                    Store (BRL, LEN2)
                    Store (LEN2, Local1)
                    Add (MIN2, Decrement (Local1), MAX2)
                    CreateWordField (CRS2, \_SB.PCI0._Y09._MIN, MIN4)  // _MIN: Minimum Base Address
                    CreateWordField (CRS2, \_SB.PCI0._Y09._MAX, MAX4)  // _MAX: Maximum Base Address
                    CreateWordField (CRS2, \_SB.PCI0._Y09._LEN, LEN4)  // _LEN: Length
                    Store (IOB, MIN4)
                    Store (IOL, LEN4)
                    Store (LEN4, Local1)
                    Add (MIN4, Decrement (Local1), MAX4)
                    If (LVGA)
                    {
                        CreateWordField (CRS2, \_SB.PCI0._Y0A._MIN, IMN2)  // _MIN: Minimum Base Address
                        CreateWordField (CRS2, \_SB.PCI0._Y0A._MAX, IMX2)  // _MAX: Maximum Base Address
                        CreateWordField (CRS2, \_SB.PCI0._Y0A._LEN, ILN2)  // _LEN: Length
                        Store (0x03B0, IMN2)
                        Store (0x03DF, IMX2)
                        Store (0x30, ILN2)
                        CreateDWordField (CRS2, \_SB.PCI0._Y0B._MIN, VMN2)  // _MIN: Minimum Base Address
                        CreateDWordField (CRS2, \_SB.PCI0._Y0B._MAX, VMX2)  // _MAX: Maximum Base Address
                        CreateDWordField (CRS2, \_SB.PCI0._Y0B._LEN, VLN2)  // _LEN: Length
                        Store (0x000A0000, VMN2)
                        Store (0x000BFFFF, VMX2)
                        Store (0x00020000, VLN2)
                    }

                    CreateDWordField (CRS2, \_SB.PCI0._Y0C._MIN, MIN5)  // _MIN: Minimum Base Address
                    CreateDWordField (CRS2, \_SB.PCI0._Y0C._MAX, MAX5)  // _MAX: Maximum Base Address
                    CreateDWordField (CRS2, \_SB.PCI0._Y0C._LEN, LEN5)  // _LEN: Length
                    Store (MBB, MIN5)
                    Store (MBL, LEN5)
                    Store (LEN5, Local1)
                    Add (MIN5, Decrement (Local1), MAX5)
                    If (LOr (MALH, MALL))
                    {
                        CreateDWordField (CRS2, \_SB.PCI0._Y0D._MIN, MN9L)  // _MIN: Minimum Base Address
                        Add (0x72, 0x04, Local0)
                        CreateDWordField (CRS2, Local0, MN9H)
                        CreateDWordField (CRS2, \_SB.PCI0._Y0D._MAX, MX9L)  // _MAX: Maximum Base Address
                        Add (0x7A, 0x04, Local1)
                        CreateDWordField (CRS2, Local1, MX9H)
                        CreateDWordField (CRS2, \_SB.PCI0._Y0D._LEN, LN9L)  // _LEN: Length
                        Add (0x8A, 0x04, Local2)
                        CreateDWordField (CRS2, Local2, LN9H)
                        Store (MABL, MN9L)
                        Store (MABH, MN9H)
                        Store (MALL, LN9L)
                        Store (MALH, LN9H)
                        Store (MAML, MX9L)
                        Store (MAMH, MX9H)
                    }

                    Return (CRS2)
                }
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Name (SUPP, Zero)
                Name (CTRL, Zero)
                CreateDWordField (Arg3, Zero, CDW1)
                CreateDWordField (Arg3, 0x04, CDW2)
                CreateDWordField (Arg3, 0x08, CDW3)
                If (LEqual (Arg0, ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */))
                {
                    Store (CDW2, SUPP)
                    Store (CDW3, CTRL)
                    If (LNotEqual (And (SUPP, 0x16), 0x16))
                    {
                        And (CTRL, 0x1E, CTRL)
                    }

                    If (LNot (PEHP))
                    {
                        And (CTRL, 0x1E, CTRL)
                    }

                    If (LNot (SHPC))
                    {
                        And (CTRL, 0x1D, CTRL)
                    }

                    If (LNot (PEPM))
                    {
                        And (CTRL, 0x1B, CTRL)
                    }

                    If (LNot (PEER))
                    {
                        And (CTRL, 0x15, CTRL)
                    }

                    If (LNot (PECS))
                    {
                        And (CTRL, 0x0F, CTRL)
                    }

                    If (LNotEqual (Arg1, One))
                    {
                        Or (CDW1, 0x08, CDW1)
                    }

                    If (LNotEqual (CDW3, CTRL))
                    {
                        Or (CDW1, 0x10, CDW1)
                    }

                    Store (CTRL, CDW3)
                    Return (Arg3)
                }
                Else
                {
                    Or (CDW1, 0x04, CDW1)
                    Return (Arg3)
                }
            }

            Device (SBRG)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                Method (SPTS, 1, NotSerialized)
                {
                    Store (One, PS1S)
                    Store (One, PS1E)
                    Store (One, SLPS)
                }

                Method (SWAK, 1, NotSerialized)
                {
                    Store (Zero, SLPS)
                    Store (Zero, PS1E)
                    If (RTCS){}
                    Else
                    {
                        Notify (PWRB, 0x02)
                    }
                }

                OperationRegion (APMP, SystemIO, SMIP, 0x02)
                Field (APMP, ByteAcc, NoLock, Preserve)
                {
                    APMC,   8, 
                    APMS,   8
                }

                Field (APMP, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x01), 
                        ,   1, 
                    BRTC,   1
                }

                OperationRegion (SMIE, SystemIO, PM30, 0x08)
                Field (SMIE, ByteAcc, NoLock, Preserve)
                {
                        ,   4, 
                    PS1E,   1, 
                        ,   31, 
                    PS1S,   1, 
                    Offset (0x08)
                }

                Scope (\_SB)
                {
                    Name (SLPS, Zero)
                    OperationRegion (PMS0, SystemIO, PMBS, 0x04)
                    Field (PMS0, ByteAcc, NoLock, Preserve)
                    {
                            ,   10, 
                        RTCS,   1, 
                            ,   3, 
                        PEXS,   1, 
                        WAKS,   1, 
                        Offset (0x03), 
                        PWBT,   1, 
                        Offset (0x04)
                    }

                    Device (SLPB)
                    {
                        Name (_HID, EisaId ("PNP0C0E"))  // _HID: Hardware ID
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (LNotEqual (SUSW, 0xFF))
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                        {
                            If (LNotEqual (SUSW, 0xFF))
                            {
                                Return (Package (0x02)
                                {
                                    SUSW, 
                                    0x04
                                })
                            }
                            Else
                            {
                                Return (Package (0x02)
                                {
                                    Zero, 
                                    Zero
                                })
                            }
                        }
                    }
                }

                Scope (\_SB)
                {
                    Scope (PCI0)
                    {
                        Device (PCH)
                        {
                            Name (_HID, EisaId ("PNP0C01"))  // _HID: Hardware ID
                            Name (_UID, 0x01C7)  // _UID: Unique ID
                            Name (_STA, 0x0F)  // _STA: Status
                            Name (ICHR, ResourceTemplate ()
                            {
                                IO (Decode16,
                                    0x0000,             // Range Minimum
                                    0x0000,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    _Y0E)
                                IO (Decode16,
                                    0x0000,             // Range Minimum
                                    0x0000,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    _Y0F)
                                IO (Decode16,
                                    0x0000,             // Range Minimum
                                    0x0000,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    _Y10)
                                IO (Decode16,
                                    0x0000,             // Range Minimum
                                    0x0000,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    _Y11)
                                Memory32Fixed (ReadWrite,
                                    0x00000000,         // Address Base
                                    0x00000000,         // Address Length
                                    _Y13)
                                Memory32Fixed (ReadWrite,
                                    0x00000000,         // Address Base
                                    0x00000000,         // Address Length
                                    _Y12)
                                Memory32Fixed (ReadWrite,
                                    0x00000000,         // Address Base
                                    0x00000000,         // Address Length
                                    _Y14)
                                Memory32Fixed (ReadWrite,
                                    0xFF000000,         // Address Base
                                    0x01000000,         // Address Length
                                    )
                            })
                            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                            {
                                CreateWordField (ICHR, \_SB.PCI0.PCH._Y0E._MIN, PBB)  // _MIN: Minimum Base Address
                                CreateWordField (ICHR, \_SB.PCI0.PCH._Y0E._MAX, PBH)  // _MAX: Maximum Base Address
                                CreateByteField (ICHR, \_SB.PCI0.PCH._Y0E._LEN, PML)  // _LEN: Length
                                Store (PMBS, PBB)
                                Store (PMBS, PBH)
                                Store (0x54, PML)
                                CreateWordField (ICHR, \_SB.PCI0.PCH._Y0F._MIN, P2B)  // _MIN: Minimum Base Address
                                CreateWordField (ICHR, \_SB.PCI0.PCH._Y0F._MAX, P2H)  // _MAX: Maximum Base Address
                                CreateByteField (ICHR, \_SB.PCI0.PCH._Y0F._LEN, P2L)  // _LEN: Length
                                Add (PMBS, 0x58, P2B)
                                Add (PMBS, 0x58, P2H)
                                Store (0x28, P2L)
                                If (SMBS)
                                {
                                    CreateWordField (ICHR, \_SB.PCI0.PCH._Y10._MIN, SMB)  // _MIN: Minimum Base Address
                                    CreateWordField (ICHR, \_SB.PCI0.PCH._Y10._MAX, SMH)  // _MAX: Maximum Base Address
                                    CreateByteField (ICHR, \_SB.PCI0.PCH._Y10._LEN, SML)  // _LEN: Length
                                    Store (SMBS, SMB)
                                    Store (SMBS, SMH)
                                    Store (SMBL, SML)
                                }

                                If (GPBS)
                                {
                                    CreateWordField (ICHR, \_SB.PCI0.PCH._Y11._MIN, IGB)  // _MIN: Minimum Base Address
                                    CreateWordField (ICHR, \_SB.PCI0.PCH._Y11._MAX, IGH)  // _MAX: Maximum Base Address
                                    CreateByteField (ICHR, \_SB.PCI0.PCH._Y11._LEN, IGL)  // _LEN: Length
                                    Store (GPBS, IGB)
                                    Store (GPBS, IGH)
                                    Store (GPLN, IGL)
                                }

                                If (APCB)
                                {
                                    CreateDWordField (ICHR, \_SB.PCI0.PCH._Y12._BAS, APB)  // _BAS: Base Address
                                    CreateDWordField (ICHR, \_SB.PCI0.PCH._Y12._LEN, APL)  // _LEN: Length
                                    Store (APCB, APB)
                                    Store (APCL, APL)
                                }

                                CreateDWordField (ICHR, \_SB.PCI0.PCH._Y13._BAS, RCB)  // _BAS: Base Address
                                CreateDWordField (ICHR, \_SB.PCI0.PCH._Y13._LEN, RCL)  // _LEN: Length
                                Store (SRCB, RCB)
                                Store (SRCL, RCL)
                                If (TCBR)
                                {
                                    CreateDWordField (ICHR, \_SB.PCI0.PCH._Y14._BAS, TCB)  // _BAS: Base Address
                                    CreateDWordField (ICHR, \_SB.PCI0.PCH._Y14._LEN, TCL)  // _LEN: Length
                                    Store (TCBR, TCB)
                                    Store (TCLT, TCL)
                                }

                                Return (ICHR)
                            }
                        }

                        Device (CWDT)
                        {
                            Name (_HID, EisaId ("INT3F0D"))  // _HID: Hardware ID
                            Name (_CID, EisaId ("PNP0C02"))  // _CID: Compatible ID
                            Name (BUF0, ResourceTemplate ()
                            {
                                IO (Decode16,
                                    0x0454,             // Range Minimum
                                    0x0454,             // Range Maximum
                                    0x04,               // Alignment
                                    0x04,               // Length
                                    _Y15)
                            })
                            Method (_STA, 0, Serialized)  // _STA: Status
                            {
                                Return (0x0F)
                            }

                            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                            {
                                CreateWordField (BUF0, \_SB.PCI0.CWDT._Y15._MIN, WDB)  // _MIN: Minimum Base Address
                                CreateWordField (BUF0, \_SB.PCI0.CWDT._Y15._MAX, WDH)  // _MAX: Maximum Base Address
                                Add (PMBS, 0x54, WDB)
                                Add (PMBS, 0x54, WDH)
                                Return (BUF0)
                            }
                        }
                    }
                }

                Device (SIO1)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_UID, 0x0111)  // _UID: Unique ID
                    Name (CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y16)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y17)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y18)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y19)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If (LAnd (LLess (SP1O, 0x03F0), LGreater (SP1O, 0xF0)))
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIO1._Y16._MIN, GPI0)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIO1._Y16._MAX, GPI1)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.SBRG.SIO1._Y16._LEN, GPIL)  // _LEN: Length
                            Store (SP1O, GPI0)
                            Store (SP1O, GPI1)
                            Store (0x02, GPIL)
                        }

                        If (IO1B)
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIO1._Y17._MIN, GP10)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIO1._Y17._MAX, GP11)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.SBRG.SIO1._Y17._LEN, GPL1)  // _LEN: Length
                            Store (IO1B, GP10)
                            Store (IO1B, GP11)
                            Store (IO1L, GPL1)
                        }

                        If (IO2B)
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIO1._Y18._MIN, GP20)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIO1._Y18._MAX, GP21)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.SBRG.SIO1._Y18._LEN, GPL2)  // _LEN: Length
                            Store (IO2B, GP20)
                            Store (IO2B, GP21)
                            Store (IO2L, GPL2)
                        }

                        If (IO4B)
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIO1._Y19._MIN, GP30)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIO1._Y19._MAX, GP31)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.SBRG.SIO1._Y19._LEN, GPL3)  // _LEN: Length
                            Store (IO4B, GP30)
                            Store (IO4B, GP31)
                            Store (IO4L, GPL3)
                        }

                        Return (CRS)
                    }

                    Name (DCAT, Package (0x15)
                    {
                        0x03, 
                        0x02, 
                        One, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0x05, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0xFF, 
                        0x16, 
                        0xFF, 
                        0xFF
                    })
                    Mutex (MUT0, 0x00)
                    Method (ENFG, 1, NotSerialized)
                    {
                        Acquire (MUT0, 0x0FFF)
                        Store (Arg0, LDN)
                    }

                    Method (EXFG, 0, NotSerialized)
                    {
                        Release (MUT0)
                    }

                    Method (LPTM, 1, NotSerialized)
                    {
                        ENFG (CGLD (Arg0))
                        And (OPT0, 0x80, Local0)
                        EXFG ()
                        Return (Local0)
                    }

                    OperationRegion (IOID, SystemIO, SP1O, 0x02)
                    Field (IOID, ByteAcc, NoLock, Preserve)
                    {
                        INDX,   8, 
                        DATA,   8
                    }

                    IndexField (INDX, DATA, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x07), 
                        LDN,    8, 
                        Offset (0x21), 
                        SCF1,   8, 
                        SCF2,   8, 
                        SCF3,   8, 
                        SCF4,   8, 
                        SCF5,   8, 
                        SCF6,   8, 
                        Offset (0x29), 
                        CKCF,   8, 
                        Offset (0x30), 
                        ACTR,   8, 
                        Offset (0x60), 
                        IOAH,   8, 
                        IOAL,   8, 
                        IOH2,   8, 
                        IOL2,   8, 
                        Offset (0x70), 
                        INTR,   8, 
                        Offset (0x74), 
                        DMCH,   8, 
                        Offset (0xE0), 
                        RGE0,   8, 
                        RGE1,   8, 
                        RGE2,   8, 
                        RGE3,   8, 
                        RGE4,   8, 
                        RGE5,   8, 
                        RGE6,   8, 
                        RGE7,   8, 
                        RGE8,   8, 
                        RGE9,   8, 
                        Offset (0xF0), 
                        OPT0,   8, 
                        OPT1,   8, 
                        OPT2,   8, 
                        OPT3,   8, 
                        OPT4,   8, 
                        OPT5,   8, 
                        OPT6,   8, 
                        OPT7,   8, 
                        OPT8,   8, 
                        OPT9,   8
                    }

                    OperationRegion (RNTR, SystemIO, IO4B, IO4L)
                    Field (RNTR, ByteAcc, NoLock, Preserve)
                    {
                        GPES,   8, 
                        GPEE,   8, 
                        Offset (0x08), 
                        GPS0,   8, 
                        GPS1,   8, 
                        GPS2,   8, 
                        GPS3,   8, 
                        GPE0,   8, 
                        GPE1,   8, 
                        GPE2,   8, 
                        GPE3,   8
                    }

                    OperationRegion (SWCR, SystemIO, IO3B, IO3L)
                    Field (SWCR, ByteAcc, NoLock, Preserve)
                    {
                        LEDC,   8, 
                        SWCC,   8
                    }

                    Method (CGLD, 1, NotSerialized)
                    {
                        Return (DerefOf (Index (DCAT, Arg0)))
                    }

                    Method (DSTA, 1, NotSerialized)
                    {
                        ENFG (CGLD (Arg0))
                        Store (ACTR, Local0)
                        EXFG ()
                        If (LEqual (Local0, 0xFF))
                        {
                            Return (Zero)
                        }

                        And (Local0, One, Local0)
                        If (LGreaterEqual (Arg0, 0x10))
                        {
                            Or (IOES, ShiftLeft (Local0, And (Arg0, 0x0F)), IOES)
                        }
                        Else
                        {
                            Or (IOST, ShiftLeft (Local0, Arg0), IOST)
                        }

                        If (Local0)
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            If (LGreaterEqual (Arg0, 0x10))
                            {
                                Store (IOES, Local0)
                            }
                            Else
                            {
                                Store (IOST, Local0)
                            }

                            And (Arg0, 0x0F, Local1)
                            If (And (ShiftLeft (One, Local1), Local0))
                            {
                                Return (0x0D)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }

                    Method (DCNT, 2, NotSerialized)
                    {
                        ENFG (CGLD (Arg0))
                        If (LAnd (LLess (DMCH, 0x04), LNotEqual (And (DMCH, 0x03, Local1), Zero)))
                        {
                            RDMA (Arg0, Arg1, Increment (Local1))
                        }

                        Store (Arg1, ACTR)
                        ShiftLeft (IOAH, 0x08, Local1)
                        Or (IOAL, Local1, Local1)
                        RRIO (Arg0, Arg1, Local1, 0x08)
                        EXFG ()
                    }

                    Name (CRS1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x00,               // Length
                            _Y1C)
                        IRQNoFlags (_Y1A)
                            {}
                        DMA (Compatibility, NotBusMaster, Transfer8, _Y1B)
                            {}
                    })
                    CreateWordField (CRS1, \_SB.PCI0.SBRG.SIO1._Y1A._INT, IRQM)  // _INT: Interrupts
                    CreateByteField (CRS1, \_SB.PCI0.SBRG.SIO1._Y1B._DMA, DMAM)  // _DMA: Direct Memory Access
                    CreateWordField (CRS1, \_SB.PCI0.SBRG.SIO1._Y1C._MIN, IO11)  // _MIN: Minimum Base Address
                    CreateWordField (CRS1, \_SB.PCI0.SBRG.SIO1._Y1C._MAX, IO12)  // _MAX: Maximum Base Address
                    CreateByteField (CRS1, \_SB.PCI0.SBRG.SIO1._Y1C._LEN, LEN1)  // _LEN: Length
                    Name (CRS2, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x00,               // Length
                            _Y1F)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x00,               // Length
                            _Y20)
                        IRQNoFlags (_Y1D)
                            {}
                        DMA (Compatibility, NotBusMaster, Transfer8, _Y1E)
                            {2}
                    })
                    CreateWordField (CRS2, \_SB.PCI0.SBRG.SIO1._Y1D._INT, IRQE)  // _INT: Interrupts
                    CreateByteField (CRS2, \_SB.PCI0.SBRG.SIO1._Y1E._DMA, DMAE)  // _DMA: Direct Memory Access
                    CreateWordField (CRS2, \_SB.PCI0.SBRG.SIO1._Y1F._MIN, IO21)  // _MIN: Minimum Base Address
                    CreateWordField (CRS2, \_SB.PCI0.SBRG.SIO1._Y1F._MAX, IO22)  // _MAX: Maximum Base Address
                    CreateByteField (CRS2, \_SB.PCI0.SBRG.SIO1._Y1F._LEN, LEN2)  // _LEN: Length
                    CreateWordField (CRS2, \_SB.PCI0.SBRG.SIO1._Y20._MIN, IO31)  // _MIN: Minimum Base Address
                    CreateWordField (CRS2, \_SB.PCI0.SBRG.SIO1._Y20._MAX, IO32)  // _MAX: Maximum Base Address
                    CreateByteField (CRS2, \_SB.PCI0.SBRG.SIO1._Y20._LEN, LEN3)  // _LEN: Length
                    Name (CRS4, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x00,               // Length
                            _Y22)
                        IRQ (Edge, ActiveLow, Shared, _Y21)
                            {}
                    })
                    CreateWordField (CRS4, \_SB.PCI0.SBRG.SIO1._Y21._INT, IRQL)  // _INT: Interrupts
                    CreateWordField (CRS4, \_SB.PCI0.SBRG.SIO1._Y22._MIN, IOHL)  // _MIN: Minimum Base Address
                    CreateWordField (CRS4, \_SB.PCI0.SBRG.SIO1._Y22._MAX, IORL)  // _MAX: Maximum Base Address
                    CreateByteField (CRS4, \_SB.PCI0.SBRG.SIO1._Y22._ALN, ALMN)  // _ALN: Alignment
                    CreateByteField (CRS4, \_SB.PCI0.SBRG.SIO1._Y22._LEN, LENG)  // _LEN: Length
                    Method (DCRS, 2, NotSerialized)
                    {
                        ENFG (CGLD (Arg0))
                        ShiftLeft (IOAH, 0x08, IO11)
                        Or (IOAL, IO11, IO11)
                        Store (IO11, IO12)
                        Store (0x08, LEN1)
                        If (INTR)
                        {
                            ShiftLeft (One, INTR, IRQM)
                        }
                        Else
                        {
                            Store (Zero, IRQM)
                        }

                        If (LOr (LGreater (DMCH, 0x03), LEqual (Arg1, Zero)))
                        {
                            Store (Zero, DMAM)
                        }
                        Else
                        {
                            And (DMCH, 0x03, Local1)
                            ShiftLeft (One, Local1, DMAM)
                        }

                        EXFG ()
                        Return (CRS1)
                    }

                    Method (DCR2, 2, NotSerialized)
                    {
                        ENFG (CGLD (Arg0))
                        ShiftLeft (IOAH, 0x08, IO21)
                        Or (IOAL, IO21, IO21)
                        Store (IO21, IO22)
                        Store (0x08, LEN2)
                        ShiftLeft (IOH2, 0x08, IO31)
                        Or (IOL2, IO31, IO31)
                        Store (IO21, IO32)
                        Store (0x08, LEN3)
                        If (INTR)
                        {
                            ShiftLeft (One, INTR, IRQE)
                        }
                        Else
                        {
                            Store (Zero, IRQE)
                        }

                        If (LOr (LGreater (DMCH, 0x03), LEqual (Arg1, Zero)))
                        {
                            Store (Zero, DMAE)
                        }
                        Else
                        {
                            And (DMCH, 0x03, Local1)
                            ShiftLeft (One, Local1, DMAE)
                        }

                        EXFG ()
                        Return (CRS2)
                    }

                    Method (DCR4, 2, NotSerialized)
                    {
                        ENFG (CGLD (Arg0))
                        ShiftLeft (IOAH, 0x08, IOHL)
                        Or (IOAL, IOHL, IOHL)
                        Store (IOHL, IORL)
                        Store (0x08, LENG)
                        If (INTR)
                        {
                            And (INTR, 0x0F, INTR)
                            ShiftLeft (One, INTR, IRQL)
                        }
                        Else
                        {
                            Store (Zero, IRQL)
                        }

                        EXFG ()
                        Return (CRS4)
                    }

                    Method (DSRS, 2, NotSerialized)
                    {
                        If (LEqual (Arg1, 0x02))
                        {
                            If (LPTM (CGLD (Arg1)))
                            {
                                DSR2 (Arg0, Arg1)
                            }
                        }
                        Else
                        {
                            CreateWordField (Arg0, 0x09, IRQM)
                            CreateByteField (Arg0, 0x0C, DMAM)
                            CreateWordField (Arg0, 0x02, IO11)
                            ENFG (CGLD (Arg1))
                            And (IO11, 0xFF, IOAL)
                            ShiftRight (IO11, 0x08, IOAH)
                            If (IRQM)
                            {
                                FindSetRightBit (IRQM, Local0)
                                Subtract (Local0, One, INTR)
                            }
                            Else
                            {
                                Store (Zero, INTR)
                            }

                            If (DMAM)
                            {
                                FindSetRightBit (DMAM, Local0)
                                Subtract (Local0, One, DMCH)
                            }
                            Else
                            {
                                Store (0x04, DMCH)
                            }

                            EXFG ()
                            DCNT (Arg1, One)
                            Store (Arg1, Local2)
                            If (LGreater (Local2, Zero))
                            {
                                Subtract (Local2, One, Local2)
                            }
                        }
                    }

                    Method (DSR2, 2, NotSerialized)
                    {
                        CreateWordField (Arg0, 0x11, IRQT)
                        CreateByteField (Arg0, 0x14, DMAT)
                        CreateWordField (Arg0, 0x02, IOT1)
                        CreateWordField (Arg0, 0x0A, IOT2)
                        ENFG (CGLD (Arg1))
                        And (IOT1, 0xFF, IOAL)
                        ShiftRight (IOT1, 0x08, IOAH)
                        And (IOT2, 0xFF, IOL2)
                        ShiftRight (IOT2, 0x08, IOH2)
                        If (IRQT)
                        {
                            FindSetRightBit (IRQT, Local0)
                            Subtract (Local0, One, INTR)
                        }
                        Else
                        {
                            Store (Zero, INTR)
                        }

                        If (DMAT)
                        {
                            FindSetRightBit (DMAT, Local0)
                            Subtract (Local0, One, DMCH)
                        }
                        Else
                        {
                            Store (0x04, DMCH)
                        }

                        EXFG ()
                        DCNT (Arg1, One)
                        Store (Arg1, Local2)
                        If (LGreater (Local2, Zero))
                        {
                            Subtract (Local2, One, Local2)
                        }
                    }

                    Method (DSR4, 2, NotSerialized)
                    {
                        CreateWordField (Arg0, 0x02, IOHL)
                        CreateWordField (Arg0, 0x09, IRQL)
                        ENFG (CGLD (Arg1))
                        And (IOHL, 0xFF, IOAL)
                        ShiftRight (IOHL, 0x08, IOAH)
                        If (IRQL)
                        {
                            FindSetRightBit (IRQL, Local0)
                            Subtract (Local0, One, INTR)
                        }
                        Else
                        {
                            Store (Zero, INTR)
                        }

                        EXFG ()
                        DCNT (Arg1, One)
                        Store (Arg1, Local2)
                        If (LGreater (Local2, Zero))
                        {
                            Subtract (Local2, One, Local2)
                        }
                    }
                }

                Name (PMFG, Zero)
                Method (SIOS, 1, NotSerialized)
                {
                    Store ("SIOS", Debug)
                    ^SIO1.ENFG (0x04)
                    If (LNotEqual (0x05, Arg0))
                    {
                        If (KBFG)
                        {
                            Or (^SIO1.GPE2, 0xE8, ^SIO1.GPE2)
                        }
                        Else
                        {
                            And (^SIO1.GPE2, 0x17, ^SIO1.GPE2)
                        }

                        If (MSFG)
                        {
                            Or (^SIO1.GPE2, 0x10, ^SIO1.GPE2)
                        }
                        Else
                        {
                            And (^SIO1.GPE2, 0xEF, ^SIO1.GPE2)
                        }

                        Store (^SIO1.GPS2, ^SIO1.GPS2)
                        Store (^SIO1.GPES, ^SIO1.GPES)
                        Store (One, ^SIO1.GPEE)
                        If (LEqual (0x03, Arg0))
                        {
                            Store (^SIO1.LEDC, Local1)
                            And (Local1, 0xE0, Local1)
                            Or (Local1, 0x1C, ^SIO1.LEDC)
                            Store (^SIO1.SWCC, Local1)
                            And (Local1, 0xBF, Local1)
                            Or (Local1, 0x40, ^SIO1.SWCC)
                        }
                    }

                    Store (^SIO1.GPS0, ^SIO1.GPS0)
                    Store (^SIO1.GPS1, ^SIO1.GPS1)
                    Store (0x10, ^SIO1.GPE0)
                    Store (0x20, ^SIO1.GPE1)
                    ^SIO1.EXFG ()
                }

                Method (SIOW, 1, NotSerialized)
                {
                    Store ("SIOW", Debug)
                    ^SIO1.ENFG (0x04)
                    Store (^SIO1.GPS2, PMFG)
                    Store (^SIO1.GPS0, ^SIO1.GPS0)
                    Store (^SIO1.GPS1, ^SIO1.GPS1)
                    Store (^SIO1.GPS2, ^SIO1.GPS2)
                    Store (^SIO1.GPES, ^SIO1.GPES)
                    Store (Zero, ^SIO1.GPEE)
                    Store (Zero, ^SIO1.GPE0)
                    Store (Zero, ^SIO1.GPE1)
                    Store (^SIO1.LEDC, Local1)
                    And (Local1, 0xE0, Local1)
                    Or (Local1, 0x1E, ^SIO1.LEDC)
                    Store (^SIO1.SWCC, Local1)
                    And (Local1, 0xBF, ^SIO1.SWCC)
                    ^SIO1.EXFG ()
                }

                Device (PS2K)
                {
                    Name (_HID, EisaId ("PNP0303"))  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP030B"))  // _CID: Compatible ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (And (IOST, 0x0400))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {1}
                    })
                    Name (XPRS, ResourceTemplate ()
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            FixedIO (
                                0x0060,             // Address
                                0x01,               // Length
                                )
                            FixedIO (
                                0x0064,             // Address
                                0x01,               // Length
                                )
                            IRQNoFlags ()
                                {1}
                        }
                        EndDependentFn ()
                    })
                    Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                    {
                        Store (Arg0, KBFG)
                    }
                }

                Scope (\)
                {
                    Name (KBFG, One)
                }

                Method (PS2K._PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x03))
                }

                Device (PS2M)
                {
                    Name (_HID, EisaId ("PNP0F03"))  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0F13"))  // _CID: Compatible ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (And (IOST, 0x4000))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Name (CRS1, ResourceTemplate ()
                    {
                        IRQNoFlags ()
                            {12}
                    })
                    Name (CRS2, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {12}
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If (And (IOST, 0x0400))
                        {
                            Return (CRS1)
                        }
                        Else
                        {
                            Return (CRS2)
                        }
                    }

                    Name (XPRS, ResourceTemplate ()
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IRQNoFlags ()
                                {12}
                        }
                        EndDependentFn ()
                    })
                    Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                    {
                        Store (Arg0, MSFG)
                    }
                }

                Scope (\)
                {
                    Name (MSFG, One)
                }

                Method (PS2M._PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x03))
                }

                Device (PIC)
                {
                    Name (_HID, EisaId ("PNP0000"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (DMAD)
                {
                    Name (_HID, EisaId ("PNP0200"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        DMA (Compatibility, BusMaster, Transfer8, )
                            {4}
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0087,             // Range Minimum
                            0x0087,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0089,             // Range Minimum
                            0x0089,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x008F,             // Range Minimum
                            0x008F,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x00,               // Alignment
                            0x20,               // Length
                            )
                    })
                }

                Device (TMR)
                {
                    Name (_HID, EisaId ("PNP0100"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x00,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                }

                Device (RTC0)
                {
                    Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {8}
                    })
                }

                Device (SPKR)
                {
                    Name (_HID, EisaId ("PNP0800"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                    })
                }

                Device (RMSC)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_UID, 0x10)  // _UID: Unique ID
                    Name (CRS1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0010,             // Range Minimum
                            0x0010,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0022,             // Range Minimum
                            0x0022,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x0044,             // Range Minimum
                            0x0044,             // Range Maximum
                            0x00,               // Alignment
                            0x1C,               // Length
                            )
                        IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x00,               // Alignment
                            0x0B,               // Length
                            )
                        IO (Decode16,
                            0x0072,             // Range Minimum
                            0x0072,             // Range Maximum
                            0x00,               // Alignment
                            0x0E,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0084,             // Range Minimum
                            0x0084,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0088,             // Range Minimum
                            0x0088,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x008C,             // Range Minimum
                            0x008C,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0090,             // Range Minimum
                            0x0090,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x00A2,             // Range Minimum
                            0x00A2,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x00E0,             // Range Minimum
                            0x00E0,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                    })
                    Name (CRS2, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0010,             // Range Minimum
                            0x0010,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0022,             // Range Minimum
                            0x0022,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x0044,             // Range Minimum
                            0x0044,             // Range Maximum
                            0x00,               // Alignment
                            0x1C,               // Length
                            )
                        IO (Decode16,
                            0x0072,             // Range Minimum
                            0x0072,             // Range Maximum
                            0x00,               // Alignment
                            0x0E,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0084,             // Range Minimum
                            0x0084,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0088,             // Range Minimum
                            0x0088,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x008C,             // Range Minimum
                            0x008C,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0090,             // Range Minimum
                            0x0090,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x00A2,             // Range Minimum
                            0x00A2,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x00E0,             // Range Minimum
                            0x00E0,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If (And (MBEC, 0xFFFF))
                        {
                            Return (CRS1)
                        }
                        Else
                        {
                            Return (CRS2)
                        }
                    }
                }

                Device (COPR)
                {
                    Name (_HID, EisaId ("PNP0C04"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Device (UAR1)
                {
                    Name (_HID, EisaId ("PNP0501"))  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (^^SIO1.DSTA (Zero))
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        ^^SIO1.DCNT (Zero, Zero)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Return (^^SIO1.DCRS (Zero, Zero))
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        ^^SIO1.DSRS (Arg0, Zero)
                    }

                    Name (XPRS, ResourceTemplate ()
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02F8,             // Range Minimum
                                0x02F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02F8,             // Range Minimum
                                0x02F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03E8,             // Range Minimum
                                0x03E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03E8,             // Range Minimum
                                0x03E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02E8,             // Range Minimum
                                0x02E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02E8,             // Range Minimum
                                0x02E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {6}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {5}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02F8,             // Range Minimum
                                0x02F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {6}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02F8,             // Range Minimum
                                0x02F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {5}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03E8,             // Range Minimum
                                0x03E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {6}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03E8,             // Range Minimum
                                0x03E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {5}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02E8,             // Range Minimum
                                0x02E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {6}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02E8,             // Range Minimum
                                0x02E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {5}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        EndDependentFn ()
                    })
                }

                Device (UAR2)
                {
                    Name (_HID, EisaId ("PNP0501"))  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (^^SIO1.DSTA (One))
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        ^^SIO1.DCNT (One, Zero)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Return (^^SIO1.DCRS (One, Zero))
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        ^^SIO1.DSRS (Arg0, One)
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02F8,             // Range Minimum
                                0x02F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFn (0x00, 0x00)
                        {
                            IO (Decode16,
                                0x02F8,             // Range Minimum
                                0x02F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03E8,             // Range Minimum
                                0x03E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03E8,             // Range Minimum
                                0x03E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02E8,             // Range Minimum
                                0x02E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02E8,             // Range Minimum
                                0x02E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {6}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {5}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02F8,             // Range Minimum
                                0x02F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {6}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02F8,             // Range Minimum
                                0x02F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {5}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03E8,             // Range Minimum
                                0x03E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {6}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03E8,             // Range Minimum
                                0x03E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {5}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02E8,             // Range Minimum
                                0x02E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {6}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02E8,             // Range Minimum
                                0x02E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {5}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        EndDependentFn ()
                    })
                }

                Device (LPTE)
                {
                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                    {
                        If (^^SIO1.LPTM (0x02))
                        {
                            Return (0x0104D041)
                        }
                        Else
                        {
                            Return (0x0004D041)
                        }
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (^^SIO1.DSTA (0x02))
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        ^^SIO1.DCNT (0x02, Zero)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        ^^SIO1.DCRS (0x02, One)
                        If (^^SIO1.LPTM (0x02))
                        {
                            Store (^^SIO1.IRQM, ^^SIO1.IRQE)
                            Store (^^SIO1.DMAM, ^^SIO1.DMAE)
                            Store (^^SIO1.IO11, ^^SIO1.IO21)
                            Store (^^SIO1.IO12, ^^SIO1.IO22)
                            Store (^^SIO1.LEN1, ^^SIO1.LEN2)
                            Add (^^SIO1.IO21, 0x0400, ^^SIO1.IO31)
                            Store (^^SIO1.IO31, ^^SIO1.IO32)
                            Store (^^SIO1.LEN2, ^^SIO1.LEN3)
                            Return (^^SIO1.CRS2)
                        }
                        Else
                        {
                            Return (^^SIO1.CRS1)
                        }
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        ^^SIO1.DSRS (Arg0, 0x02)
                    }

                    Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                    {
                        If (^^SIO1.LPTM (0x02))
                        {
                            Return (EPPR)
                        }
                        Else
                        {
                            Return (LPPR)
                        }
                    }

                    Name (LPPR, ResourceTemplate ()
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IO (Decode16,
                                0x0378,             // Range Minimum
                                0x0378,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {7}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0278,             // Range Minimum
                                0x0278,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {7}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03BC,             // Range Minimum
                                0x03BC,             // Range Maximum
                                0x01,               // Alignment
                                0x04,               // Length
                                )
                            IRQNoFlags ()
                                {7}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0378,             // Range Minimum
                                0x0378,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0278,             // Range Minimum
                                0x0278,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03BC,             // Range Minimum
                                0x03BC,             // Range Maximum
                                0x01,               // Alignment
                                0x04,               // Length
                                )
                            IRQNoFlags ()
                                {}
                        }
                        EndDependentFn ()
                    })
                    Name (EPPR, ResourceTemplate ()
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IO (Decode16,
                                0x0378,             // Range Minimum
                                0x0378,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IO (Decode16,
                                0x0778,             // Range Minimum
                                0x0778,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {7}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {1}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0378,             // Range Minimum
                                0x0378,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IO (Decode16,
                                0x0778,             // Range Minimum
                                0x0778,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {7}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {3}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0278,             // Range Minimum
                                0x0278,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IO (Decode16,
                                0x0678,             // Range Minimum
                                0x0678,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {7}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {1}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0278,             // Range Minimum
                                0x0278,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IO (Decode16,
                                0x0678,             // Range Minimum
                                0x0678,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {7}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {3}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03BC,             // Range Minimum
                                0x03BC,             // Range Maximum
                                0x01,               // Alignment
                                0x04,               // Length
                                )
                            IO (Decode16,
                                0x07BC,             // Range Minimum
                                0x07BC,             // Range Maximum
                                0x01,               // Alignment
                                0x04,               // Length
                                )
                            IRQNoFlags ()
                                {7}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {1}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03BC,             // Range Minimum
                                0x03BC,             // Range Maximum
                                0x01,               // Alignment
                                0x04,               // Length
                                )
                            IO (Decode16,
                                0x07BC,             // Range Minimum
                                0x07BC,             // Range Maximum
                                0x01,               // Alignment
                                0x04,               // Length
                                )
                            IRQNoFlags ()
                                {7}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {3}
                        }
                        EndDependentFn ()
                    })
                }
            }

            Device (BR20)
            {
                Name (_ADR, 0x001E0000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0B, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR20)
                    }

                    Return (PR20)
                }
            }

            Device (SAT0)
            {
                Name (_ADR, 0x001F0002)  // _ADR: Address
                Name (^NATA, Package (0x01)
                {
                    0x001F0002
                })
                Name (\FZTF, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF5       
                })
                Name (REGF, One)
                Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                {
                    If (LEqual (Arg0, 0x02))
                    {
                        Store (Arg1, REGF)
                    }
                }

                Name (TIM0, Package (0x08)
                {
                    Package (0x04)
                    {
                        0x78, 
                        0xB4, 
                        0xF0, 
                        0x0384
                    }, 

                    Package (0x04)
                    {
                        0x23, 
                        0x21, 
                        0x10, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0B, 
                        0x09, 
                        0x04, 
                        Zero
                    }, 

                    Package (0x06)
                    {
                        0x78, 
                        0x5A, 
                        0x3C, 
                        0x28, 
                        0x1E, 
                        0x14
                    }, 

                    Package (0x06)
                    {
                        Zero, 
                        One, 
                        0x02, 
                        One, 
                        0x02, 
                        One
                    }, 

                    Package (0x06)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        One, 
                        One, 
                        One
                    }, 

                    Package (0x04)
                    {
                        0x04, 
                        0x03, 
                        0x02, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x02, 
                        One, 
                        Zero, 
                        Zero
                    }
                })
                Name (TMD0, Buffer (0x14){})
                CreateDWordField (TMD0, Zero, PIO0)
                CreateDWordField (TMD0, 0x04, DMA0)
                CreateDWordField (TMD0, 0x08, PIO1)
                CreateDWordField (TMD0, 0x0C, DMA1)
                CreateDWordField (TMD0, 0x10, CHNF)
                OperationRegion (CFG2, PCI_Config, 0x40, 0x20)
                Field (CFG2, DWordAcc, NoLock, Preserve)
                {
                    PMPT,   4, 
                    PSPT,   4, 
                    PMRI,   6, 
                    Offset (0x02), 
                    SMPT,   4, 
                    SSPT,   4, 
                    SMRI,   6, 
                    Offset (0x04), 
                    PSRI,   4, 
                    SSRI,   4, 
                    Offset (0x08), 
                    PM3E,   1, 
                    PS3E,   1, 
                    SM3E,   1, 
                    SS3E,   1, 
                    Offset (0x0A), 
                    PMUT,   2, 
                        ,   2, 
                    PSUT,   2, 
                    Offset (0x0B), 
                    SMUT,   2, 
                        ,   2, 
                    SSUT,   2, 
                    Offset (0x0C), 
                    Offset (0x14), 
                    PM6E,   1, 
                    PS6E,   1, 
                    SM6E,   1, 
                    SS6E,   1, 
                    PMCR,   1, 
                    PSCR,   1, 
                    SMCR,   1, 
                    SSCR,   1, 
                        ,   4, 
                    PMAE,   1, 
                    PSAE,   1, 
                    SMAE,   1, 
                    SSAE,   1
                }

                Name (GMPT, Zero)
                Name (GMUE, Zero)
                Name (GMUT, Zero)
                Name (GMCR, Zero)
                Name (GSPT, Zero)
                Name (GSUE, Zero)
                Name (GSUT, Zero)
                Name (GSCR, Zero)
                Device (CHN0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        ShiftLeft (PSCR, One, Local1)
                        Or (PMCR, Local1, Local0)
                        ShiftLeft (PMAE, 0x02, Local3)
                        ShiftLeft (PM6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (PM3E, Local3, Local1)
                        ShiftLeft (PMPT, 0x04, Local3)
                        Or (Local1, Local3, Local1)
                        ShiftLeft (PSAE, 0x02, Local3)
                        ShiftLeft (PS6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (PS3E, Local3, Local2)
                        ShiftLeft (PSPT, 0x04, Local3)
                        Or (Local2, Local3, Local2)
                        Return (GTM (PMRI, Local1, PMUT, PSRI, Local2, PSUT, Local0))
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        Store (Arg0, Debug)
                        Store (Arg0, TMD0)
                        ShiftLeft (PMAE, 0x02, Local3)
                        ShiftLeft (PM6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (PM3E, Local3, Local0)
                        ShiftLeft (PMPT, 0x04, Local3)
                        Or (Local0, Local3, Local0)
                        ShiftLeft (PSAE, 0x02, Local3)
                        ShiftLeft (PS6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (PS3E, Local3, Local1)
                        ShiftLeft (PSPT, 0x04, Local3)
                        Or (Local1, Local3, Local1)
                        Store (PMRI, GMPT)
                        Store (Local0, GMUE)
                        Store (PMUT, GMUT)
                        Store (PMCR, GMCR)
                        Store (PSRI, GSPT)
                        Store (Local1, GSUE)
                        Store (PSUT, GSUT)
                        Store (PSCR, GSCR)
                        STM ()
                        Store (GMPT, PMRI)
                        Store (GMUE, Local0)
                        Store (GMUT, PMUT)
                        Store (GMCR, PMCR)
                        Store (GSUE, Local1)
                        Store (GSUT, PSUT)
                        Store (GSCR, PSCR)
                        If (And (Local0, One))
                        {
                            Store (One, PM3E)
                        }
                        Else
                        {
                            Store (Zero, PM3E)
                        }

                        If (And (Local0, 0x02))
                        {
                            Store (One, PM6E)
                        }
                        Else
                        {
                            Store (Zero, PM6E)
                        }

                        If (And (Local0, 0x04))
                        {
                            Store (One, PMAE)
                        }
                        Else
                        {
                            Store (Zero, PMAE)
                        }

                        If (And (Local1, One))
                        {
                            Store (One, PS3E)
                        }
                        Else
                        {
                            Store (Zero, PS3E)
                        }

                        If (And (Local1, 0x02))
                        {
                            Store (One, PS6E)
                        }
                        Else
                        {
                            Store (Zero, PS6E)
                        }

                        If (And (Local1, 0x04))
                        {
                            Store (One, PSAE)
                        }
                        Else
                        {
                            Store (Zero, PSAE)
                        }

                        Store (GTF (Zero, Arg1), ATA0)
                        Store (GTF (One, Arg2), ATA1)
                    }

                    Device (DRV0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA0))
                        }
                    }

                    Device (DRV1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA1))
                        }
                    }
                }

                Device (CHN1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        ShiftLeft (SSCR, One, Local1)
                        Or (SMCR, Local1, Local0)
                        ShiftLeft (SMAE, 0x02, Local3)
                        ShiftLeft (SM6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (SM3E, Local3, Local1)
                        ShiftLeft (SMPT, 0x04, Local3)
                        Or (Local1, Local3, Local1)
                        ShiftLeft (SSAE, 0x02, Local3)
                        ShiftLeft (SS6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (SS3E, Local3, Local2)
                        ShiftLeft (SSPT, 0x04, Local3)
                        Or (Local2, Local3, Local2)
                        Return (GTM (SMRI, Local1, SMUT, SSRI, Local2, SSUT, Local0))
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        Store (Arg0, Debug)
                        Store (Arg0, TMD0)
                        ShiftLeft (SMAE, 0x02, Local3)
                        ShiftLeft (SM6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (SM3E, Local3, Local0)
                        ShiftLeft (SMPT, 0x04, Local3)
                        Or (Local0, Local3, Local0)
                        ShiftLeft (SSAE, 0x02, Local3)
                        ShiftLeft (SS6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (SS3E, Local3, Local1)
                        ShiftLeft (SSPT, 0x04, Local3)
                        Or (Local1, Local3, Local1)
                        Store (SMRI, GMPT)
                        Store (Local0, GMUE)
                        Store (SMUT, GMUT)
                        Store (SMCR, GMCR)
                        Store (SSRI, GSPT)
                        Store (Local1, GSUE)
                        Store (SSUT, GSUT)
                        Store (SSCR, GSCR)
                        STM ()
                        Store (GMPT, SMRI)
                        Store (GMUE, Local0)
                        Store (GMUT, SMUT)
                        Store (GMCR, SMCR)
                        Store (GSUE, Local1)
                        Store (GSUT, SSUT)
                        Store (GSCR, SSCR)
                        If (And (Local0, One))
                        {
                            Store (One, SM3E)
                        }
                        Else
                        {
                            Store (Zero, SM3E)
                        }

                        If (And (Local0, 0x02))
                        {
                            Store (One, SM6E)
                        }
                        Else
                        {
                            Store (Zero, SM6E)
                        }

                        If (And (Local0, 0x04))
                        {
                            Store (One, SMAE)
                        }
                        Else
                        {
                            Store (Zero, SMAE)
                        }

                        If (And (Local1, One))
                        {
                            Store (One, SS3E)
                        }
                        Else
                        {
                            Store (Zero, SS3E)
                        }

                        If (And (Local1, 0x02))
                        {
                            Store (One, SS6E)
                        }
                        Else
                        {
                            Store (Zero, SS6E)
                        }

                        If (And (Local1, 0x04))
                        {
                            Store (One, SSAE)
                        }
                        Else
                        {
                            Store (Zero, SSAE)
                        }

                        Store (GTF (Zero, Arg1), ATA2)
                        Store (GTF (One, Arg2), ATA3)
                    }

                    Device (DRV0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA2))
                        }
                    }

                    Device (DRV1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA3))
                        }
                    }
                }

                Method (GTM, 7, Serialized)
                {
                    Store (Ones, PIO0)
                    Store (Ones, PIO1)
                    Store (Ones, DMA0)
                    Store (Ones, DMA1)
                    Store (0x10, CHNF)
                    If (REGF){}
                    Else
                    {
                        Return (TMD0)
                    }

                    If (And (Arg1, 0x20))
                    {
                        Or (CHNF, 0x02, CHNF)
                    }

                    Store (Match (DerefOf (Index (TIM0, One)), MEQ, Arg0, MTR, Zero, Zero), Local6)
                    Store (DerefOf (Index (DerefOf (Index (TIM0, Zero)), Local6)), Local7)
                    Store (Local7, DMA0)
                    Store (Local7, PIO0)
                    If (And (Arg4, 0x20))
                    {
                        Or (CHNF, 0x08, CHNF)
                    }

                    Store (Match (DerefOf (Index (TIM0, 0x02)), MEQ, Arg3, MTR, Zero, Zero), Local6)
                    Store (DerefOf (Index (DerefOf (Index (TIM0, Zero)), Local6)), Local7)
                    Store (Local7, DMA1)
                    Store (Local7, PIO1)
                    If (And (Arg1, 0x07))
                    {
                        Store (Arg2, Local5)
                        If (And (Arg1, 0x02))
                        {
                            Add (Local5, 0x02, Local5)
                        }

                        If (And (Arg1, 0x04))
                        {
                            Add (Local5, 0x04, Local5)
                        }

                        Store (DerefOf (Index (DerefOf (Index (TIM0, 0x03)), Local5)), DMA0)
                        Or (CHNF, One, CHNF)
                    }

                    If (And (Arg4, 0x07))
                    {
                        Store (Arg5, Local5)
                        If (And (Arg4, 0x02))
                        {
                            Add (Local5, 0x02, Local5)
                        }

                        If (And (Arg4, 0x04))
                        {
                            Add (Local5, 0x04, Local5)
                        }

                        Store (DerefOf (Index (DerefOf (Index (TIM0, 0x03)), Local5)), DMA1)
                        Or (CHNF, 0x04, CHNF)
                    }

                    Store (TMD0, Debug)
                    Return (TMD0)
                }

                Method (STM, 0, Serialized)
                {
                    If (REGF)
                    {
                        Store (Zero, GMUE)
                        Store (Zero, GMUT)
                        Store (Zero, GSUE)
                        Store (Zero, GSUT)
                        If (And (CHNF, One))
                        {
                            Store (Match (DerefOf (Index (TIM0, 0x03)), MLE, DMA0, MTR, Zero, Zero), Local0)
                            If (LGreater (Local0, 0x05))
                            {
                                Store (0x05, Local0)
                            }

                            Store (DerefOf (Index (DerefOf (Index (TIM0, 0x04)), Local0)), GMUT)
                            Or (GMUE, One, GMUE)
                            If (LGreater (Local0, 0x02))
                            {
                                Or (GMUE, 0x02, GMUE)
                            }

                            If (LGreater (Local0, 0x04))
                            {
                                And (GMUE, 0xFD, GMUE)
                                Or (GMUE, 0x04, GMUE)
                            }
                        }
                        ElseIf (Or (LEqual (PIO0, Ones), LEqual (PIO0, Zero)))
                        {
                            If (And (LLess (DMA0, Ones), LGreater (DMA0, Zero)))
                            {
                                Store (DMA0, PIO0)
                                Or (GMUE, 0x80, GMUE)
                            }
                        }

                        If (And (CHNF, 0x04))
                        {
                            Store (Match (DerefOf (Index (TIM0, 0x03)), MLE, DMA1, MTR, Zero, Zero), Local0)
                            If (LGreater (Local0, 0x05))
                            {
                                Store (0x05, Local0)
                            }

                            Store (DerefOf (Index (DerefOf (Index (TIM0, 0x04)), Local0)), GSUT)
                            Or (GSUE, One, GSUE)
                            If (LGreater (Local0, 0x02))
                            {
                                Or (GSUE, 0x02, GSUE)
                            }

                            If (LGreater (Local0, 0x04))
                            {
                                And (GSUE, 0xFD, GSUE)
                                Or (GSUE, 0x04, GSUE)
                            }
                        }
                        ElseIf (Or (LEqual (PIO1, Ones), LEqual (PIO1, Zero)))
                        {
                            If (And (LLess (DMA1, Ones), LGreater (DMA1, Zero)))
                            {
                                Store (DMA1, PIO1)
                                Or (GSUE, 0x80, GSUE)
                            }
                        }

                        If (And (CHNF, 0x02))
                        {
                            Or (GMUE, 0x20, GMUE)
                        }

                        If (And (CHNF, 0x08))
                        {
                            Or (GSUE, 0x20, GSUE)
                        }

                        And (Match (DerefOf (Index (TIM0, Zero)), MGE, PIO0, MTR, Zero, Zero), 0x07, Local0)
                        Store (DerefOf (Index (DerefOf (Index (TIM0, One)), Local0)), Local1)
                        Store (Local1, GMPT)
                        If (LLess (Local0, 0x03))
                        {
                            Or (GMUE, 0x50, GMUE)
                        }

                        And (Match (DerefOf (Index (TIM0, Zero)), MGE, PIO1, MTR, Zero, Zero), 0x07, Local0)
                        Store (DerefOf (Index (DerefOf (Index (TIM0, 0x02)), Local0)), Local1)
                        Store (Local1, GSPT)
                        If (LLess (Local0, 0x03))
                        {
                            Or (GSUE, 0x50, GSUE)
                        }
                    }
                }

                Name (AT01, Buffer (0x07)
                {
                     0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0xEF       
                })
                Name (AT02, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x90       
                })
                Name (AT03, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC6       
                })
                Name (AT04, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x91       
                })
                Name (ATA0, Buffer (0x1D){})
                Name (ATA1, Buffer (0x1D){})
                Name (ATA2, Buffer (0x1D){})
                Name (ATA3, Buffer (0x1D){})
                Name (ATAB, Buffer (0x1D){})
                CreateByteField (ATAB, Zero, CMDC)
                Method (GTFB, 3, Serialized)
                {
                    Multiply (CMDC, 0x38, Local0)
                    Add (Local0, 0x08, Local1)
                    CreateField (ATAB, Local1, 0x38, CMDX)
                    Multiply (CMDC, 0x07, Local0)
                    CreateByteField (ATAB, Add (Local0, 0x02), A001)
                    CreateByteField (ATAB, Add (Local0, 0x06), A005)
                    Store (Arg0, CMDX)
                    Store (Arg1, A001)
                    Store (Arg2, A005)
                    Increment (CMDC)
                }

                Method (GTF, 2, Serialized)
                {
                    Store (Arg1, Debug)
                    Store (Zero, CMDC)
                    Name (ID49, 0x0C00)
                    Name (ID59, Zero)
                    Name (ID53, 0x04)
                    Name (ID63, 0x0F00)
                    Name (ID88, 0x0F00)
                    Name (IRDY, One)
                    Name (PIOT, Zero)
                    Name (DMAT, Zero)
                    If (LEqual (SizeOf (Arg1), 0x0200))
                    {
                        CreateWordField (Arg1, 0x62, IW49)
                        Store (IW49, ID49)
                        CreateWordField (Arg1, 0x6A, IW53)
                        Store (IW53, ID53)
                        CreateWordField (Arg1, 0x7E, IW63)
                        Store (IW63, ID63)
                        CreateWordField (Arg1, 0x76, IW59)
                        Store (IW59, ID59)
                        CreateWordField (Arg1, 0xB0, IW88)
                        Store (IW88, ID88)
                    }

                    Store (0xA0, Local7)
                    If (Arg0)
                    {
                        Store (0xB0, Local7)
                        And (CHNF, 0x08, IRDY)
                        If (And (CHNF, 0x10))
                        {
                            Store (PIO1, PIOT)
                        }
                        Else
                        {
                            Store (PIO0, PIOT)
                        }

                        If (And (CHNF, 0x04))
                        {
                            If (And (CHNF, 0x10))
                            {
                                Store (DMA1, DMAT)
                            }
                            Else
                            {
                                Store (DMA0, DMAT)
                            }
                        }
                    }
                    Else
                    {
                        And (CHNF, 0x02, IRDY)
                        Store (PIO0, PIOT)
                        If (And (CHNF, One))
                        {
                            Store (DMA0, DMAT)
                        }
                    }

                    If (LAnd (LAnd (And (ID53, 0x04), And (ID88, 0xFF00)), DMAT))
                    {
                        Store (Match (DerefOf (Index (TIM0, 0x03)), MLE, DMAT, MTR, Zero, Zero), Local1)
                        If (LGreater (Local1, 0x05))
                        {
                            Store (0x05, Local1)
                        }

                        GTFB (AT01, Or (0x40, Local1), Local7)
                    }
                    ElseIf (LAnd (And (ID63, 0xFF00), PIOT))
                    {
                        And (Match (DerefOf (Index (TIM0, Zero)), MGE, PIOT, MTR, Zero, Zero), 0x03, Local0)
                        Or (0x20, DerefOf (Index (DerefOf (Index (TIM0, 0x07)), Local0)), Local1)
                        GTFB (AT01, Local1, Local7)
                    }

                    If (IRDY)
                    {
                        And (Match (DerefOf (Index (TIM0, Zero)), MGE, PIOT, MTR, Zero, Zero), 0x07, Local0)
                        Or (0x08, DerefOf (Index (DerefOf (Index (TIM0, 0x06)), Local0)), Local1)
                        GTFB (AT01, Local1, Local7)
                    }
                    ElseIf (And (ID49, 0x0400))
                    {
                        GTFB (AT01, One, Local7)
                    }

                    If (LAnd (And (ID59, 0x0100), And (ID59, 0xFF)))
                    {
                        GTFB (AT03, And (ID59, 0xFF), Local7)
                    }

                    Store (ATAB, Debug)
                    Return (ATAB)
                }

                Method (RATA, 1, NotSerialized)
                {
                    CreateByteField (Arg0, Zero, CMDN)
                    Multiply (CMDN, 0x38, Local0)
                    CreateField (Arg0, 0x08, Local0, RETB)
                    Store (RETB, Debug)
                    Return (Concatenate (RETB, FZTF))
                }

                Device (PRT0)
                {
                    Name (_ADR, 0xFFFF)  // _ADR: Address
                    Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                    {
                        Return (FZTF)
                    }
                }

                Device (PRT1)
                {
                    Name (_ADR, 0x0001FFFF)  // _ADR: Address
                    Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                    {
                        Return (FZTF)
                    }
                }

                Device (PRT2)
                {
                    Name (_ADR, 0x0002FFFF)  // _ADR: Address
                    Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                    {
                        Return (FZTF)
                    }
                }

                Device (PRT3)
                {
                    Name (_ADR, 0x0003FFFF)  // _ADR: Address
                    Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                    {
                        Return (FZTF)
                    }
                }

                Device (PRT4)
                {
                    Name (_ADR, 0x0004FFFF)  // _ADR: Address
                    Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                    {
                        Return (FZTF)
                    }
                }

                Device (PRT5)
                {
                    Name (_ADR, 0x0005FFFF)  // _ADR: Address
                    Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                    {
                        Return (FZTF)
                    }
                }
            }

            Device (SAT1)
            {
                Name (_ADR, 0x001F0005)  // _ADR: Address
                Name (REGF, One)
                Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                {
                    If (LEqual (Arg0, 0x02))
                    {
                        Store (Arg1, REGF)
                    }
                }

                Name (TIM0, Package (0x08)
                {
                    Package (0x04)
                    {
                        0x78, 
                        0xB4, 
                        0xF0, 
                        0x0384
                    }, 

                    Package (0x04)
                    {
                        0x23, 
                        0x21, 
                        0x10, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0B, 
                        0x09, 
                        0x04, 
                        Zero
                    }, 

                    Package (0x06)
                    {
                        0x78, 
                        0x5A, 
                        0x3C, 
                        0x28, 
                        0x1E, 
                        0x14
                    }, 

                    Package (0x06)
                    {
                        Zero, 
                        One, 
                        0x02, 
                        One, 
                        0x02, 
                        One
                    }, 

                    Package (0x06)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        One, 
                        One, 
                        One
                    }, 

                    Package (0x04)
                    {
                        0x04, 
                        0x03, 
                        0x02, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x02, 
                        One, 
                        Zero, 
                        Zero
                    }
                })
                Name (TMD0, Buffer (0x14){})
                CreateDWordField (TMD0, Zero, PIO0)
                CreateDWordField (TMD0, 0x04, DMA0)
                CreateDWordField (TMD0, 0x08, PIO1)
                CreateDWordField (TMD0, 0x0C, DMA1)
                CreateDWordField (TMD0, 0x10, CHNF)
                OperationRegion (CFG2, PCI_Config, 0x40, 0x20)
                Field (CFG2, DWordAcc, NoLock, Preserve)
                {
                    PMPT,   4, 
                    PSPT,   4, 
                    PMRI,   6, 
                    Offset (0x02), 
                    SMPT,   4, 
                    SSPT,   4, 
                    SMRI,   6, 
                    Offset (0x04), 
                    PSRI,   4, 
                    SSRI,   4, 
                    Offset (0x08), 
                    PM3E,   1, 
                    PS3E,   1, 
                    SM3E,   1, 
                    SS3E,   1, 
                    Offset (0x0A), 
                    PMUT,   2, 
                        ,   2, 
                    PSUT,   2, 
                    Offset (0x0B), 
                    SMUT,   2, 
                        ,   2, 
                    SSUT,   2, 
                    Offset (0x0C), 
                    Offset (0x14), 
                    PM6E,   1, 
                    PS6E,   1, 
                    SM6E,   1, 
                    SS6E,   1, 
                    PMCR,   1, 
                    PSCR,   1, 
                    SMCR,   1, 
                    SSCR,   1, 
                        ,   4, 
                    PMAE,   1, 
                    PSAE,   1, 
                    SMAE,   1, 
                    SSAE,   1
                }

                Name (GMPT, Zero)
                Name (GMUE, Zero)
                Name (GMUT, Zero)
                Name (GMCR, Zero)
                Name (GSPT, Zero)
                Name (GSUE, Zero)
                Name (GSUT, Zero)
                Name (GSCR, Zero)
                Device (CHN0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        ShiftLeft (PSCR, One, Local1)
                        Or (PMCR, Local1, Local0)
                        ShiftLeft (PMAE, 0x02, Local3)
                        ShiftLeft (PM6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (PM3E, Local3, Local1)
                        ShiftLeft (PMPT, 0x04, Local3)
                        Or (Local1, Local3, Local1)
                        ShiftLeft (PSAE, 0x02, Local3)
                        ShiftLeft (PS6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (PS3E, Local3, Local2)
                        ShiftLeft (PSPT, 0x04, Local3)
                        Or (Local2, Local3, Local2)
                        Return (GTM (PMRI, Local1, PMUT, PSRI, Local2, PSUT, Local0))
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        Store (Arg0, Debug)
                        Store (Arg0, TMD0)
                        ShiftLeft (PMAE, 0x02, Local3)
                        ShiftLeft (PM6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (PM3E, Local3, Local0)
                        ShiftLeft (PMPT, 0x04, Local3)
                        Or (Local0, Local3, Local0)
                        ShiftLeft (PSAE, 0x02, Local3)
                        ShiftLeft (PS6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (PS3E, Local3, Local1)
                        ShiftLeft (PSPT, 0x04, Local3)
                        Or (Local1, Local3, Local1)
                        Store (PMRI, GMPT)
                        Store (Local0, GMUE)
                        Store (PMUT, GMUT)
                        Store (PMCR, GMCR)
                        Store (PSRI, GSPT)
                        Store (Local1, GSUE)
                        Store (PSUT, GSUT)
                        Store (PSCR, GSCR)
                        STM ()
                        Store (GMPT, PMRI)
                        Store (GMUE, Local0)
                        Store (GMUT, PMUT)
                        Store (GMCR, PMCR)
                        Store (GSUE, Local1)
                        Store (GSUT, PSUT)
                        Store (GSCR, PSCR)
                        If (And (Local0, One))
                        {
                            Store (One, PM3E)
                        }
                        Else
                        {
                            Store (Zero, PM3E)
                        }

                        If (And (Local0, 0x02))
                        {
                            Store (One, PM6E)
                        }
                        Else
                        {
                            Store (Zero, PM6E)
                        }

                        If (And (Local0, 0x04))
                        {
                            Store (One, PMAE)
                        }
                        Else
                        {
                            Store (Zero, PMAE)
                        }

                        If (And (Local1, One))
                        {
                            Store (One, PS3E)
                        }
                        Else
                        {
                            Store (Zero, PS3E)
                        }

                        If (And (Local1, 0x02))
                        {
                            Store (One, PS6E)
                        }
                        Else
                        {
                            Store (Zero, PS6E)
                        }

                        If (And (Local1, 0x04))
                        {
                            Store (One, PSAE)
                        }
                        Else
                        {
                            Store (Zero, PSAE)
                        }

                        Store (GTF (Zero, Arg1), ATA0)
                        Store (GTF (One, Arg2), ATA1)
                    }

                    Device (DRV0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA0))
                        }
                    }

                    Device (DRV1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA1))
                        }
                    }
                }

                Device (CHN1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        ShiftLeft (SSCR, One, Local1)
                        Or (SMCR, Local1, Local0)
                        ShiftLeft (SMAE, 0x02, Local3)
                        ShiftLeft (SM6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (SM3E, Local3, Local1)
                        ShiftLeft (SMPT, 0x04, Local3)
                        Or (Local1, Local3, Local1)
                        ShiftLeft (SSAE, 0x02, Local3)
                        ShiftLeft (SS6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (SS3E, Local3, Local2)
                        ShiftLeft (SSPT, 0x04, Local3)
                        Or (Local2, Local3, Local2)
                        Return (GTM (SMRI, Local1, SMUT, SSRI, Local2, SSUT, Local0))
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        Store (Arg0, Debug)
                        Store (Arg0, TMD0)
                        ShiftLeft (SMAE, 0x02, Local3)
                        ShiftLeft (SM6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (SM3E, Local3, Local0)
                        ShiftLeft (SMPT, 0x04, Local3)
                        Or (Local0, Local3, Local0)
                        ShiftLeft (SSAE, 0x02, Local3)
                        ShiftLeft (SS6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (SS3E, Local3, Local1)
                        ShiftLeft (SSPT, 0x04, Local3)
                        Or (Local1, Local3, Local1)
                        Store (SMRI, GMPT)
                        Store (Local0, GMUE)
                        Store (SMUT, GMUT)
                        Store (SMCR, GMCR)
                        Store (SSRI, GSPT)
                        Store (Local1, GSUE)
                        Store (SSUT, GSUT)
                        Store (SSCR, GSCR)
                        STM ()
                        Store (GMPT, SMRI)
                        Store (GMUE, Local0)
                        Store (GMUT, SMUT)
                        Store (GMCR, SMCR)
                        Store (GSUE, Local1)
                        Store (GSUT, SSUT)
                        Store (GSCR, SSCR)
                        If (And (Local0, One))
                        {
                            Store (One, SM3E)
                        }
                        Else
                        {
                            Store (Zero, SM3E)
                        }

                        If (And (Local0, 0x02))
                        {
                            Store (One, SM6E)
                        }
                        Else
                        {
                            Store (Zero, SM6E)
                        }

                        If (And (Local0, 0x04))
                        {
                            Store (One, SMAE)
                        }
                        Else
                        {
                            Store (Zero, SMAE)
                        }

                        If (And (Local1, One))
                        {
                            Store (One, SS3E)
                        }
                        Else
                        {
                            Store (Zero, SS3E)
                        }

                        If (And (Local1, 0x02))
                        {
                            Store (One, SS6E)
                        }
                        Else
                        {
                            Store (Zero, SS6E)
                        }

                        If (And (Local1, 0x04))
                        {
                            Store (One, SSAE)
                        }
                        Else
                        {
                            Store (Zero, SSAE)
                        }

                        Store (GTF (Zero, Arg1), ATA2)
                        Store (GTF (One, Arg2), ATA3)
                    }

                    Device (DRV0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA2))
                        }
                    }

                    Device (DRV1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA3))
                        }
                    }
                }

                Method (GTM, 7, Serialized)
                {
                    Store (Ones, PIO0)
                    Store (Ones, PIO1)
                    Store (Ones, DMA0)
                    Store (Ones, DMA1)
                    Store (0x10, CHNF)
                    If (REGF){}
                    Else
                    {
                        Return (TMD0)
                    }

                    If (And (Arg1, 0x20))
                    {
                        Or (CHNF, 0x02, CHNF)
                    }

                    Store (Match (DerefOf (Index (TIM0, One)), MEQ, Arg0, MTR, Zero, Zero), Local6)
                    Store (DerefOf (Index (DerefOf (Index (TIM0, Zero)), Local6)), Local7)
                    Store (Local7, DMA0)
                    Store (Local7, PIO0)
                    If (And (Arg4, 0x20))
                    {
                        Or (CHNF, 0x08, CHNF)
                    }

                    Store (Match (DerefOf (Index (TIM0, 0x02)), MEQ, Arg3, MTR, Zero, Zero), Local6)
                    Store (DerefOf (Index (DerefOf (Index (TIM0, Zero)), Local6)), Local7)
                    Store (Local7, DMA1)
                    Store (Local7, PIO1)
                    If (And (Arg1, 0x07))
                    {
                        Store (Arg2, Local5)
                        If (And (Arg1, 0x02))
                        {
                            Add (Local5, 0x02, Local5)
                        }

                        If (And (Arg1, 0x04))
                        {
                            Add (Local5, 0x04, Local5)
                        }

                        Store (DerefOf (Index (DerefOf (Index (TIM0, 0x03)), Local5)), DMA0)
                        Or (CHNF, One, CHNF)
                    }

                    If (And (Arg4, 0x07))
                    {
                        Store (Arg5, Local5)
                        If (And (Arg4, 0x02))
                        {
                            Add (Local5, 0x02, Local5)
                        }

                        If (And (Arg4, 0x04))
                        {
                            Add (Local5, 0x04, Local5)
                        }

                        Store (DerefOf (Index (DerefOf (Index (TIM0, 0x03)), Local5)), DMA1)
                        Or (CHNF, 0x04, CHNF)
                    }

                    Store (TMD0, Debug)
                    Return (TMD0)
                }

                Method (STM, 0, Serialized)
                {
                    If (REGF)
                    {
                        Store (Zero, GMUE)
                        Store (Zero, GMUT)
                        Store (Zero, GSUE)
                        Store (Zero, GSUT)
                        If (And (CHNF, One))
                        {
                            Store (Match (DerefOf (Index (TIM0, 0x03)), MLE, DMA0, MTR, Zero, Zero), Local0)
                            If (LGreater (Local0, 0x05))
                            {
                                Store (0x05, Local0)
                            }

                            Store (DerefOf (Index (DerefOf (Index (TIM0, 0x04)), Local0)), GMUT)
                            Or (GMUE, One, GMUE)
                            If (LGreater (Local0, 0x02))
                            {
                                Or (GMUE, 0x02, GMUE)
                            }

                            If (LGreater (Local0, 0x04))
                            {
                                And (GMUE, 0xFD, GMUE)
                                Or (GMUE, 0x04, GMUE)
                            }
                        }
                        ElseIf (Or (LEqual (PIO0, Ones), LEqual (PIO0, Zero)))
                        {
                            If (And (LLess (DMA0, Ones), LGreater (DMA0, Zero)))
                            {
                                Store (DMA0, PIO0)
                                Or (GMUE, 0x80, GMUE)
                            }
                        }

                        If (And (CHNF, 0x04))
                        {
                            Store (Match (DerefOf (Index (TIM0, 0x03)), MLE, DMA1, MTR, Zero, Zero), Local0)
                            If (LGreater (Local0, 0x05))
                            {
                                Store (0x05, Local0)
                            }

                            Store (DerefOf (Index (DerefOf (Index (TIM0, 0x04)), Local0)), GSUT)
                            Or (GSUE, One, GSUE)
                            If (LGreater (Local0, 0x02))
                            {
                                Or (GSUE, 0x02, GSUE)
                            }

                            If (LGreater (Local0, 0x04))
                            {
                                And (GSUE, 0xFD, GSUE)
                                Or (GSUE, 0x04, GSUE)
                            }
                        }
                        ElseIf (Or (LEqual (PIO1, Ones), LEqual (PIO1, Zero)))
                        {
                            If (And (LLess (DMA1, Ones), LGreater (DMA1, Zero)))
                            {
                                Store (DMA1, PIO1)
                                Or (GSUE, 0x80, GSUE)
                            }
                        }

                        If (And (CHNF, 0x02))
                        {
                            Or (GMUE, 0x20, GMUE)
                        }

                        If (And (CHNF, 0x08))
                        {
                            Or (GSUE, 0x20, GSUE)
                        }

                        And (Match (DerefOf (Index (TIM0, Zero)), MGE, PIO0, MTR, Zero, Zero), 0x07, Local0)
                        Store (DerefOf (Index (DerefOf (Index (TIM0, One)), Local0)), Local1)
                        Store (Local1, GMPT)
                        If (LLess (Local0, 0x03))
                        {
                            Or (GMUE, 0x50, GMUE)
                        }

                        And (Match (DerefOf (Index (TIM0, Zero)), MGE, PIO1, MTR, Zero, Zero), 0x07, Local0)
                        Store (DerefOf (Index (DerefOf (Index (TIM0, 0x02)), Local0)), Local1)
                        Store (Local1, GSPT)
                        If (LLess (Local0, 0x03))
                        {
                            Or (GSUE, 0x50, GSUE)
                        }
                    }
                }

                Name (AT01, Buffer (0x07)
                {
                     0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0xEF       
                })
                Name (AT02, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x90       
                })
                Name (AT03, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC6       
                })
                Name (AT04, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x91       
                })
                Name (ATA0, Buffer (0x1D){})
                Name (ATA1, Buffer (0x1D){})
                Name (ATA2, Buffer (0x1D){})
                Name (ATA3, Buffer (0x1D){})
                Name (ATAB, Buffer (0x1D){})
                CreateByteField (ATAB, Zero, CMDC)
                Method (GTFB, 3, Serialized)
                {
                    Multiply (CMDC, 0x38, Local0)
                    Add (Local0, 0x08, Local1)
                    CreateField (ATAB, Local1, 0x38, CMDX)
                    Multiply (CMDC, 0x07, Local0)
                    CreateByteField (ATAB, Add (Local0, 0x02), A001)
                    CreateByteField (ATAB, Add (Local0, 0x06), A005)
                    Store (Arg0, CMDX)
                    Store (Arg1, A001)
                    Store (Arg2, A005)
                    Increment (CMDC)
                }

                Method (GTF, 2, Serialized)
                {
                    Store (Arg1, Debug)
                    Store (Zero, CMDC)
                    Name (ID49, 0x0C00)
                    Name (ID59, Zero)
                    Name (ID53, 0x04)
                    Name (ID63, 0x0F00)
                    Name (ID88, 0x0F00)
                    Name (IRDY, One)
                    Name (PIOT, Zero)
                    Name (DMAT, Zero)
                    If (LEqual (SizeOf (Arg1), 0x0200))
                    {
                        CreateWordField (Arg1, 0x62, IW49)
                        Store (IW49, ID49)
                        CreateWordField (Arg1, 0x6A, IW53)
                        Store (IW53, ID53)
                        CreateWordField (Arg1, 0x7E, IW63)
                        Store (IW63, ID63)
                        CreateWordField (Arg1, 0x76, IW59)
                        Store (IW59, ID59)
                        CreateWordField (Arg1, 0xB0, IW88)
                        Store (IW88, ID88)
                    }

                    Store (0xA0, Local7)
                    If (Arg0)
                    {
                        Store (0xB0, Local7)
                        And (CHNF, 0x08, IRDY)
                        If (And (CHNF, 0x10))
                        {
                            Store (PIO1, PIOT)
                        }
                        Else
                        {
                            Store (PIO0, PIOT)
                        }

                        If (And (CHNF, 0x04))
                        {
                            If (And (CHNF, 0x10))
                            {
                                Store (DMA1, DMAT)
                            }
                            Else
                            {
                                Store (DMA0, DMAT)
                            }
                        }
                    }
                    Else
                    {
                        And (CHNF, 0x02, IRDY)
                        Store (PIO0, PIOT)
                        If (And (CHNF, One))
                        {
                            Store (DMA0, DMAT)
                        }
                    }

                    If (LAnd (LAnd (And (ID53, 0x04), And (ID88, 0xFF00)), DMAT))
                    {
                        Store (Match (DerefOf (Index (TIM0, 0x03)), MLE, DMAT, MTR, Zero, Zero), Local1)
                        If (LGreater (Local1, 0x05))
                        {
                            Store (0x05, Local1)
                        }

                        GTFB (AT01, Or (0x40, Local1), Local7)
                    }
                    ElseIf (LAnd (And (ID63, 0xFF00), PIOT))
                    {
                        And (Match (DerefOf (Index (TIM0, Zero)), MGE, PIOT, MTR, Zero, Zero), 0x03, Local0)
                        Or (0x20, DerefOf (Index (DerefOf (Index (TIM0, 0x07)), Local0)), Local1)
                        GTFB (AT01, Local1, Local7)
                    }

                    If (IRDY)
                    {
                        And (Match (DerefOf (Index (TIM0, Zero)), MGE, PIOT, MTR, Zero, Zero), 0x07, Local0)
                        Or (0x08, DerefOf (Index (DerefOf (Index (TIM0, 0x06)), Local0)), Local1)
                        GTFB (AT01, Local1, Local7)
                    }
                    ElseIf (And (ID49, 0x0400))
                    {
                        GTFB (AT01, One, Local7)
                    }

                    If (LAnd (And (ID59, 0x0100), And (ID59, 0xFF)))
                    {
                        GTFB (AT03, And (ID59, 0xFF), Local7)
                    }

                    Store (ATAB, Debug)
                    Return (ATAB)
                }

                Method (RATA, 1, NotSerialized)
                {
                    CreateByteField (Arg0, Zero, CMDN)
                    Multiply (CMDN, 0x38, Local0)
                    CreateField (Arg0, 0x08, Local0, RETB)
                    Store (RETB, Debug)
                    Return (Concatenate (RETB, FZTF))
                }
            }

            Device (SMB)
            {
                Name (_ADR, 0x001F0003)  // _ADR: Address
                OperationRegion (SMIO, SystemIO, SMBS, SMBL)
                Field (SMIO, ByteAcc, NoLock, Preserve)
                {
                    HSTS,   8, 
                    HCNT,   8, 
                    HCMD,   8, 
                    TSAD,   8, 
                    HDT0,   8, 
                    HDT1,   8, 
                    HBDT,   8, 
                    RSAD,   8, 
                    RSDA,   16, 
                    AUST,   8, 
                    AUCT,   8, 
                    SMLP,   8, 
                    SMBP,   8, 
                    SSTS,   8, 
                    SCMD,   8, 
                    NDAD,   8, 
                    NDLB,   8, 
                    NDHB,   8
                }

                Method (SMCS, 0, NotSerialized)
                {
                    Store (0x20, HSTS)
                }

                Scope (\_GPE)
                {
                    Method (_L07, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
                    {
                        Store (0x20, \_SB.PCI0.SMB.HSTS)
                    }

                    Method (_L1B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
                    {
                        Store (0x20, \_SB.PCI0.SMB.HSTS)
                    }
                }
            }

            Device (EUSB)
            {
                Name (_ADR, 0x001D0000)  // _ADR: Address
                Name (_S4D, 0x02)  // _S4D: S4 Device State
                Name (_S3D, 0x02)  // _S3D: S3 Device State
                Name (_S2D, 0x02)  // _S2D: S2 Device State
                Name (_S1D, 0x02)  // _S1D: S1 Device State
                Device (HUBN)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (PR10)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Buffer (0x10)  // _PLD: Physical Location of Device
                        {
                            /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0008 */  0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                        })
                        Device (PR30)
                        {
                            Name (_ADR, One)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Name (_PLD, Buffer (0x10)  // _PLD: Physical Location of Device
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0xE1, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                            })
                        }

                        Device (PR31)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Name (_PLD, Buffer (0x10)  // _PLD: Physical Location of Device
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0xE1, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                            })
                        }

                        Device (PR32)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Name (_PLD, Buffer (0x10)  // _PLD: Physical Location of Device
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0xE1, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                            })
                        }

                        Device (PR33)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Name (_PLD, Buffer (0x10)  // _PLD: Physical Location of Device
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0xE1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                            })
                        }

                        Device (PR34)
                        {
                            Name (_ADR, 0x05)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Name (_PLD, Buffer (0x10)  // _PLD: Physical Location of Device
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                            })
                        }

                        Device (PR35)
                        {
                            Name (_ADR, 0x06)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Name (_PLD, Buffer (0x10)  // _PLD: Physical Location of Device
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                            })
                        }

                        Device (PR36)
                        {
                            Name (_ADR, 0x07)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Name (_PLD, Buffer (0x10)  // _PLD: Physical Location of Device
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                            })
                        }

                        Device (PR37)
                        {
                            Name (_ADR, 0x08)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Name (_PLD, Buffer (0x10)  // _PLD: Physical Location of Device
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                            })
                        }
                    }
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0D, 0x03))
                }
            }

            Device (USBE)
            {
                Name (_ADR, 0x001A0000)  // _ADR: Address
                Name (_S4D, 0x02)  // _S4D: S4 Device State
                Name (_S3D, 0x02)  // _S3D: S3 Device State
                Name (_S2D, 0x02)  // _S2D: S2 Device State
                Name (_S1D, 0x02)  // _S1D: S1 Device State
                Device (HUBN)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (PR10)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Buffer (0x10)  // _PLD: Physical Location of Device
                        {
                            /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0008 */  0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                        })
                        Device (PR30)
                        {
                            Name (_ADR, One)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Name (_PLD, Buffer (0x10)  // _PLD: Physical Location of Device
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0xE1, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                            })
                        }

                        Device (PR31)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Name (_PLD, Buffer (0x10)  // _PLD: Physical Location of Device
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0xE1, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                            })
                        }

                        Device (PR32)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Name (_PLD, Buffer (0x10)  // _PLD: Physical Location of Device
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0xE1, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                            })
                        }

                        Device (PR33)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Name (_PLD, Buffer (0x10)  // _PLD: Physical Location of Device
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0xE1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                            })
                        }

                        Device (PR34)
                        {
                            Name (_ADR, 0x05)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            Name (_PLD, Buffer (0x10)  // _PLD: Physical Location of Device
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                            })
                        }

                        Device (PR35)
                        {
                            Name (_ADR, 0x06)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Name (_PLD, Buffer (0x10)  // _PLD: Physical Location of Device
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0xE1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                            })
                        }
                    }
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0D, 0x03))
                }
            }

            Device (PEX0)
            {
                Name (_ADR, 0x001C0000)  // _ADR: Address
                OperationRegion (PXRC, PCI_Config, Zero, 0x0100)
                Field (PXRC, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    Offset (0x62), 
                    PMS,    1, 
                    PMP,    1, 
                    Offset (0xD8), 
                        ,   30, 
                    HPE,    1, 
                    PCE,    1, 
                        ,   30, 
                    HPS,    1, 
                    PCS,    1
                }

                Method (CSS, 0, NotSerialized)
                {
                    Store (One, PMS)
                    Store (One, PCS)
                    Store (One, PMS)
                }

                Method (SPRT, 1, NotSerialized)
                {
                    CSS ()
                    Store (One, PCE)
                    CSS ()
                }

                Method (WPRT, 1, NotSerialized)
                {
                    Store (Zero, PCE)
                    CSS ()
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR11)
                    }

                    Return (PR11)
                }
            }

            Device (PEX1)
            {
                Name (_ADR, 0x001C0001)  // _ADR: Address
                OperationRegion (PXRC, PCI_Config, Zero, 0x0100)
                Field (PXRC, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    Offset (0x62), 
                    PMS,    1, 
                    PMP,    1, 
                    Offset (0xD8), 
                        ,   30, 
                    HPE,    1, 
                    PCE,    1, 
                        ,   30, 
                    HPS,    1, 
                    PCS,    1
                }

                Method (CSS, 0, NotSerialized)
                {
                    Store (One, PMS)
                    Store (One, PCS)
                    Store (One, PMS)
                }

                Method (SPRT, 1, NotSerialized)
                {
                    CSS ()
                    Store (One, PCE)
                    CSS ()
                }

                Method (WPRT, 1, NotSerialized)
                {
                    Store (Zero, PCE)
                    CSS ()
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR12)
                    }

                    Return (PR12)
                }
            }

            Device (PEX2)
            {
                Name (_ADR, 0x001C0002)  // _ADR: Address
                OperationRegion (PXRC, PCI_Config, Zero, 0x0100)
                Field (PXRC, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    Offset (0x62), 
                    PMS,    1, 
                    PMP,    1, 
                    Offset (0xD8), 
                        ,   30, 
                    HPE,    1, 
                    PCE,    1, 
                        ,   30, 
                    HPS,    1, 
                    PCS,    1
                }

                Method (CSS, 0, NotSerialized)
                {
                    Store (One, PMS)
                    Store (One, PCS)
                    Store (One, PMS)
                }

                Method (SPRT, 1, NotSerialized)
                {
                    CSS ()
                    Store (One, PCE)
                    CSS ()
                }

                Method (WPRT, 1, NotSerialized)
                {
                    Store (Zero, PCE)
                    CSS ()
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR13)
                    }

                    Return (PR13)
                }
            }

            Device (PEX3)
            {
                Name (_ADR, 0x001C0003)  // _ADR: Address
                OperationRegion (PXRC, PCI_Config, Zero, 0x0100)
                Field (PXRC, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    Offset (0x62), 
                    PMS,    1, 
                    PMP,    1, 
                    Offset (0xD8), 
                        ,   30, 
                    HPE,    1, 
                    PCE,    1, 
                        ,   30, 
                    HPS,    1, 
                    PCS,    1
                }

                Method (CSS, 0, NotSerialized)
                {
                    Store (One, PMS)
                    Store (One, PCS)
                    Store (One, PMS)
                }

                Method (SPRT, 1, NotSerialized)
                {
                    CSS ()
                    Store (One, PCE)
                    CSS ()
                }

                Method (WPRT, 1, NotSerialized)
                {
                    Store (Zero, PCE)
                    CSS ()
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR14)
                    }

                    Return (PR14)
                }
            }

            Device (PEX4)
            {
                Name (_ADR, 0x001C0004)  // _ADR: Address
                OperationRegion (PXRC, PCI_Config, Zero, 0x0100)
                Field (PXRC, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    Offset (0x62), 
                    PMS,    1, 
                    PMP,    1, 
                    Offset (0xD8), 
                        ,   30, 
                    HPE,    1, 
                    PCE,    1, 
                        ,   30, 
                    HPS,    1, 
                    PCS,    1
                }

                Method (CSS, 0, NotSerialized)
                {
                    Store (One, PMS)
                    Store (One, PCS)
                    Store (One, PMS)
                }

                Method (SPRT, 1, NotSerialized)
                {
                    CSS ()
                    Store (One, PCE)
                    CSS ()
                }

                Method (WPRT, 1, NotSerialized)
                {
                    Store (Zero, PCE)
                    CSS ()
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR15)
                    }

                    Return (PR15)
                }
            }

            Device (PEX5)
            {
                Name (_ADR, 0x001C0005)  // _ADR: Address
                OperationRegion (PXRC, PCI_Config, Zero, 0x0100)
                Field (PXRC, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    Offset (0x62), 
                    PMS,    1, 
                    PMP,    1, 
                    Offset (0xD8), 
                        ,   30, 
                    HPE,    1, 
                    PCE,    1, 
                        ,   30, 
                    HPS,    1, 
                    PCS,    1
                }

                Method (CSS, 0, NotSerialized)
                {
                    Store (One, PMS)
                    Store (One, PCS)
                    Store (One, PMS)
                }

                Method (SPRT, 1, NotSerialized)
                {
                    CSS ()
                    Store (One, PCE)
                    CSS ()
                }

                Method (WPRT, 1, NotSerialized)
                {
                    Store (Zero, PCE)
                    CSS ()
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR16)
                    }

                    Return (PR16)
                }
            }

            Device (PEX6)
            {
                Name (_ADR, 0x001C0006)  // _ADR: Address
                OperationRegion (PXRC, PCI_Config, Zero, 0x0100)
                Field (PXRC, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    Offset (0x62), 
                    PMS,    1, 
                    PMP,    1, 
                    Offset (0xD8), 
                        ,   30, 
                    HPE,    1, 
                    PCE,    1, 
                        ,   30, 
                    HPS,    1, 
                    PCS,    1
                }

                Method (CSS, 0, NotSerialized)
                {
                    Store (One, PMS)
                    Store (One, PCS)
                    Store (One, PMS)
                }

                Method (SPRT, 1, NotSerialized)
                {
                    CSS ()
                    Store (One, PCE)
                    CSS ()
                }

                Method (WPRT, 1, NotSerialized)
                {
                    Store (Zero, PCE)
                    CSS ()
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR17)
                    }

                    Return (PR17)
                }
            }

            Device (PEX7)
            {
                Name (_ADR, 0x001C0007)  // _ADR: Address
                OperationRegion (PXRC, PCI_Config, Zero, 0x0100)
                Field (PXRC, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    Offset (0x62), 
                    PMS,    1, 
                    PMP,    1, 
                    Offset (0xD8), 
                        ,   30, 
                    HPE,    1, 
                    PCE,    1, 
                        ,   30, 
                    HPS,    1, 
                    PCS,    1
                }

                Method (CSS, 0, NotSerialized)
                {
                    Store (One, PMS)
                    Store (One, PCS)
                    Store (One, PMS)
                }

                Method (SPRT, 1, NotSerialized)
                {
                    CSS ()
                    Store (One, PCE)
                    CSS ()
                }

                Method (WPRT, 1, NotSerialized)
                {
                    Store (Zero, PCE)
                    CSS ()
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR18)
                    }

                    Return (PR18)
                }
            }

            Device (GBE)
            {
                Name (_ADR, 0x00190000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0D, 0x04))
                }
            }

            Device (P0P1)
            {
                Name (_ADR, 0x00010000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR01)
                    }

                    Return (PR01)
                }
            }

            Device (P0P2)
            {
                Name (_ADR, 0x00010001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR02)
                    }

                    Return (PR02)
                }
            }

            Device (P0P3)
            {
                Name (_ADR, 0x00010002)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR03)
                    }

                    Return (PR03)
                }
            }

            Device (P0P4)
            {
                Name (_ADR, 0x00060000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR04)
                    }

                    Return (PR04)
                }
            }

            Device (GBE1)
            {
                Name (_ADR, 0x00190007)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0D, 0x04))
                }
            }
        }

        Scope (\_GPE)
        {
            Method (_L08, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                \_SB.PCI0.SBRG.SIOH ()
                Notify (\_SB.PWRB, 0x02)
            }

            Method (_L0B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.BR20, 0x02)
                Notify (\_SB.PWRB, 0x02)
            }

            Method (_L0D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.EUSB, 0x02)
                Notify (\_SB.PCI0.USBE, 0x02)
                Notify (\_SB.PCI0.GBE, 0x02)
                Notify (\_SB.PCI0.GBE1, 0x02)
                Notify (\_SB.PWRB, 0x02)
            }

            Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.PEX0, 0x02)
                Notify (\_SB.PCI0.PEX1, 0x02)
                Notify (\_SB.PCI0.PEX2, 0x02)
                Notify (\_SB.PCI0.PEX3, 0x02)
                Notify (\_SB.PCI0.PEX4, 0x02)
                Notify (\_SB.PCI0.PEX5, 0x02)
                Notify (\_SB.PCI0.PEX6, 0x02)
                Notify (\_SB.PCI0.PEX7, 0x02)
                Notify (\_SB.PCI0.P0P1, 0x02)
                Notify (\_SB.PCI0.P0P2, 0x02)
                Notify (\_SB.PCI0.P0P3, 0x02)
                Notify (\_SB.PCI0.P0P4, 0x02)
                Notify (\_SB.PWRB, 0x02)
            }
        }

        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C"))  // _HID: Hardware ID
            Name (_UID, 0xAA)  // _UID: Unique ID
            Name (_STA, 0x0B)  // _STA: Status
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x08, 0x03))
            }
        }
    }

    OperationRegion (_SB.PCI0.SBRG.PIX0, PCI_Config, 0x60, 0x0C)
    Field (\_SB.PCI0.SBRG.PIX0, ByteAcc, NoLock, Preserve)
    {
        PIRA,   8, 
        PIRB,   8, 
        PIRC,   8, 
        PIRD,   8, 
        Offset (0x08), 
        PIRE,   8, 
        PIRF,   8, 
        PIRG,   8, 
        PIRH,   8
    }

    Scope (_SB)
    {
        Name (BUFA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {15}
        })
        CreateWordField (BUFA, One, IRA0)
        Device (LNKA)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                And (PIRA, 0x80, Local0)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSA)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (PIRA, 0x80, PIRA)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (PIRA, 0x0F, Local0)
                ShiftLeft (One, Local0, IRA0)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRA)
            }
        }

        Device (LNKB)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                And (PIRB, 0x80, Local0)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSB)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (PIRB, 0x80, PIRB)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (PIRB, 0x0F, Local0)
                ShiftLeft (One, Local0, IRA0)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRB)
            }
        }

        Device (LNKC)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                And (PIRC, 0x80, Local0)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSC)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (PIRC, 0x80, PIRC)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (PIRC, 0x0F, Local0)
                ShiftLeft (One, Local0, IRA0)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRC)
            }
        }

        Device (LNKD)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                And (PIRD, 0x80, Local0)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSD)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (PIRD, 0x80, PIRD)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (PIRD, 0x0F, Local0)
                ShiftLeft (One, Local0, IRA0)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRD)
            }
        }

        Device (LNKE)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                And (PIRE, 0x80, Local0)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSE)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (PIRE, 0x80, PIRE)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (PIRE, 0x0F, Local0)
                ShiftLeft (One, Local0, IRA0)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRE)
            }
        }

        Device (LNKF)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x06)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                And (PIRF, 0x80, Local0)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSF)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (PIRF, 0x80, PIRF)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (PIRF, 0x0F, Local0)
                ShiftLeft (One, Local0, IRA0)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRF)
            }
        }

        Device (LNKG)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x07)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                And (PIRG, 0x80, Local0)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSG)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (PIRG, 0x80, PIRG)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (PIRG, 0x0F, Local0)
                ShiftLeft (One, Local0, IRA0)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRG)
            }
        }

        Device (LNKH)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x08)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                And (PIRH, 0x80, Local0)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSH)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (PIRH, 0x80, PIRH)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (PIRH, 0x0F, Local0)
                ShiftLeft (One, Local0, IRA0)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRH)
            }
        }
    }

    Scope (_SB.PCI0.SBRG)
    {
        Method (SIOH, 0, NotSerialized)
        {
            If (WMIT)
            {
                ^^^WMID.WMBB (One)
            }

            If (WMIF)
            {
                ^^^WMID.WMBB (0x02)
            }

            If (WMIH)
            {
                ^^^WMID.WMBB (0x03)
            }

            If (And (PMFG, 0xE8))
            {
                Notify (PS2K, 0x02)
            }

            If (And (PMFG, 0x10))
            {
                Notify (PS2M, 0x02)
            }
        }
    }

    Scope (_PR)
    {
        OperationRegion (SSDT, SystemMemory, 0xCF514C18, 0x038C)
        OperationRegion (CSDT, SystemMemory, 0xCF515E18, 0x0084)
        Name (NCST, 0x02)
        Name (NPSS, 0x0A)
        Name (HNDL, 0x80000000)
        Name (CHDL, 0x80000000)
        Name (TNLP, 0x0004)
        Name (CINT, Zero)
        Name (PDCV, 0xFFFFFFFF)
        Name (APSS, Package (0x0A)
        {
            Package (0x06)
            {
                0x0CE4, 
                0x0000FDE8, 
                0x000A, 
                0x000A, 
                0x2100, 
                0x2100
            }, 

            Package (0x06)
            {
                0x0C1C, 
                0x0000E678, 
                0x000A, 
                0x000A, 
                0x1F00, 
                0x1F00
            }, 

            Package (0x06)
            {
                0x0B54, 
                0x0000D2F0, 
                0x000A, 
                0x000A, 
                0x1D00, 
                0x1D00
            }, 

            Package (0x06)
            {
                0x0A8C, 
                0x0000BF68, 
                0x000A, 
                0x000A, 
                0x1B00, 
                0x1B00
            }, 

            Package (0x06)
            {
                0x09C4, 
                0x0000AFC8, 
                0x000A, 
                0x000A, 
                0x1900, 
                0x1900
            }, 

            Package (0x06)
            {
                0x08FC, 
                0x00009C40, 
                0x000A, 
                0x000A, 
                0x1700, 
                0x1700
            }, 

            Package (0x06)
            {
                0x0834, 
                0x00008CA0, 
                0x000A, 
                0x000A, 
                0x1500, 
                0x1500
            }, 

            Package (0x06)
            {
                0x076C, 
                0x00007D00, 
                0x000A, 
                0x000A, 
                0x1300, 
                0x1300
            }, 

            Package (0x06)
            {
                0x06A4, 
                0x00006D60, 
                0x000A, 
                0x000A, 
                0x1100, 
                0x1100
            }, 

            Package (0x06)
            {
                0x0640, 
                0x00006590, 
                0x000A, 
                0x000A, 
                0x1000, 
                0x1000
            }
        })
        Name (PTCI, Package (0x02)
        {
            ResourceTemplate ()
            {
                Register (SystemIO, 
                    0x04,               // Bit Width
                    0x01,               // Bit Offset
                    0x0000000000000410, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (SystemIO, 
                    0x04,               // Bit Width
                    0x01,               // Bit Offset
                    0x0000000000000410, // Address
                    ,)
            }
        })
        Name (\PSTE, Zero)
        Name (\TSTE, Zero)
        Name (TSSI, Package (0x01)
        {
            Package (0x05)
            {
                0x64, 
                0x03E8, 
                Zero, 
                Zero, 
                Zero
            }
        })
        Name (TSSM, Package (0x08)
        {
            Package (0x05)
            {
                0x64, 
                0x03E8, 
                Zero, 
                Zero, 
                Zero
            }, 

            Package (0x05)
            {
                0x58, 
                0x036B, 
                Zero, 
                0x1E, 
                Zero
            }, 

            Package (0x05)
            {
                0x4B, 
                0x02EE, 
                Zero, 
                0x1C, 
                Zero
            }, 

            Package (0x05)
            {
                0x3F, 
                0x0271, 
                Zero, 
                0x1A, 
                Zero
            }, 

            Package (0x05)
            {
                0x32, 
                0x01F4, 
                Zero, 
                0x18, 
                Zero
            }, 

            Package (0x05)
            {
                0x26, 
                0x0177, 
                Zero, 
                0x16, 
                Zero
            }, 

            Package (0x05)
            {
                0x19, 
                0xFA, 
                Zero, 
                0x14, 
                Zero
            }, 

            Package (0x05)
            {
                0x0D, 
                0x7D, 
                Zero, 
                0x12, 
                Zero
            }
        })
        Name (C1ST, Package (0x02)
        {
            One, 
            Package (0x04)
            {
                ResourceTemplate ()
                {
                    Register (FFixedHW, 
                        0x00,               // Bit Width
                        0x00,               // Bit Offset
                        0x0000000000000000, // Address
                        ,)
                }, 

                0x01, 
                0x01, 
                0x03E8
            }
        })
        Name (CMST, Package (0x04)
        {
            0x03, 
            Package (0x04)
            {
                ResourceTemplate ()
                {
                    Register (FFixedHW, 
                        0x00,               // Bit Width
                        0x00,               // Bit Offset
                        0x0000000000000000, // Address
                        ,)
                }, 

                0x01, 
                0x01, 
                0x03E8
            }, 

            Package (0x04)
            {
                ResourceTemplate ()
                {
                    Register (FFixedHW, 
                        0x01,               // Bit Width
                        0x02,               // Bit Offset
                        0x0000000000000010, // Address
                        0x03,               // Access Size
                        )
                }, 

                0x02, 
                0x50, 
                0x01F4
            }, 

            Package (0x04)
            {
                ResourceTemplate ()
                {
                    Register (FFixedHW, 
                        0x01,               // Bit Width
                        0x02,               // Bit Offset
                        0x0000000000000020, // Address
                        0x03,               // Access Size
                        )
                }, 

                0x03, 
                0x68, 
                0x015E
            }
        })
        Name (CIST, Package (0x04)
        {
            0x03, 
            Package (0x04)
            {
                ResourceTemplate ()
                {
                    Register (FFixedHW, 
                        0x00,               // Bit Width
                        0x00,               // Bit Offset
                        0x0000000000000000, // Address
                        ,)
                }, 

                0x01, 
                0x01, 
                0x03E8
            }, 

            Package (0x04)
            {
                ResourceTemplate ()
                {
                    Register (SystemIO, 
                        0x08,               // Bit Width
                        0x00,               // Bit Offset
                        0x0000000000000414, // Address
                        ,)
                }, 

                0x02, 
                0x50, 
                0x01F4
            }, 

            Package (0x04)
            {
                ResourceTemplate ()
                {
                    Register (SystemIO, 
                        0x08,               // Bit Width
                        0x00,               // Bit Offset
                        0x0000000000000415, // Address
                        ,)
                }, 

                0x03, 
                0x68, 
                0x015E
            }
        })
        Method (CST, 0, NotSerialized)
        {
            If (LNotEqual (And (PDCV, 0x0200), 0x0200))
            {
                If (LEqual (NCST, 0x02))
                {
                    Store (One, NCST)
                }
            }

            If (LEqual (NCST, Zero))
            {
                Return (C1ST)
            }

            If (LEqual (NCST, One))
            {
                Return (CIST)
            }

            If (LEqual (NCST, 0x02))
            {
                Return (CMST)
            }

            Return (C1ST)
        }

        Method (PDC, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Store (SizeOf (Arg0), Local0)
            Store (Subtract (Local0, 0x08), Local1)
            CreateField (Arg0, 0x40, Multiply (Local1, 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                         
            })
            Concatenate (STS0, TEMP, Local2)
            OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953"), REVS, SIZE, Local2)
        }

        Method (OSC, 4, NotSerialized)
        {
            CreateDWordField (Arg3, Zero, STS)
            CreateDWordField (Arg3, 0x04, CAP)
            CreateDWordField (Arg0, Zero, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953"))
            CreateDWordField (UID0, Zero, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (LNot (LAnd (LAnd (LEqual (IID0, EID0), LEqual (IID1, EID1)), LAnd (LEqual (IID2, EID2), LEqual (IID3, EID3)))))
            {
                Store (0x06, Index (STS, Zero))
                Return (Arg3)
            }

            And (PDCV, CAP, PDCV)
            If (LEqual (CINT, Zero))
            {
                Store (One, CINT)
                If (LEqual (And (PDCV, 0x09), 0x09))
                {
                    If (LNotEqual (NPSS, Zero))
                    {
                        Load (SSDT, HNDL)
                    }
                }

                If (LEqual (And (PDCV, 0x10), 0x10))
                {
                    If (LNotEqual (NCST, 0xFF))
                    {
                        Load (CSDT, CHDL)
                    }
                }
            }

            Return (Arg3)
        }
    }

    OperationRegion (_SB.PCI0.SBRG.LPCR, PCI_Config, 0x80, 0x04)
    Field (\_SB.PCI0.SBRG.LPCR, ByteAcc, NoLock, Preserve)
    {
        CADR,   3, 
            ,   1, 
        CBDR,   3, 
        Offset (0x01), 
        LTDR,   2, 
            ,   2, 
        FDDR,   1, 
        Offset (0x02), 
        CALE,   1, 
        CBLE,   1, 
        LTLE,   1, 
        FDLE,   1, 
        Offset (0x03), 
        GLLE,   1, 
        GHLE,   1, 
        KCLE,   1, 
        MCLE,   1, 
        C1LE,   1, 
        C2LE,   1, 
        Offset (0x04)
    }

    Method (UXDV, 1, NotSerialized)
    {
        Store (0xFF, Local0)
        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
        Store (Add (Arg0, Zero), _T_0)
        If (LEqual (_T_0, 0x03F8))
        {
            Store (Zero, Local0)
        }
        ElseIf (LEqual (_T_0, 0x02F8))
        {
            Store (One, Local0)
        }
        ElseIf (LEqual (_T_0, 0x0220))
        {
            Store (0x02, Local0)
        }
        ElseIf (LEqual (_T_0, 0x0228))
        {
            Store (0x03, Local0)
        }
        ElseIf (LEqual (_T_0, 0x0238))
        {
            Store (0x04, Local0)
        }
        ElseIf (LEqual (_T_0, 0x02E8))
        {
            Store (0x05, Local0)
        }
        ElseIf (LEqual (_T_0, 0x0338))
        {
            Store (0x06, Local0)
        }
        ElseIf (LEqual (_T_0, 0x03E8))
        {
            Store (0x07, Local0)
        }

        Return (Local0)
    }

    Method (RRIO, 4, NotSerialized)
    {
        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
        Store (Add (Arg0, Zero), _T_0)
        If (LEqual (_T_0, Zero))
        {
            Store (Zero, CALE)
            Store (UXDV (Arg2), Local0)
            If (LNotEqual (Local0, 0xFF))
            {
                Store (Local0, CADR)
            }

            If (Arg1)
            {
                Store (One, CALE)
            }
        }
        ElseIf (LEqual (_T_0, One))
        {
            Store (Zero, CBLE)
            Store (UXDV (Arg2), Local0)
            If (LNotEqual (Local0, 0xFF))
            {
                Store (Local0, CBDR)
            }

            If (Arg1)
            {
                Store (One, CBLE)
            }
        }
        ElseIf (LEqual (_T_0, 0x02))
        {
            Store (Zero, LTLE)
            If (LEqual (Arg2, 0x0378))
            {
                Store (Zero, LTDR)
            }

            If (LEqual (Arg2, 0x0278))
            {
                Store (One, LTDR)
            }

            If (LEqual (Arg2, 0x03BC))
            {
                Store (0x02, LTDR)
            }

            If (Arg1)
            {
                Store (One, LTLE)
            }
        }
        ElseIf (LEqual (_T_0, 0x03))
        {
            Store (Zero, FDLE)
            If (LEqual (Arg2, 0x03F0))
            {
                Store (Zero, FDDR)
            }

            If (LEqual (Arg2, 0x0370))
            {
                Store (One, FDDR)
            }

            If (Arg1)
            {
                Store (One, FDLE)
            }
        }
        ElseIf (LEqual (_T_0, 0x08))
        {
            If (LEqual (Arg2, 0x0200))
            {
                If (Arg1)
                {
                    Store (One, GLLE)
                }
                Else
                {
                    Store (Zero, GLLE)
                }
            }

            If (LEqual (Arg2, 0x0208))
            {
                If (Arg1)
                {
                    Store (One, GHLE)
                }
                Else
                {
                    Store (Zero, GHLE)
                }
            }
        }
        ElseIf (LEqual (_T_0, 0x09))
        {
            If (LEqual (Arg2, 0x0200))
            {
                If (Arg1)
                {
                    Store (One, GLLE)
                }
                Else
                {
                    Store (Zero, GLLE)
                }
            }

            If (LEqual (Arg2, 0x0208))
            {
                If (Arg1)
                {
                    Store (One, GHLE)
                }
                Else
                {
                    Store (Zero, GHLE)
                }
            }
        }
        ElseIf (LEqual (_T_0, 0x0A))
        {
            If (LOr (LEqual (Arg2, 0x60), LEqual (Arg2, 0x64)))
            {
                If (Arg1)
                {
                    Store (One, KCLE)
                }
                Else
                {
                    Store (Zero, KCLE)
                }
            }
        }
        ElseIf (LEqual (_T_0, 0x0B))
        {
            If (LOr (LEqual (Arg2, 0x62), LEqual (Arg2, 0x66)))
            {
                If (Arg1)
                {
                    Store (One, MCLE)
                }
                Else
                {
                    Store (Zero, MCLE)
                }
            }
        }
        ElseIf (LEqual (_T_0, 0x0C))
        {
            If (LEqual (Arg2, 0x2E))
            {
                If (Arg1)
                {
                    Store (One, C1LE)
                }
                Else
                {
                    Store (Zero, C1LE)
                }
            }

            If (LEqual (Arg2, 0x4E))
            {
                If (Arg1)
                {
                    Store (One, C2LE)
                }
                Else
                {
                    Store (Zero, C2LE)
                }
            }
        }
        ElseIf (LEqual (_T_0, 0x0D))
        {
            If (LEqual (Arg2, 0x2E))
            {
                If (Arg1)
                {
                    Store (One, C1LE)
                }
                Else
                {
                    Store (Zero, C1LE)
                }
            }

            If (LEqual (Arg2, 0x4E))
            {
                If (Arg1)
                {
                    Store (One, C2LE)
                }
                Else
                {
                    Store (Zero, C2LE)
                }
            }
        }
    }

    Method (RDMA, 3, NotSerialized)
    {
    }

    Scope (_SB)
    {
        Scope (PCI0)
        {
            Device (HPET)
            {
                Name (_HID, EisaId ("PNP0103"))  // _HID: Hardware ID
                Name (CRS, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFED00000,         // Address Base
                        0x00000400,         // Address Length
                        _Y23)
                })
                OperationRegion (HCNT, SystemMemory, HPTC, 0x04)
                Field (HCNT, DWordAcc, NoLock, Preserve)
                {
                    HPTS,   2, 
                        ,   5, 
                    HPTE,   1
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (HPTE)
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    CreateDWordField (CRS, \_SB.PCI0.HPET._Y23._BAS, HTBS)  // _BAS: Base Address
                    Multiply (HPTS, 0x1000, Local0)
                    Add (Local0, 0xFED00000, HTBS)
                    Return (CRS)
                }
            }
        }
    }

    Scope (_SB)
    {
        Scope (PCI0)
        {
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
            }
        }
    }

    Name (WOTB, Zero)
    Name (WSSB, Zero)
    Name (WAXB, Zero)
    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        Store (Arg0, DBG8)
        If (LAnd (LEqual (Arg0, 0x04), LEqual (OSFL (), 0x02)))
        {
            Sleep (0x0BB8)
        }

        PTS (Arg0)
        Store (Zero, Index (WAKP, Zero))
        Store (Zero, Index (WAKP, One))
        Store (ASSB, WSSB)
        Store (AOTB, WOTB)
        Store (AAXB, WAXB)
        Store (Arg0, ASSB)
        Store (OSFL (), AOTB)
        Store (Zero, AAXB)
        Store (One, \_SB.SLPS)
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        ShiftLeft (Arg0, 0x04, DBG8)
        WAK (Arg0)
        If (ASSB)
        {
            Store (WSSB, ASSB)
            Store (WOTB, AOTB)
            Store (WAXB, AAXB)
        }

        If (DerefOf (Index (WAKP, Zero)))
        {
            Store (Zero, Index (WAKP, One))
        }
        Else
        {
            Store (Arg0, Index (WAKP, One))
        }

        Return (WAKP)
    }

    Device (OMSC)
    {
        Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
        Name (_UID, 0x0E11)  // _UID: Unique ID
    }

    Device (_SB.RMEM)
    {
        Name (_HID, EisaId ("PNP0C01"))  // _HID: Hardware ID
        Name (_UID, One)  // _UID: Unique ID
    }

    Scope (_SB.PCI0)
    {
        Device (GFX0)
        {
            Name (_ADR, 0x00020000)  // _ADR: Address
            Name (OPBS, 0xFFFFFF00)
            Method (OPBA, 0, NotSerialized)
            {
                Store (ASLS, Local0)
                If (LEqual (Local0, 0xFFFFFFFF))
                {
                    Store (0xFF000000, Local0)
                }

                Return (Local0)
            }

            Scope (^^PCI0)
            {
                OperationRegion (MCHP, PCI_Config, 0x40, 0xC0)
                Field (MCHP, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    TASM,   10, 
                    Offset (0x62)
                }
            }

            OperationRegion (IGDP, PCI_Config, 0x40, 0xC0)
            Field (IGDP, AnyAcc, NoLock, Preserve)
            {
                Offset (0x12), 
                    ,   1, 
                GIVD,   1, 
                    ,   2, 
                GUMA,   3, 
                Offset (0x14), 
                    ,   4, 
                GMFN,   1, 
                Offset (0x18), 
                Offset (0x8C), 
                CDCT,   10, 
                Offset (0x8E), 
                Offset (0xA8), 
                GSSE,   1, 
                GSSB,   14, 
                GSES,   1, 
                Offset (0xBC), 
                ASLS,   32
            }

            Name (M512, 0x08)
            Name (M1GB, 0x10)
            OperationRegion (IGDM, SystemMemory, OPBA (), 0x2000)
            Field (IGDM, AnyAcc, NoLock, Preserve)
            {
                SIGN,   128, 
                SIZE,   32, 
                OVER,   32, 
                SVER,   256, 
                VVER,   128, 
                GVER,   128, 
                MBOX,   32, 
                Offset (0xE0), 
                KSV0,   32, 
                KSV1,   8, 
                Offset (0xF0), 
                IBTT,   8, 
                IPSC,   8, 
                IPAT,   8, 
                IBIA,   8, 
                IBLC,   8, 
                ITVF,   4, 
                ITVM,   4, 
                IDVM,   8, 
                IDVS,   8, 
                ISSC,   8, 
                Offset (0x100), 
                DRDY,   32, 
                CSTS,   32, 
                CEVT,   32, 
                Offset (0x120), 
                DIDL,   32, 
                DDL2,   32, 
                DDL3,   32, 
                DDL4,   32, 
                DDL5,   32, 
                DDL6,   32, 
                DDL7,   32, 
                DDL8,   32, 
                CPDL,   32, 
                CPL2,   32, 
                CPL3,   32, 
                CPL4,   32, 
                CPL5,   32, 
                CPL6,   32, 
                CPL7,   32, 
                CPL8,   32, 
                CADL,   32, 
                CAL2,   32, 
                CAL3,   32, 
                CAL4,   32, 
                CAL5,   32, 
                CAL6,   32, 
                CAL7,   32, 
                CAL8,   32, 
                NADL,   32, 
                NDL2,   32, 
                NDL3,   32, 
                NDL4,   32, 
                NDL5,   32, 
                NDL6,   32, 
                NDL7,   32, 
                NDL8,   32, 
                ASLP,   32, 
                TIDX,   32, 
                CHPD,   32, 
                CLID,   32, 
                CDCK,   32, 
                SXSW,   32, 
                EVTS,   32, 
                CNOT,   32, 
                NRDY,   32, 
                Offset (0x200), 
                SCIE,   1, 
                GEFC,   4, 
                GXFC,   3, 
                GESF,   8, 
                Offset (0x204), 
                PARM,   32, 
                DSLP,   32, 
                Offset (0x300), 
                ARDY,   32, 
                ASLC,   32, 
                TCHE,   32, 
                ALSI,   32, 
                BCLP,   32, 
                PFIT,   32, 
                CBLV,   32, 
                BCLM,   320, 
                CPFM,   32, 
                EPFM,   32, 
                Offset (0x400), 
                GVD1,   57344
            }

            OperationRegion (TCOI, SystemIO, TOBS, 0x08)
            Field (TCOI, WordAcc, NoLock, Preserve)
            {
                Offset (0x04), 
                    ,   9, 
                SCIS,   1, 
                Offset (0x06)
            }

            Name (DBTB, Package (0x15)
            {
                Zero, 
                0x07, 
                0x38, 
                0x01C0, 
                0x0E00, 
                0x3F, 
                0x01C7, 
                0x0E07, 
                0x01F8, 
                0x0E38, 
                0x0FC0, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x7000, 
                0x7007, 
                0x7038, 
                0x71C0, 
                0x7E00
            })
            Method (GSCI, 0, NotSerialized)
            {
                If (LEqual (GEFC, 0x04))
                {
                    Store (GBDA (), GXFC)
                }

                If (LEqual (GEFC, 0x06))
                {
                    Store (SBCB (), GXFC)
                }

                Store (One, SCIS)
                Store (Zero, GEFC)
                Store (Zero, GSSE)
                Store (Zero, SCIE)
                Return (Zero)
            }

            Method (GBDA, 0, NotSerialized)
            {
                If (LEqual (GESF, Zero))
                {
                    Store (0x0679, PARM)
                    Store (Zero, GESF)
                    Return (SUCC)
                }

                If (LEqual (GESF, One))
                {
                    Store (0x0240, PARM)
                    Store (Zero, GESF)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x04))
                {
                    And (PARM, 0xEFFF0000, PARM)
                    And (PARM, ShiftLeft (DerefOf (Index (DBTB, IBTT)), 0x10), PARM)
                    Or (IBTT, PARM, PARM)
                    Store (Zero, GESF)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x05))
                {
                    Store (IPSC, PARM)
                    Or (PARM, ShiftLeft (IPAT, 0x08), PARM)
                    Add (PARM, 0x0100, PARM)
                    Or (PARM, ShiftLeft (LDST, 0x10), PARM)
                    XOr (PARM, 0x00010000, PARM)
                    Or (PARM, ShiftLeft (IBIA, 0x14), PARM)
                    Store (Zero, GESF)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x06))
                {
                    Store (ITVF, PARM)
                    Or (PARM, ShiftLeft (ITVM, 0x04), PARM)
                    Store (Zero, GESF)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x07))
                {
                    Name (MEMS, 0x0D)
                    Store (GIVD, PARM)
                    XOr (PARM, One, PARM)
                    Or (PARM, ShiftLeft (GMFN, One), PARM)
                    Or (PARM, 0x1800, PARM)
                    Or (ShiftLeft (CDCT, 0x15), PARM, PARM)
                    If (LEqual (IDVM, One))
                    {
                        Store (0x11, MEMS)
                    }

                    Or (PARM, ShiftLeft (IDVS, MEMS), PARM)
                    Store (One, GESF)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x0A))
                {
                    Store (Zero, PARM)
                    If (ISSC)
                    {
                        Or (PARM, 0x03, PARM)
                    }

                    Store (Zero, GESF)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x0B))
                {
                    Store (KSV0, PARM)
                    Store (KSV1, GESF)
                    Return (SUCC)
                }

                Store (Zero, GESF)
                Return (CRIT)
            }

            Method (SBCB, 0, NotSerialized)
            {
                If (LEqual (GESF, Zero))
                {
                    Store (0x20, PARM)
                    Store (Zero, GESF)
                    Return (SUCC)
                }

                If (LEqual (GESF, One))
                {
                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x03))
                {
                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x04))
                {
                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x05))
                {
                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x06))
                {
                    ShiftRight (PARM, 0x1C, Local0)
                    If (LEqual (Local0, Zero))
                    {
                        And (PARM, 0x0F, ITVF)
                        And (PARM, 0xF0, ITVM)
                    }

                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x07))
                {
                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x08))
                {
                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x09))
                {
                    And (PARM, 0xFF, IBTT)
                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x0A))
                {
                    ShiftRight (PARM, 0x1C, Local0)
                    If (LEqual (Local0, Zero))
                    {
                        And (PARM, 0xFF, IPSC)
                        Subtract (And (ShiftRight (PARM, 0x08), 0xFF), One, IPAT)
                        And (ShiftRight (PARM, 0x12), 0x03, IBLC)
                        And (ShiftRight (PARM, 0x14), 0x07, IBIA)
                    }

                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x0B))
                {
                    If (LEqual (And (ShiftRight (PARM, 0x0B), 0x03), 0x02))
                    {
                        And (ShiftRight (PARM, 0x0D), 0x0F, Local0)
                        And (ShiftRight (PARM, 0x11), 0x0F, Local1)
                        If (Local0)
                        {
                            Store (Zero, IDVM)
                            Store (Local0, IDVS)
                        }

                        If (Local1)
                        {
                            Store (One, IDVM)
                            Store (Local1, IDVS)
                        }
                    }

                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x10))
                {
                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x11))
                {
                    Store (ShiftLeft (LDST, 0x08), PARM)
                    Add (PARM, 0x0100, PARM)
                    NAnd (PARM, 0x0200, PARM)
                    Store (Zero, GESF)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x12))
                {
                    If (And (PARM, One))
                    {
                        If (LEqual (ShiftRight (PARM, One), One))
                        {
                            Store (One, ISSC)
                        }
                        Else
                        {
                            Store (Zero, GESF)
                            Return (CRIT)
                        }
                    }
                    Else
                    {
                        Store (Zero, ISSC)
                    }

                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x13))
                {
                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                Store (Zero, GESF)
                Return (SUCC)
            }

            Method (OPTS, 1, NotSerialized)
            {
                If (LEqual (Arg0, 0x03))
                {
                    Store (ASLS, OPBS)
                }
            }

            Method (OWAK, 1, NotSerialized)
            {
                If (LEqual (Arg0, 0x03))
                {
                    Store (OPBS, ASLS)
                    Store (One, GSES)
                }
            }
        }
    }

    Scope (_GPE)
    {
        Method (_L06, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            \_SB.PCI0.GFX0.GSCI ()
        }
    }

    Device (HTAM)
    {
        Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
        Name (_UID, 0x05)  // _UID: Unique ID
        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
        {
            Memory32Fixed (ReadOnly,
                0xFED40000,         // Address Base
                0x00005000,         // Address Length
                )
        })
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (LEqual (HESD, Zero))
            {
                Return (0x0F)
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Device (_SB.PCI0.SBRG.TPM)
    {
        Name (_HID, EisaId ("IFX0102"))  // _HID: Hardware ID
        Name (_CID, EisaId ("PNP0C31"))  // _CID: Compatible ID
        Name (_STR, Unicode ("TPM 1.2 Device"))  // _STR: Description String
        Name (_UID, One)  // _UID: Unique ID
        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
        {
            Memory32Fixed (ReadOnly,
                0xFED40000,         // Address Base
                0x00005000,         // Address Length
                )
        })
        OperationRegion (TMMB, SystemMemory, 0xFED40000, 0x5000)
        Field (TMMB, ByteAcc, Lock, Preserve)
        {
            ACCS,   8, 
            Offset (0x18), 
            TSTA,   8, 
            TBCA,   8, 
            Offset (0xF00), 
            TVID,   16, 
            TDID,   16
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (LEqual (VIDT, 0x8086))
            {
                Return (Zero)
            }
            Else
            {
                If (LEqual (HESD, Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }
        }
    }

    Scope (_SB.PCI0.SBRG.TPM)
    {
        OperationRegion (TSMI, SystemIO, SMIT, 0x02)
        Field (TSMI, ByteAcc, NoLock, Preserve)
        {
            INQ,    8, 
            DAT,    8
        }

        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (LEqual (Arg0, ToUUID ("3dddfaa6-361b-4eb4-a424-8d10089d1653") /* Physical Presence Interface */))
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Store (ToInteger (Arg2), _T_0)
                If (LEqual (_T_0, Zero))
                {
                    Return (Buffer (One)
                    {
                         0x7F                                           
                    })
                }
                ElseIf (LEqual (_T_0, One))
                {
                    Return ("1.0")
                }
                ElseIf (LEqual (_T_0, 0x02))
                {
                    ToInteger (DerefOf (Index (Arg3, Zero)), TMF2)
                    If (LEqual (OTPM, Zero))
                    {
                        Return (0x02)
                    }

                    If (LEqual (TMF2, 0x05))
                    {
                        If (LEqual (OCED, Zero))
                        {
                            Return (0x02)
                        }
                    }
                    ElseIf (LEqual (TMF2, 0x0E))
                    {
                        If (LEqual (OCED, Zero))
                        {
                            Return (0x02)
                        }
                    }

                    Store (0x12, TMF1)
                    Store (TMF1, DAT)
                    Store (OFST, INQ)
                    If (LEqual (DAT, 0xFF))
                    {
                        Return (0x02)
                    }

                    Store (TMF2, DAT)
                    Store (OFST, INQ)
                    If (LEqual (DAT, 0xFF))
                    {
                        Return (0x02)
                    }

                    Return (Zero)
                }
                ElseIf (LEqual (_T_0, 0x03))
                {
                    Name (PPI1, Package (0x02)
                    {
                        Zero, 
                        Zero
                    })
                    Store (0x11, DAT)
                    Store (OFST, INQ)
                    If (LEqual (DAT, 0xFF))
                    {
                        Return (One)
                    }

                    Store (DAT, Index (PPI1, One))
                    Return (PPI1)
                }
                ElseIf (LEqual (_T_0, 0x04))
                {
                    If (LEqual (OTPM, Zero))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (One)
                    }
                }
                ElseIf (LEqual (_T_0, 0x05))
                {
                    Name (PPI2, Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Zero
                    })
                    Store (0x21, DAT)
                    Store (OFST, INQ)
                    Store (DAT, Index (PPI2, One))
                    If (LEqual (DAT, 0xFF))
                    {
                        Return (0x02)
                    }

                    Store (DAT, Index (PPI2, One))
                    Store (0x31, DAT)
                    Store (OFST, INQ)
                    If (LEqual (DAT, 0xFF))
                    {
                        Return (0x02)
                    }

                    If (LEqual (DAT, 0xFFF0))
                    {
                        Store (0xFFFFFFF0, Index (PPI2, 0x02))
                    }
                    ElseIf (LEqual (DAT, 0xFFF1))
                    {
                        Store (0xFFFFFFF1, Index (PPI2, 0x02))
                    }
                    Else
                    {
                        Store (DAT, Index (PPI2, 0x02))
                    }

                    Return (PPI2)
                }
                ElseIf (LEqual (_T_0, 0x06))
                {
                    Return (Zero)
                }
                Else
                {
                }
            }
            ElseIf (LEqual (Arg0, ToUUID ("376054ed-cc13-4675-901c-4756d7f2d45d")))
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Store (ToInteger (Arg2), _T_1)
                If (LEqual (_T_1, Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }
                ElseIf (LEqual (_T_1, One))
                {
                    Store (0x22, TMF1)
                    Store (TMF1, DAT)
                    Store (OFST, INQ)
                    If (LEqual (DAT, 0xFF))
                    {
                        Return (Buffer (One)
                        {
                             0x01                                           
                        })
                    }

                    ToInteger (DerefOf (Index (Arg3, Zero)), TMF1)
                    Store (TMF1, DAT)
                    Store (OFST, INQ)
                    If (LEqual (DAT, 0xFF))
                    {
                        Return (Buffer (One)
                        {
                             0x01                                           
                        })
                    }

                    Return (Buffer (One)
                    {
                         0x00                                           
                    })
                }
                Else
                {
                }
            }

            Return (Buffer (One)
            {
                 0x00                                           
            })
        }
    }

    Scope (_SB.PCI0)
    {
        OperationRegion (ITPD, PCI_Config, 0xE8, 0x04)
        Field (ITPD, DWordAcc, NoLock, Preserve)
        {
                ,   15, 
            TPDI,   1
        }

        OperationRegion (TVID, SystemMemory, 0xFED40F00, 0x02)
        Field (TVID, WordAcc, NoLock, Preserve)
        {
            VIDT,   16
        }
    }

    Device (_SB.PCI0.ITPM)
    {
        Name (_HID, "INTC0102")  // _HID: Hardware ID
        Name (_CID, EisaId ("PNP0C31"))  // _CID: Compatible ID
        Name (_STR, Unicode ("TPM 1.2 Device"))  // _STR: Description String
        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
        {
            Memory32Fixed (ReadOnly,
                0xFED40000,         // Address Base
                0x00005000,         // Address Length
                )
        })
        OperationRegion (TSMI, SystemIO, SMIT, 0x02)
        Field (TSMI, ByteAcc, NoLock, Preserve)
        {
            INQ,    8, 
            DAT,    8
        }

        OperationRegion (TPMR, SystemMemory, 0xFED40000, 0x5000)
        Field (TPMR, AnyAcc, NoLock, Preserve)
        {
            ACC0,   8
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (LNotEqual (ACC0, 0xFF))
            {
                If (LEqual (VIDT, 0x8086))
                {
                    If (TPMF)
                    {
                        If (LEqual (HESD, Zero))
                        {
                            Return (Zero)
                        }

                        Return (0x0F)
                    }

                    Return (0x03)
                }
            }

            Return (Zero)
        }

        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (LEqual (Arg0, ToUUID ("3dddfaa6-361b-4eb4-a424-8d10089d1653") /* Physical Presence Interface */))
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Store (ToInteger (Arg2), _T_0)
                If (LEqual (_T_0, Zero))
                {
                    Return (Buffer (One)
                    {
                         0x7F                                           
                    })
                }
                ElseIf (LEqual (_T_0, One))
                {
                    Return ("1.0")
                }
                ElseIf (LEqual (_T_0, 0x02))
                {
                    ToInteger (DerefOf (Index (Arg3, Zero)), TMF2)
                    If (LEqual (OTPM, Zero))
                    {
                        Return (0x02)
                    }

                    If (LEqual (TMF2, 0x05))
                    {
                        If (LEqual (OCED, Zero))
                        {
                            Return (0x02)
                        }
                    }
                    ElseIf (LEqual (TMF2, 0x0E))
                    {
                        If (LEqual (OCED, Zero))
                        {
                            Return (0x02)
                        }
                    }

                    Store (0x12, TMF1)
                    Store (TMF1, DAT)
                    Store (OFST, INQ)
                    If (LEqual (DAT, 0xFF))
                    {
                        Return (0x02)
                    }

                    Store (TMF2, DAT)
                    Store (OFST, INQ)
                    If (LEqual (DAT, 0xFF))
                    {
                        Return (0x02)
                    }

                    Return (Zero)
                }
                ElseIf (LEqual (_T_0, 0x03))
                {
                    Name (PPI1, Package (0x02)
                    {
                        Zero, 
                        Zero
                    })
                    Store (0x11, DAT)
                    Store (OFST, INQ)
                    If (LEqual (DAT, 0xFF))
                    {
                        Return (One)
                    }

                    Store (DAT, Index (PPI1, One))
                    Return (PPI1)
                }
                ElseIf (LEqual (_T_0, 0x04))
                {
                    If (LEqual (OTPM, Zero))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (One)
                    }
                }
                ElseIf (LEqual (_T_0, 0x05))
                {
                    Name (PPI2, Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Zero
                    })
                    Store (0x21, DAT)
                    Store (OFST, INQ)
                    Store (DAT, Index (PPI2, One))
                    If (LEqual (DAT, 0xFF))
                    {
                        Return (0x02)
                    }

                    Store (DAT, Index (PPI2, One))
                    Store (0x31, DAT)
                    Store (OFST, INQ)
                    If (LEqual (DAT, 0xFF))
                    {
                        Return (0x02)
                    }

                    If (LEqual (DAT, 0xFFF0))
                    {
                        Store (0xFFFFFFF0, Index (PPI2, 0x02))
                    }
                    ElseIf (LEqual (DAT, 0xFFF1))
                    {
                        Store (0xFFFFFFF1, Index (PPI2, 0x02))
                    }
                    Else
                    {
                        Store (DAT, Index (PPI2, 0x02))
                    }

                    Return (PPI2)
                }
                ElseIf (LEqual (_T_0, 0x06))
                {
                    Return (Zero)
                }
                Else
                {
                }
            }
            ElseIf (LEqual (Arg0, ToUUID ("376054ed-cc13-4675-901c-4756d7f2d45d")))
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Store (ToInteger (Arg2), _T_1)
                If (LEqual (_T_1, Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }
                ElseIf (LEqual (_T_1, One))
                {
                    Store (0x22, TMF1)
                    Store (TMF1, DAT)
                    Store (OFST, INQ)
                    If (LEqual (DAT, 0xFF))
                    {
                        Return (0x02)
                    }

                    ToInteger (DerefOf (Index (Arg3, Zero)), TMF1)
                    Store (TMF1, DAT)
                    Store (OFST, INQ)
                    If (LEqual (DAT, 0xFF))
                    {
                        Return (0x02)
                    }

                    Return (Zero)
                }
                Else
                {
                }
            }

            Return (Buffer (One)
            {
                 0x00                                           
            })
        }
    }

    OperationRegion (SSCR, SystemIO, 0xB2, One)
    Field (SSCR, ByteAcc, NoLock, Preserve)
    {
        SSMI,   8
    }

    OperationRegion (SSSR, SystemIO, 0xB3, One)
    Field (SSSR, ByteAcc, NoLock, Preserve)
    {
        DSMI,   8
    }

    OperationRegion (VECT, SystemMemory, 0xCF501018, 0x1500)
    Field (VECT, AnyAcc, NoLock, Preserve)
    {
        WMIF,   1, 
        WMIT,   1, 
        WMIH,   1, 
        WMIP,   1, 
        WMIS,   1, 
        TEVT,   1, 
        HTHE,   1, 
        SSMC,   1, 
        ACBU,   1, 
        ACBD,   1, 
        Offset (0x04), 
        EAX,    32, 
        EBX,    32, 
        ECX,    32, 
        EDX,    32, 
        EDI,    32, 
        WMPI,   8, 
        WMBH,   8, 
        WM10,   8, 
        WMIB,   33536
    }

    Method (WBTM, 1, Serialized)
    {
        Store (Arg0, Local0)
        If (LGreater (Arg0, 0x1050))
        {
            Store (0x1050, Local0)
        }

        Return (Local0)
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    If (SS3)
    {
        Name (_S3, Package (0x04)  // _S3_: S3 System State
        {
            0x05, 
            Zero, 
            Zero, 
            Zero
        })
    }

    If (SS4)
    {
        Name (_S4, Package (0x04)  // _S4_: S4 System State
        {
            0x06, 
            Zero, 
            Zero, 
            Zero
        })
    }

    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        Zero, 
        Zero, 
        Zero
    })
    Method (PTS, 1, NotSerialized)
    {
        If (Arg0)
        {
            \_SB.PCI0.SBRG.SPTS (Arg0)
            \_SB.PCI0.PEX0.SPRT (Arg0)
            \_SB.PCI0.PEX1.SPRT (Arg0)
            \_SB.PCI0.PEX2.SPRT (Arg0)
            \_SB.PCI0.PEX3.SPRT (Arg0)
            \_SB.PCI0.PEX4.SPRT (Arg0)
            \_SB.PCI0.PEX5.SPRT (Arg0)
            \_SB.PCI0.PEX6.SPRT (Arg0)
            \_SB.PCI0.PEX7.SPRT (Arg0)
            \_SB.PCI0.GFX0.OPTS (Arg0)
            \_SB.PCI0.SBRG.SIOS (Arg0)
        }
    }

    Method (WAK, 1, NotSerialized)
    {
        \_SB.PCI0.SBRG.SWAK (Arg0)
        If (\_SB.PCI0.PEX0.PMS)
        {
            \_SB.PCI0.PEX0.WPRT (Arg0)
            Notify (\_SB.PCI0.PEX0, 0x02)
        }
        Else
        {
            \_SB.PCI0.PEX0.WPRT (Arg0)
        }

        If (\_SB.PCI0.PEX1.PMS)
        {
            \_SB.PCI0.PEX1.WPRT (Arg0)
            Notify (\_SB.PCI0.PEX1, 0x02)
        }
        Else
        {
            \_SB.PCI0.PEX1.WPRT (Arg0)
        }

        If (\_SB.PCI0.PEX2.PMS)
        {
            \_SB.PCI0.PEX2.WPRT (Arg0)
            Notify (\_SB.PCI0.PEX2, 0x02)
        }
        Else
        {
            \_SB.PCI0.PEX2.WPRT (Arg0)
        }

        If (\_SB.PCI0.PEX3.PMS)
        {
            \_SB.PCI0.PEX3.WPRT (Arg0)
            Notify (\_SB.PCI0.PEX3, 0x02)
        }
        Else
        {
            \_SB.PCI0.PEX3.WPRT (Arg0)
        }

        If (\_SB.PCI0.PEX4.PMS)
        {
            \_SB.PCI0.PEX4.WPRT (Arg0)
            Notify (\_SB.PCI0.PEX4, 0x02)
        }
        Else
        {
            \_SB.PCI0.PEX4.WPRT (Arg0)
        }

        If (\_SB.PCI0.PEX5.PMS)
        {
            \_SB.PCI0.PEX5.WPRT (Arg0)
            Notify (\_SB.PCI0.PEX5, 0x02)
        }
        Else
        {
            \_SB.PCI0.PEX5.WPRT (Arg0)
        }

        If (\_SB.PCI0.PEX6.PMS)
        {
            \_SB.PCI0.PEX6.WPRT (Arg0)
            Notify (\_SB.PCI0.PEX6, 0x02)
        }
        Else
        {
            \_SB.PCI0.PEX6.WPRT (Arg0)
        }

        If (\_SB.PCI0.PEX7.PMS)
        {
            \_SB.PCI0.PEX7.WPRT (Arg0)
            Notify (\_SB.PCI0.PEX7, 0x02)
        }
        Else
        {
            \_SB.PCI0.PEX7.WPRT (Arg0)
        }

        \_SB.PCI0.GFX0.OWAK (Arg0)
        \_SB.PCI0.SBRG.SIOW (Arg0)
    }
}

