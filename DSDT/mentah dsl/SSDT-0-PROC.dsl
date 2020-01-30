/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-0-PROC.aml, Tue Jan 28 17:04:28 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000102 (258)
 *     Revision         0x01
 *     Checksum         0x76
 *     OEM ID           "AMICPU"
 *     OEM Table ID     "PROC"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "MSFT"
 *     Compiler Version 0x03000001 (50331649)
 */
DefinitionBlock ("", "SSDT", 1, "AMICPU", "PROC", 0x00000001)
{
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_PR_.OSC_, MethodObj)    // 4 Arguments
    External (_PR_.PDC_, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (MDBG, MethodObj)    // Imported: 1 Arguments

    Scope (\_PR)
    {
        Processor (P000, 0x01, 0x00000410, 0x06)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                \_PR.PDC (Arg0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Return (\_PR.OSC (Arg0, Arg1, Arg2, Arg3))
            }
        }

        Processor (P001, 0x02, 0x00000410, 0x06)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                \_PR.PDC (Arg0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Return (\_PR.OSC (Arg0, Arg1, Arg2, Arg3))
            }
        }

        Processor (P002, 0x03, 0x00000410, 0x06)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                \_PR.PDC (Arg0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Return (\_PR.OSC (Arg0, Arg1, Arg2, Arg3))
            }
        }

        Processor (P003, 0x04, 0x00000410, 0x06)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                \_PR.PDC (Arg0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Return (\_PR.OSC (Arg0, Arg1, Arg2, Arg3))
            }
        }
    }
}

