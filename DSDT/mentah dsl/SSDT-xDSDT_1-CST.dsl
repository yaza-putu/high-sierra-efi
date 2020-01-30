/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-xDSDT_1-CST.aml, Tue Jan 28 17:04:28 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000084 (132)
 *     Revision         0x01
 *     Checksum         0x1F
 *     OEM ID           "AMI"
 *     OEM Table ID     "CST"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "MSFT"
 *     Compiler Version 0x03000001 (50331649)
 */
DefinitionBlock ("", "SSDT", 1, "AMI", "CST", 0x00000001)
{
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_PR_.CST_, MethodObj)    // 0 Arguments
    External (_PR_.P000, ProcessorObj)
    External (_PR_.P001, ProcessorObj)
    External (_PR_.P002, ProcessorObj)
    External (_PR_.P003, ProcessorObj)
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (MDBG, MethodObj)    // Imported: 1 Arguments

    Scope (\_PR.P000)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (CST ())
        }
    }

    Scope (\_PR.P001)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (CST ())
        }
    }

    Scope (\_PR.P002)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (CST ())
        }
    }

    Scope (\_PR.P003)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (CST ())
        }
    }
}

