<project xmlns="com.autoesl.autopilot.project" name="dilithium3.prj" top="crypto_sign_keypair">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow askAgain="false" name="csim" csimMode="2" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../../newtest_sign.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="aes.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="fips202.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="ntt.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="packing.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="poly.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="polyvec.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="reduce.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="rng.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="rounding.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="sign.c" sc="0" tb="false" cflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="sign_open" status="inactive"/>
        <solution name="sign" status="inactive"/>
        <solution name="keypair" status="active"/>
    </solutions>
</project>
