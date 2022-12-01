<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" name="1-mat_mult.prj" top="matmult">
    <includePaths/>
    <libraryFlag/>
    <files>
        <file name="../../matmult_test.cpp" sc="0" tb="1" cflags=" -DK_CONST=1"/>
        <file name="matmult.cpp" sc="0" tb="false" cflags="-DK_CONST=1"/>
    </files>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
</AutoPilot:project>

