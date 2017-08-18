LDmicro0.1
MICRO=Microchip PIC16F877 40-PDIP
CYCLE=10000
CRYSTAL=20000000
BAUD=2400
COMPILED=D:\PIC\Multiprog\CompiladoresLinguagens\Compiladores & Linguagens Programa��o\LADDER\ANNA.hex

IO LIST
    XE1 at 5
    XE2 at 6
    YL1 at 33
    YL2 at 34
    YL3 at 35
    YL5 at 37
    YL7 at 39
END

PROGRAM
RUNG
    PARALLEL
        CONTACTS RMASTER2 0
        CONTACTS RMASTER 0
    END
    TON T1 1000000
    COIL YL1 0 1 0
END
RUNG
    CONTACTS RMASTER 0
    TON T2 2000000
    COIL YL2 0 1 0
END
RUNG
    PARALLEL
        SERIES
            CONTACTS RMASTER2 0
            TON T1M2 1000000
        END
        SERIES
            CONTACTS RMASTER 0
            TON T3 3000000
        END
    END
    COIL YL3 0 1 0
END
RUNG
    CONTACTS RMASTER2 0
    TON T2M2 2000000
    COIL YL5 0 1 0
END
RUNG
    CONTACTS RMASTER2 0
    TON T3M2 3000000
    COIL YL7 0 1 0
END
RUNG
    CONTACTS XE1 1
    CONTACTS YL1 0
    CONTACTS YL2 0
    CONTACTS YL3 0
    PARALLEL
        COIL YL1 0 0 1
        COIL YL2 0 0 1
        COIL YL3 0 0 1
    END
END
RUNG
    CONTACTS XE1 1
    TON TAUX1 100000
    PARALLEL
        SERIES
            OSR
            CONTACTS RM1 1
            COIL RMASTER 0 1 0
        END
        SERIES
            OSR
            CONTACTS RM1 0
            COIL RMASTER 0 0 1
        END
    END
END
RUNG
    CONTACTS RMASTER 0
    COIL RM1 0 0 0
END
RUNG
    CONTACTS XE2 1
    CONTACTS YL1 0
    CONTACTS YL3 0
    CONTACTS YL5 0
    CONTACTS YL7 0
    PARALLEL
        COIL YL1 0 0 1
        COIL YL3 0 0 1
        COIL YL5 0 0 1
        COIL YL7 0 0 1
    END
END
RUNG
    CONTACTS XE2 1
    TON TAUX2 100000
    PARALLEL
        SERIES
            OSR
            CONTACTS RM2 1
            COIL RMASTER2 0 1 0
        END
        SERIES
            OSR
            CONTACTS RM2 0
            COIL RMASTER2 0 0 1
        END
    END
END
RUNG
    CONTACTS RMASTER2 0
    COIL RM2 0 0 0
END
