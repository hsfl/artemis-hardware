<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="16" fill="1" visible="no" active="no"/>
<layer number="3" name="Route3" color="17" fill="1" visible="no" active="no"/>
<layer number="4" name="Route4" color="18" fill="1" visible="no" active="no"/>
<layer number="5" name="Route5" color="19" fill="1" visible="no" active="no"/>
<layer number="6" name="Route6" color="25" fill="1" visible="no" active="no"/>
<layer number="7" name="Route7" color="26" fill="1" visible="no" active="no"/>
<layer number="8" name="Route8" color="27" fill="1" visible="no" active="no"/>
<layer number="9" name="Route9" color="28" fill="1" visible="no" active="no"/>
<layer number="10" name="Route10" color="29" fill="1" visible="no" active="no"/>
<layer number="11" name="Route11" color="30" fill="1" visible="no" active="no"/>
<layer number="12" name="Route12" color="20" fill="1" visible="no" active="no"/>
<layer number="13" name="Route13" color="21" fill="1" visible="no" active="no"/>
<layer number="14" name="Route14" color="22" fill="1" visible="no" active="no"/>
<layer number="15" name="Route15" color="23" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="4" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="1" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="1" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="1" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="1" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="1" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="4" fill="1" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="0" fill="1" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="0" fill="1" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="Molex - 503763-0291">
<description>Upverter Parts Library

Created by Upverter.com</description>
<packages>
<package name="MOLEX_503763-0291_0">
<description>2 Positions Header Connector 0.039" (1.00mm) Surface Mount, Right Angle Gold</description>
<wire x1="-2.9" y1="-2.425" x2="-2.9" y2="2.425" width="0.15" layer="51"/>
<wire x1="-2.9" y1="2.425" x2="2.9" y2="2.425" width="0.15" layer="51"/>
<wire x1="2.9" y1="2.425" x2="2.9" y2="-2.425" width="0.15" layer="51"/>
<wire x1="2.9" y1="-2.425" x2="-2.9" y2="-2.425" width="0.15" layer="51"/>
<wire x1="-2.9" y1="-0.5" x2="-2.9" y2="-2.425" width="0.15" layer="21"/>
<wire x1="2.9" y1="-0.5" x2="2.9" y2="-2.425" width="0.15" layer="21"/>
<wire x1="2.9" y1="-2.425" x2="1.2" y2="-2.425" width="0.15" layer="21"/>
<wire x1="-2.9" y1="-2.425" x2="-1.2" y2="-2.425" width="0.15" layer="21"/>
<wire x1="-3.605" y1="-3.035" x2="-3.605" y2="2.725" width="0.1" layer="39"/>
<wire x1="-3.605" y1="2.725" x2="3.605" y2="2.725" width="0.1" layer="39"/>
<wire x1="3.605" y1="2.725" x2="3.605" y2="-3.035" width="0.1" layer="39"/>
<wire x1="3.605" y1="-3.035" x2="-3.605" y2="-3.035" width="0.1" layer="39"/>
<wire x1="-2.9" y1="2.425" x2="2.9" y2="2.425" width="0.15" layer="21"/>
<text x="-3.655" y="3" size="1" layer="25">&gt;NAME</text>
<circle x="0.492" y="-3.442" radius="0.25" width="0" layer="21"/>
<rectangle x1="-2.605" y1="1.205" x2="-1.735" y2="2.375" layer="41"/>
<rectangle x1="1.735" y1="1.205" x2="2.605" y2="2.375" layer="41"/>
<rectangle x1="1.735" y1="1.125" x2="2.245" y2="1.205" layer="41"/>
<rectangle x1="-2.245" y1="1.125" x2="-1.735" y2="1.205" layer="41"/>
<smd name="3" x="-2.875" y="0.555" dx="1.26" dy="1.3" layer="1"/>
<smd name="4" x="2.875" y="0.555" dx="1.26" dy="1.3" layer="1"/>
<smd name="1" x="0.5" y="-2.435" dx="0.55" dy="1" layer="1"/>
<smd name="2" x="-0.5" y="-2.435" dx="0.55" dy="1" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="MOLEX_503763-0291_0_0">
<description>2 Positions Header Connector 0.039" (1.00mm) Surface Mount, Right Angle Gold</description>
<wire x1="2.54" y1="-30.48" x2="2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="-5.08" x2="15.24" y2="-5.08" width="0.254" layer="94"/>
<wire x1="15.24" y1="-5.08" x2="15.24" y2="-30.48" width="0.254" layer="94"/>
<wire x1="15.24" y1="-30.48" x2="2.54" y2="-30.48" width="0.254" layer="94"/>
<wire x1="7.62" y1="-10.668" x2="7.62" y2="-9.652" width="1.016" layer="94"/>
<wire x1="7.62" y1="-9.652" x2="11.938" y2="-9.652" width="1.016" layer="94"/>
<wire x1="11.938" y1="-9.652" x2="11.938" y2="-10.668" width="1.016" layer="94"/>
<wire x1="11.938" y1="-10.668" x2="7.62" y2="-10.668" width="1.016" layer="94"/>
<wire x1="9.652" y1="-10.16" x2="15.24" y2="-10.16" width="0.508" layer="94"/>
<wire x1="7.62" y1="-15.748" x2="7.62" y2="-14.732" width="1.016" layer="94"/>
<wire x1="7.62" y1="-14.732" x2="11.938" y2="-14.732" width="1.016" layer="94"/>
<wire x1="11.938" y1="-14.732" x2="11.938" y2="-15.748" width="1.016" layer="94"/>
<wire x1="11.938" y1="-15.748" x2="7.62" y2="-15.748" width="1.016" layer="94"/>
<wire x1="9.652" y1="-15.24" x2="15.24" y2="-15.24" width="0.508" layer="94"/>
<wire x1="7.62" y1="-20.828" x2="7.62" y2="-19.812" width="1.016" layer="94"/>
<wire x1="7.62" y1="-19.812" x2="11.938" y2="-19.812" width="1.016" layer="94"/>
<wire x1="11.938" y1="-19.812" x2="11.938" y2="-20.828" width="1.016" layer="94"/>
<wire x1="11.938" y1="-20.828" x2="7.62" y2="-20.828" width="1.016" layer="94"/>
<wire x1="9.652" y1="-20.32" x2="15.24" y2="-20.32" width="0.508" layer="94"/>
<wire x1="7.62" y1="-25.908" x2="7.62" y2="-24.892" width="1.016" layer="94"/>
<wire x1="7.62" y1="-24.892" x2="11.938" y2="-24.892" width="1.016" layer="94"/>
<wire x1="11.938" y1="-24.892" x2="11.938" y2="-25.908" width="1.016" layer="94"/>
<wire x1="11.938" y1="-25.908" x2="7.62" y2="-25.908" width="1.016" layer="94"/>
<wire x1="9.652" y1="-25.4" x2="15.24" y2="-25.4" width="0.508" layer="94"/>
<wire x1="15.24" y1="-10.16" x2="15.24" y2="-10.16" width="0.15" layer="94"/>
<wire x1="15.24" y1="-15.24" x2="15.24" y2="-15.24" width="0.15" layer="94"/>
<wire x1="15.24" y1="-20.32" x2="15.24" y2="-20.32" width="0.15" layer="94"/>
<wire x1="15.24" y1="-25.4" x2="15.24" y2="-25.4" width="0.15" layer="94"/>
<text x="2.54" y="-2.54" size="2.54" layer="95" align="top-left">&gt;NAME</text>
<text x="2.286" y="-30.988" size="2.54" layer="95" align="top-left">503763-0291</text>
<pin name="1" x="20.32" y="-10.16" visible="pad" length="middle" rot="R180"/>
<pin name="2" x="20.32" y="-15.24" visible="pad" length="middle" rot="R180"/>
<pin name="MNT_1" x="20.32" y="-20.32" visible="pad" length="middle" rot="R180"/>
<pin name="MNT_2" x="20.32" y="-25.4" visible="pad" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MOLEX_503763-0291" prefix="J">
<description>2 Positions Header Connector 0.039" (1.00mm) Surface Mount, Right Angle Gold</description>
<gates>
<gate name="G$0" symbol="MOLEX_503763-0291_0_0" x="0" y="0"/>
</gates>
<devices>
<device name="MOLEX_503763-0291_0_0" package="MOLEX_503763-0291_0">
<connects>
<connect gate="G$0" pin="1" pad="1"/>
<connect gate="G$0" pin="2" pad="2"/>
<connect gate="G$0" pin="MNT_1" pad="3"/>
<connect gate="G$0" pin="MNT_2" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="CENTROID_NOT_SPECIFIED" value="No"/>
<attribute name="DATASHEET" value="http://www.molex.com/pdm_docs/sd/5037630291_sd.pdf"/>
<attribute name="DIGIKEY_DESCRIPTION" value="CONN HEADER 1MM R/A 2CKT"/>
<attribute name="DIGIKEY_PART_NUMBER" value="WM10654CT-ND"/>
<attribute name="LEAD_FREE" value="yes"/>
<attribute name="MF" value="Molex"/>
<attribute name="MOUSER_PART_NUMBER" value="538-503763-0291"/>
<attribute name="MPN" value="503763-0291"/>
<attribute name="PACKAGE" value="HDR02"/>
<attribute name="PREFIX" value="J"/>
<attribute name="ROHS" value="yes"/>
<attribute name="TEMPERATURE_RANGE_HIGH" value="+105°C"/>
<attribute name="TEMPERATURE_RANGE_LOW" value="-40°C"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Molex - 503763-0491">
<description>Upverter Parts Library

Created by Upverter.com</description>
<packages>
<package name="MOLEX_503763-0491_0">
<description>Wire-To-Board Connector, Pico-Lock 503763 Series, Surface Mount, Header, 4 Contacts, 1 mm</description>
<wire x1="-4" y1="-2.525" x2="-4" y2="2.525" width="0.15" layer="51"/>
<wire x1="-4" y1="2.525" x2="4" y2="2.525" width="0.15" layer="51"/>
<wire x1="4" y1="2.525" x2="4" y2="-2.525" width="0.15" layer="51"/>
<wire x1="4" y1="-2.525" x2="-4" y2="-2.525" width="0.15" layer="51"/>
<wire x1="-4" y1="2.525" x2="4" y2="2.525" width="0.15" layer="21"/>
<wire x1="4" y1="-2.525" x2="4" y2="-0.47" width="0.15" layer="21"/>
<wire x1="4" y1="1.58" x2="4" y2="2.525" width="0.15" layer="21"/>
<wire x1="-4" y1="-2.525" x2="-2.15" y2="-2.525" width="0.15" layer="21"/>
<wire x1="2.15" y1="-2.525" x2="4" y2="-2.525" width="0.15" layer="21"/>
<wire x1="-4" y1="-2.525" x2="-4" y2="-0.47" width="0.15" layer="21"/>
<wire x1="-4" y1="1.58" x2="-4" y2="2.525" width="0.15" layer="21"/>
<wire x1="-4.605" y1="-3.035" x2="-4.605" y2="2.625" width="0.1" layer="39"/>
<wire x1="-4.605" y1="2.625" x2="4.605" y2="2.625" width="0.1" layer="39"/>
<wire x1="4.605" y1="2.625" x2="4.605" y2="-3.035" width="0.1" layer="39"/>
<wire x1="4.605" y1="-3.035" x2="-4.605" y2="-3.035" width="0.1" layer="39"/>
<text x="-4" y="2.825" size="1" layer="25">&gt;NAME</text>
<circle x="1.525" y="-3.51" radius="0.25" width="0" layer="21"/>
<rectangle x1="2.735" y1="1.125" x2="3.605" y2="2.375" layer="41"/>
<rectangle x1="-3.605" y1="1.125" x2="-2.735" y2="2.375" layer="41"/>
<smd name="1" x="1.5" y="-2.435" dx="0.55" dy="1" layer="1"/>
<smd name="2" x="0.5" y="-2.435" dx="0.55" dy="1" layer="1"/>
<smd name="3" x="-0.5" y="-2.435" dx="0.55" dy="1" layer="1"/>
<smd name="4" x="-1.5" y="-2.435" dx="0.55" dy="1" layer="1"/>
<smd name="5" x="-3.875" y="0.555" dx="1.26" dy="1.3" layer="1"/>
<smd name="6" x="3.875" y="0.555" dx="1.26" dy="1.3" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="MOLEX_503763-0491_0_0">
<description>Wire-To-Board Connector, Pico-Lock 503763 Series, Surface Mount, Header, 4 Contacts, 1 mm</description>
<wire x1="2.54" y1="-40.64" x2="2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="-5.08" x2="15.24" y2="-5.08" width="0.254" layer="94"/>
<wire x1="15.24" y1="-5.08" x2="15.24" y2="-40.64" width="0.254" layer="94"/>
<wire x1="15.24" y1="-40.64" x2="2.54" y2="-40.64" width="0.254" layer="94"/>
<wire x1="7.62" y1="-10.668" x2="7.62" y2="-9.652" width="1.016" layer="94"/>
<wire x1="7.62" y1="-9.652" x2="11.938" y2="-9.652" width="1.016" layer="94"/>
<wire x1="11.938" y1="-9.652" x2="11.938" y2="-10.668" width="1.016" layer="94"/>
<wire x1="11.938" y1="-10.668" x2="7.62" y2="-10.668" width="1.016" layer="94"/>
<wire x1="9.652" y1="-10.16" x2="15.24" y2="-10.16" width="0.508" layer="94"/>
<wire x1="7.62" y1="-15.748" x2="7.62" y2="-14.732" width="1.016" layer="94"/>
<wire x1="7.62" y1="-14.732" x2="11.938" y2="-14.732" width="1.016" layer="94"/>
<wire x1="11.938" y1="-14.732" x2="11.938" y2="-15.748" width="1.016" layer="94"/>
<wire x1="11.938" y1="-15.748" x2="7.62" y2="-15.748" width="1.016" layer="94"/>
<wire x1="9.652" y1="-15.24" x2="15.24" y2="-15.24" width="0.508" layer="94"/>
<wire x1="7.62" y1="-20.828" x2="7.62" y2="-19.812" width="1.016" layer="94"/>
<wire x1="7.62" y1="-19.812" x2="11.938" y2="-19.812" width="1.016" layer="94"/>
<wire x1="11.938" y1="-19.812" x2="11.938" y2="-20.828" width="1.016" layer="94"/>
<wire x1="11.938" y1="-20.828" x2="7.62" y2="-20.828" width="1.016" layer="94"/>
<wire x1="9.652" y1="-20.32" x2="15.24" y2="-20.32" width="0.508" layer="94"/>
<wire x1="7.62" y1="-25.908" x2="7.62" y2="-24.892" width="1.016" layer="94"/>
<wire x1="7.62" y1="-24.892" x2="11.938" y2="-24.892" width="1.016" layer="94"/>
<wire x1="11.938" y1="-24.892" x2="11.938" y2="-25.908" width="1.016" layer="94"/>
<wire x1="11.938" y1="-25.908" x2="7.62" y2="-25.908" width="1.016" layer="94"/>
<wire x1="9.652" y1="-25.4" x2="15.24" y2="-25.4" width="0.508" layer="94"/>
<wire x1="7.62" y1="-30.988" x2="7.62" y2="-29.972" width="1.016" layer="94"/>
<wire x1="7.62" y1="-29.972" x2="11.938" y2="-29.972" width="1.016" layer="94"/>
<wire x1="11.938" y1="-29.972" x2="11.938" y2="-30.988" width="1.016" layer="94"/>
<wire x1="11.938" y1="-30.988" x2="7.62" y2="-30.988" width="1.016" layer="94"/>
<wire x1="9.652" y1="-30.48" x2="15.24" y2="-30.48" width="0.508" layer="94"/>
<wire x1="7.62" y1="-36.068" x2="7.62" y2="-35.052" width="1.016" layer="94"/>
<wire x1="7.62" y1="-35.052" x2="11.938" y2="-35.052" width="1.016" layer="94"/>
<wire x1="11.938" y1="-35.052" x2="11.938" y2="-36.068" width="1.016" layer="94"/>
<wire x1="11.938" y1="-36.068" x2="7.62" y2="-36.068" width="1.016" layer="94"/>
<wire x1="9.652" y1="-35.56" x2="15.24" y2="-35.56" width="0.508" layer="94"/>
<wire x1="15.24" y1="-10.16" x2="15.24" y2="-10.16" width="0.15" layer="94"/>
<wire x1="15.24" y1="-15.24" x2="15.24" y2="-15.24" width="0.15" layer="94"/>
<wire x1="15.24" y1="-20.32" x2="15.24" y2="-20.32" width="0.15" layer="94"/>
<wire x1="15.24" y1="-25.4" x2="15.24" y2="-25.4" width="0.15" layer="94"/>
<wire x1="15.24" y1="-30.48" x2="15.24" y2="-30.48" width="0.15" layer="94"/>
<wire x1="15.24" y1="-35.56" x2="15.24" y2="-35.56" width="0.15" layer="94"/>
<text x="2.54" y="-2.54" size="2.54" layer="95" align="top-left">&gt;NAME</text>
<text x="2.54" y="-43.18" size="2.54" layer="95" align="top-left">503763-0491</text>
<pin name="1" x="20.32" y="-10.16" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="2" x="20.32" y="-15.24" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="3" x="20.32" y="-20.32" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="4" x="20.32" y="-25.4" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="MNT_1" x="20.32" y="-30.48" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="MNT_2" x="20.32" y="-35.56" visible="pad" length="middle" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MOLEX_503763-0491" prefix="J">
<description>Wire-To-Board Connector, Pico-Lock 503763 Series, Surface Mount, Header, 4 Contacts, 1 mm</description>
<gates>
<gate name="G$0" symbol="MOLEX_503763-0491_0_0" x="0" y="0"/>
</gates>
<devices>
<device name="MOLEX_503763-0491_0_0" package="MOLEX_503763-0491_0">
<connects>
<connect gate="G$0" pin="1" pad="1"/>
<connect gate="G$0" pin="2" pad="2"/>
<connect gate="G$0" pin="3" pad="3"/>
<connect gate="G$0" pin="4" pad="4"/>
<connect gate="G$0" pin="MNT_1" pad="5"/>
<connect gate="G$0" pin="MNT_2" pad="6"/>
</connects>
<technologies>
<technology name="">
<attribute name="AUTOMOTIVE" value="No"/>
<attribute name="CENTROID_NOT_SPECIFIED" value="No"/>
<attribute name="CONN_GENDER" value="Male"/>
<attribute name="CONN_ORIENTATION" value="Right Angle"/>
<attribute name="CONTACT_MATERIAL" value="Gold,Nickel"/>
<attribute name="CURRENT_RATING" value="1.5A"/>
<attribute name="DATASHEET" value="https://www.molex.com/webdocs/datasheets/pdf/en-us/5037630491_PCB_HEADERS.pdf"/>
<attribute name="DEVICE_CLASS_L1" value="Connectors"/>
<attribute name="DEVICE_CLASS_L2" value="Headers and Wire Housings"/>
<attribute name="DEVICE_CLASS_L3" value="unset"/>
<attribute name="DIGIKEY_DESCRIPTION" value="CONN HEADER 1MM R/A 4CKT"/>
<attribute name="DIGIKEY_PART_NUMBER" value="WM10655CT-ND"/>
<attribute name="FOOTPRINT_URL" value="https://www.molex.com/pdm_docs/sd/5037630491_sd.pdf"/>
<attribute name="FOOTPRINT_VARIANT_NAME_0" value="Recommended_Land_Pattern"/>
<attribute name="HEIGHT" value="1.7mm"/>
<attribute name="LEAD_FREE" value="Yes"/>
<attribute name="MF" value="Molex"/>
<attribute name="MFG_PACKAGE_IDENT" value="503763-0491"/>
<attribute name="MFG_PACKAGE_IDENT_DATE" value="0"/>
<attribute name="MFG_PACKAGE_IDENT_REV" value="0"/>
<attribute name="MOUSER_PART_NUMBER" value="538-503763-0491"/>
<attribute name="MPN" value="503763-0491"/>
<attribute name="NUMBER_OF_CONTACTS" value="4"/>
<attribute name="NUMBER_OF_ROWS" value="1"/>
<attribute name="PACKAGE" value="HDR4"/>
<attribute name="PITCH" value="1mm"/>
<attribute name="PREFIX" value="J"/>
<attribute name="ROHS" value="Yes"/>
<attribute name="TEMPERATURE_RANGE_HIGH" value="+105°C"/>
<attribute name="TEMPERATURE_RANGE_LOW" value="-40°C"/>
<attribute name="VERIFICATION_VERSION" value="0.0.0.1"/>
<attribute name="VOLTAGE_RATING" value="150V"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="U.FL-R-SMT-1(01)">
<packages>
<package name="CONN_-SMT-1(01)">
<smd name="1" x="-1.4705" y="-0.0001" dx="1.0414" dy="2.2606" layer="1"/>
<smd name="2" x="1.4705" y="-0.0001" dx="1.0414" dy="2.2606" layer="1"/>
<smd name="3" x="0" y="-1.5961" dx="1.0414" dy="1.0922" layer="1"/>
<wire x1="0.4064" y1="1.4224" x2="-0.4064" y2="1.4224" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-1.2954" x2="1.778" y2="-1.2954" width="0.1524" layer="51"/>
<wire x1="1.778" y1="-1.2954" x2="1.778" y2="1.2954" width="0.1524" layer="51"/>
<wire x1="1.778" y1="1.2954" x2="-1.778" y2="1.2954" width="0.1524" layer="51"/>
<wire x1="-1.778" y1="1.2954" x2="-1.778" y2="-1.2954" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="2.0828" x2="-1.651" y2="2.0828" width="0.508" layer="51" curve="-180"/>
<wire x1="-1.651" y1="2.0828" x2="-0.889" y2="2.0828" width="0.508" layer="51" curve="-180"/>
<wire x1="-2.413" y1="0.0508" x2="-3.175" y2="0.0508" width="0.508" layer="22" curve="-180"/>
<wire x1="-3.175" y1="0.0508" x2="-2.413" y2="0.0508" width="0.508" layer="22" curve="-180"/>
<text x="-0.6096" y="1.4224" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
</package>
</packages>
<symbols>
<symbol name="CONN_-SMT-1(01)">
<pin name="1" x="0" y="0" visible="pad" length="middle" direction="pas"/>
<pin name="2" x="0" y="-2.54" visible="pad" length="middle" direction="pas"/>
<pin name="3" x="0" y="-5.08" visible="pad" length="middle" direction="pas"/>
<wire x1="10.16" y1="0" x2="5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="5.08" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-5.08" x2="5.08" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="10.16" y1="0" x2="8.89" y2="0.8382" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="8.89" y2="-1.7018" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-5.08" x2="8.89" y2="-4.2418" width="0.1524" layer="94"/>
<wire x1="10.16" y1="0" x2="8.89" y2="-0.8382" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="8.89" y2="-3.3782" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-5.08" x2="8.89" y2="-5.9182" width="0.1524" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-7.62" x2="12.7" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="12.7" y1="-7.62" x2="12.7" y2="2.54" width="0.1524" layer="94"/>
<wire x1="12.7" y1="2.54" x2="5.08" y2="2.54" width="0.1524" layer="94"/>
<text x="4.1656" y="2.7686" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="U.FL-R-SMT-1(01)" prefix="J">
<gates>
<gate name="A" symbol="CONN_-SMT-1(01)" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CONN_-SMT-1(01)">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="BUILT_BY" value="EMA_Matt" constant="no"/>
<attribute name="COPYRIGHT" value="Copyright (C) 2018 Accelerated Designs. All rights reserved" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="U.FL-R-SMT-1(01)" constant="no"/>
<attribute name="SOURCELIBRARY" value="Hirose_12_20_2019" constant="no"/>
<attribute name="VENDOR" value="Hirose" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Antenna_Pad">
<packages>
<package name="ANTENNA_PAD">
<smd name="1" x="0" y="0" dx="13.7" dy="9" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="ANTENNA_PAD">
<pin name="1" x="-2.54" y="5.08" length="middle"/>
<wire x1="2.54" y1="7.62" x2="10.16" y2="7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="7.62" x2="10.16" y2="2.54" width="0.254" layer="94"/>
<wire x1="10.16" y1="2.54" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="7.62" width="0.254" layer="94"/>
<text x="-1.016" y="7.62" size="1.778" layer="95">Antenna Pad</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="ANTENNA_PAD">
<gates>
<gate name="G$1" symbol="ANTENNA_PAD" x="-2.54" y="-5.08"/>
</gates>
<devices>
<device name="" package="ANTENNA_PAD">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Burn_Wire">
<packages>
<package name="BURNWIRE">
<pad name="1" x="-9" y="0" drill="1" diameter="1.6764" shape="octagon"/>
<pad name="2" x="9" y="0" drill="1" diameter="1.6764" shape="octagon"/>
<wire x1="-10" y1="1" x2="10" y2="1" width="0.1524" layer="21"/>
<wire x1="10" y1="1" x2="10" y2="-1" width="0.1524" layer="21"/>
<wire x1="10" y1="-1" x2="-10" y2="-1" width="0.1524" layer="21"/>
<wire x1="-10" y1="-1" x2="-10" y2="1" width="0.1524" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="BURNWIRE">
<pin name="V0" x="-2.54" y="2.54" length="short"/>
<pin name="GND" x="17.78" y="2.54" length="short" rot="R180"/>
<wire x1="0" y1="5.08" x2="15.24" y2="5.08" width="0.1524" layer="94"/>
<wire x1="15.24" y1="5.08" x2="15.24" y2="0" width="0.1524" layer="94"/>
<wire x1="15.24" y1="0" x2="0" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.1524" layer="94"/>
<text x="2.032" y="5.334" size="1.778" layer="95">Burn Wire</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="BURNWIRE">
<gates>
<gate name="G$1" symbol="BURNWIRE" x="2.54" y="-5.08"/>
</gates>
<devices>
<device name="" package="BURNWIRE">
<connects>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="V0" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="U.FL-R-SMT">
<packages>
<package name="CONN_-SMT-1(01)">
<smd name="1" x="-1.4705" y="-0.0001" dx="1.0414" dy="2.2606" layer="1"/>
<smd name="2" x="1.4705" y="-0.0001" dx="1.0414" dy="2.2606" layer="1"/>
<smd name="3" x="0" y="-1.5961" dx="1.0414" dy="1.0922" layer="1"/>
<wire x1="0.4064" y1="1.4224" x2="-0.4064" y2="1.4224" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-1.2954" x2="1.778" y2="-1.2954" width="0.1524" layer="51"/>
<wire x1="1.778" y1="-1.2954" x2="1.778" y2="1.2954" width="0.1524" layer="51"/>
<wire x1="1.778" y1="1.2954" x2="-1.778" y2="1.2954" width="0.1524" layer="51"/>
<wire x1="-1.778" y1="1.2954" x2="-1.778" y2="-1.2954" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="2.0828" x2="-1.651" y2="2.0828" width="0.508" layer="51" curve="-180"/>
<wire x1="-1.651" y1="2.0828" x2="-0.889" y2="2.0828" width="0.508" layer="51" curve="-180"/>
<wire x1="0.3302" y1="-2.9718" x2="-0.4318" y2="-2.9718" width="0.508" layer="22" curve="-180"/>
<wire x1="-0.4318" y1="-2.9718" x2="0.3302" y2="-2.9718" width="0.508" layer="22" curve="-180"/>
<text x="-2.667" y="1.6002" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
<text x="0.8128" y="-3.1496" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
</package>
</packages>
<symbols>
<symbol name="CONN_-SMT-1(01)">
<pin name="1" x="0" y="0" visible="pad" length="middle" direction="pas"/>
<pin name="2" x="0" y="-2.54" visible="pad" length="middle" direction="pas"/>
<pin name="3" x="0" y="-5.08" visible="pad" length="middle" direction="pas"/>
<wire x1="10.16" y1="0" x2="5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="5.08" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-5.08" x2="5.08" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="10.16" y1="0" x2="8.89" y2="0.8382" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="8.89" y2="-1.7018" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-5.08" x2="8.89" y2="-4.2418" width="0.1524" layer="94"/>
<wire x1="10.16" y1="0" x2="8.89" y2="-0.8382" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="8.89" y2="-3.3782" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-5.08" x2="8.89" y2="-5.9182" width="0.1524" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-7.62" x2="12.7" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="12.7" y1="-7.62" x2="12.7" y2="2.54" width="0.1524" layer="94"/>
<wire x1="12.7" y1="2.54" x2="5.08" y2="2.54" width="0.1524" layer="94"/>
<text x="4.1656" y="5.3086" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="U.FL-R-SMT-1(01)" prefix="J">
<gates>
<gate name="A" symbol="CONN_-SMT-1(01)" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CONN_-SMT-1(01)">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="BUILT_BY" value="EMA_Matt" constant="no"/>
<attribute name="COPYRIGHT" value="Copyright (C) 2018 Accelerated Designs. All rights reserved" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="U.FL-R-SMT-1(01)" constant="no"/>
<attribute name="SOURCELIBRARY" value="Hirose_12_20_2019" constant="no"/>
<attribute name="VENDOR" value="Hirose" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Molex_503763-0291">
<packages>
<package name="CON_5037630291">
<smd name="1" x="0" y="0" dx="0.55" dy="1" layer="1" rot="R180"/>
<smd name="2" x="-1" y="0" dx="0.55" dy="1" layer="1" rot="R180"/>
<smd name="3" x="2.375" y="2.99" dx="1.26" dy="1.3" layer="1" rot="R180"/>
<smd name="4" x="-3.38" y="2.99" dx="1.26" dy="1.3" layer="1" rot="R180"/>
<wire x1="3.048" y1="0" x2="4.572" y2="0.635" width="0.1524" layer="21"/>
<wire x1="4.572" y1="0.635" x2="4.572" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="4.572" y1="-0.635" x2="3.048" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="4.8514" x2="-3.81" y2="3.9624" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-0.3302" x2="-1.6002" y2="-0.3302" width="0.1524" layer="21"/>
<wire x1="2.794" y1="-0.3302" x2="2.794" y2="2.032" width="0.1524" layer="21"/>
<wire x1="2.794" y1="4.8514" x2="-3.81" y2="4.8514" width="0.1524" layer="21"/>
<wire x1="0.5842" y1="-0.3302" x2="2.794" y2="-0.3302" width="0.1524" layer="21"/>
<wire x1="2.794" y1="3.9624" x2="2.794" y2="4.8514" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="2.032" x2="-3.81" y2="-0.3302" width="0.1524" layer="21"/>
<wire x1="3.048" y1="0" x2="4.572" y2="0.635" width="0.1524" layer="51"/>
<wire x1="4.572" y1="0.635" x2="4.572" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="4.572" y1="-0.635" x2="3.048" y2="0" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="-0.3302" x2="2.794" y2="-0.3302" width="0.1524" layer="51"/>
<wire x1="2.794" y1="-0.3302" x2="2.794" y2="4.8514" width="0.1524" layer="51"/>
<wire x1="2.794" y1="4.8514" x2="-3.81" y2="4.8514" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="4.8514" x2="-3.81" y2="-0.3302" width="0.1524" layer="51"/>
<text x="-3.7592" y="8.255" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
<text x="-2.2352" y="8.255" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
</package>
</packages>
<symbols>
<symbol name="CON_5037630291">
<pin name="1" x="0" y="0" visible="pad" length="middle" direction="pas"/>
<pin name="2" x="0" y="-2.54" visible="pad" length="middle" direction="pas"/>
<pin name="3" x="0" y="-5.08" visible="pad" length="middle" direction="pas"/>
<pin name="4" x="0" y="-7.62" visible="pad" length="middle" direction="pas"/>
<wire x1="10.16" y1="0" x2="5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="5.08" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-5.08" x2="5.08" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="5.08" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="10.16" y1="0" x2="8.89" y2="0.8382" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="8.89" y2="-1.7018" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-5.08" x2="8.89" y2="-4.2418" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="8.89" y2="-6.7818" width="0.1524" layer="94"/>
<wire x1="10.16" y1="0" x2="8.89" y2="-0.8382" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="8.89" y2="-3.3782" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-5.08" x2="8.89" y2="-5.9182" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="8.89" y2="-8.4582" width="0.1524" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-10.16" x2="12.7" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="12.7" y1="-10.16" x2="12.7" y2="2.54" width="0.1524" layer="94"/>
<wire x1="12.7" y1="2.54" x2="5.08" y2="2.54" width="0.1524" layer="94"/>
<text x="4.1656" y="5.3086" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="5037630291" prefix="J">
<gates>
<gate name="A" symbol="CON_5037630291" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CON_5037630291">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="BUILT_BY" value="Molex_Team" constant="no"/>
<attribute name="COPYRIGHT" value="Copyright (C) 2018 Accelerated Designs. All rights reserved" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="5037630291" constant="no"/>
<attribute name="SOURCELIBRARY" value="Add_to_database_2021-03-17" constant="no"/>
<attribute name="VENDOR" value="Molex Connector Corporation" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="J9" library="Molex - 503763-0291" deviceset="MOLEX_503763-0291" device="MOLEX_503763-0291_0_0"/>
<part name="J4" library="Molex - 503763-0291" deviceset="MOLEX_503763-0291" device="MOLEX_503763-0291_0_0"/>
<part name="J2" library="Molex - 503763-0491" deviceset="MOLEX_503763-0491" device="MOLEX_503763-0491_0_0"/>
<part name="J3" library="Molex - 503763-0491" deviceset="MOLEX_503763-0491" device="MOLEX_503763-0491_0_0"/>
<part name="J10" library="U.FL-R-SMT-1(01)" deviceset="U.FL-R-SMT-1(01)" device=""/>
<part name="J8" library="Molex - 503763-0291" deviceset="MOLEX_503763-0291" device="MOLEX_503763-0291_0_0"/>
<part name="J6" library="Molex - 503763-0491" deviceset="MOLEX_503763-0491" device="MOLEX_503763-0491_0_0"/>
<part name="J7" library="Molex - 503763-0491" deviceset="MOLEX_503763-0491" device="MOLEX_503763-0491_0_0"/>
<part name="U$2" library="Antenna_Pad" deviceset="ANTENNA_PAD" device=""/>
<part name="U$3" library="Burn_Wire" deviceset="BURNWIRE" device=""/>
<part name="J11" library="U.FL-R-SMT" deviceset="U.FL-R-SMT-1(01)" device=""/>
<part name="J12" library="U.FL-R-SMT" deviceset="U.FL-R-SMT-1(01)" device=""/>
<part name="J1" library="Molex_503763-0291" deviceset="5037630291" device=""/>
<part name="J5" library="Molex_503763-0291" deviceset="5037630291" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="J9" gate="G$0" x="165.1" y="53.34" smashed="yes">
<attribute name="NAME" x="167.64" y="50.8" size="2.54" layer="95" align="top-left"/>
</instance>
<instance part="J4" gate="G$0" x="124.46" y="106.68" smashed="yes">
<attribute name="NAME" x="127" y="104.14" size="2.54" layer="95" align="top-left"/>
</instance>
<instance part="J2" gate="G$0" x="48.26" y="106.68" smashed="yes">
<attribute name="NAME" x="50.8" y="104.14" size="2.54" layer="95" align="top-left"/>
</instance>
<instance part="J3" gate="G$0" x="86.36" y="106.68" smashed="yes">
<attribute name="NAME" x="88.9" y="104.14" size="2.54" layer="95" align="top-left"/>
</instance>
<instance part="J10" gate="A" x="220.98" y="35.56" smashed="yes">
<attribute name="NAME" x="225.1456" y="38.3286" size="2.0828" layer="95" ratio="6" rot="SR0"/>
</instance>
<instance part="J8" gate="G$0" x="124.46" y="53.34" smashed="yes">
<attribute name="NAME" x="127" y="50.8" size="2.54" layer="95" align="top-left"/>
</instance>
<instance part="J6" gate="G$0" x="48.26" y="53.34" smashed="yes">
<attribute name="NAME" x="50.8" y="50.8" size="2.54" layer="95" align="top-left"/>
</instance>
<instance part="J7" gate="G$0" x="86.36" y="53.34" smashed="yes">
<attribute name="NAME" x="88.9" y="50.8" size="2.54" layer="95" align="top-left"/>
</instance>
<instance part="U$2" gate="G$1" x="185.42" y="66.04" smashed="yes"/>
<instance part="U$3" gate="G$1" x="185.42" y="83.82" smashed="yes"/>
<instance part="J11" gate="A" x="220.98" y="63.5" smashed="yes">
<attribute name="NAME" x="225.1456" y="68.8086" size="2.0828" layer="95" ratio="6" rot="SR0"/>
</instance>
<instance part="J12" gate="A" x="220.98" y="83.82" smashed="yes">
<attribute name="NAME" x="225.1456" y="89.1286" size="2.0828" layer="95" ratio="6" rot="SR0"/>
</instance>
<instance part="J1" gate="A" x="7.62" y="86.36" smashed="yes">
<attribute name="NAME" x="11.7856" y="91.6686" size="2.0828" layer="95" ratio="6" rot="SR0"/>
</instance>
<instance part="J5" gate="A" x="7.62" y="27.94" smashed="yes">
<attribute name="NAME" x="11.7856" y="33.2486" size="2.0828" layer="95" ratio="6" rot="SR0"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="VRTREF" class="0">
<segment>
<pinref part="J2" gate="G$0" pin="1"/>
<wire x1="68.58" y1="96.52" x2="71.12" y2="96.52" width="0.1524" layer="91"/>
<label x="71.12" y="96.52" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="68.58" y1="27.94" x2="71.12" y2="27.94" width="0.1524" layer="91"/>
<label x="71.12" y="27.94" size="1.778" layer="95"/>
<pinref part="J6" gate="G$0" pin="4"/>
</segment>
</net>
<net name="TMS" class="0">
<segment>
<pinref part="J2" gate="G$0" pin="2"/>
<wire x1="68.58" y1="91.44" x2="71.12" y2="91.44" width="0.1524" layer="91"/>
<label x="71.12" y="91.44" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="68.58" y1="33.02" x2="71.12" y2="33.02" width="0.1524" layer="91"/>
<label x="71.12" y="33.02" size="1.778" layer="95"/>
<pinref part="J6" gate="G$0" pin="3"/>
</segment>
</net>
<net name="TCK" class="0">
<segment>
<pinref part="J2" gate="G$0" pin="3"/>
<wire x1="68.58" y1="86.36" x2="71.12" y2="86.36" width="0.1524" layer="91"/>
<label x="71.12" y="86.36" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="68.58" y1="38.1" x2="71.12" y2="38.1" width="0.1524" layer="91"/>
<label x="71.12" y="38.1" size="1.778" layer="95"/>
<pinref part="J6" gate="G$0" pin="2"/>
</segment>
</net>
<net name="RX+" class="0">
<segment>
<pinref part="J3" gate="G$0" pin="1"/>
<wire x1="106.68" y1="96.52" x2="109.22" y2="96.52" width="0.1524" layer="91"/>
<label x="109.22" y="96.52" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="106.68" y1="27.94" x2="109.22" y2="27.94" width="0.1524" layer="91"/>
<label x="109.22" y="27.94" size="1.778" layer="95"/>
<pinref part="J7" gate="G$0" pin="4"/>
</segment>
</net>
<net name="RX-" class="0">
<segment>
<pinref part="J3" gate="G$0" pin="2"/>
<wire x1="106.68" y1="91.44" x2="109.22" y2="91.44" width="0.1524" layer="91"/>
<label x="109.22" y="91.44" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="106.68" y1="33.02" x2="109.22" y2="33.02" width="0.1524" layer="91"/>
<label x="109.22" y="33.02" size="1.778" layer="95"/>
<pinref part="J7" gate="G$0" pin="3"/>
</segment>
</net>
<net name="TX+" class="0">
<segment>
<pinref part="J3" gate="G$0" pin="3"/>
<wire x1="106.68" y1="86.36" x2="109.22" y2="86.36" width="0.1524" layer="91"/>
<label x="109.22" y="86.36" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="106.68" y1="38.1" x2="109.22" y2="38.1" width="0.1524" layer="91"/>
<label x="109.22" y="38.1" size="1.778" layer="95"/>
<pinref part="J7" gate="G$0" pin="2"/>
</segment>
</net>
<net name="TX-" class="0">
<segment>
<pinref part="J3" gate="G$0" pin="4"/>
<wire x1="106.68" y1="81.28" x2="109.22" y2="81.28" width="0.1524" layer="91"/>
<label x="109.22" y="81.28" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="106.68" y1="43.18" x2="109.22" y2="43.18" width="0.1524" layer="91"/>
<label x="109.22" y="43.18" size="1.778" layer="95"/>
<pinref part="J7" gate="G$0" pin="1"/>
</segment>
</net>
<net name="ANTENNA" class="0">
<segment>
<pinref part="J10" gate="A" pin="3"/>
<wire x1="220.98" y1="30.48" x2="218.44" y2="30.48" width="0.1524" layer="91"/>
<label x="218.44" y="30.48" size="1.778" layer="95" rot="MR0"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="1"/>
<wire x1="182.88" y1="71.12" x2="180.34" y2="71.12" width="0.1524" layer="91"/>
<label x="180.34" y="71.12" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="VCC_BURN" class="0">
<segment>
<pinref part="J9" gate="G$0" pin="1"/>
<wire x1="185.42" y1="43.18" x2="187.96" y2="43.18" width="0.1524" layer="91"/>
<label x="187.96" y="43.18" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="182.88" y1="86.36" x2="180.34" y2="86.36" width="0.1524" layer="91"/>
<label x="180.34" y="86.36" size="1.778" layer="95" rot="MR0"/>
<pinref part="U$3" gate="G$1" pin="V0"/>
</segment>
</net>
<net name="VCC_BATT" class="0">
<segment>
<pinref part="J4" gate="G$0" pin="1"/>
<wire x1="144.78" y1="96.52" x2="147.32" y2="96.52" width="0.1524" layer="91"/>
<label x="147.32" y="96.52" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="144.78" y1="38.1" x2="147.32" y2="38.1" width="0.1524" layer="91"/>
<label x="147.32" y="38.1" size="1.778" layer="95"/>
<pinref part="J8" gate="G$0" pin="2"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="J2" gate="G$0" pin="4"/>
<wire x1="68.58" y1="81.28" x2="71.12" y2="81.28" width="0.1524" layer="91"/>
<label x="71.12" y="81.28" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J2" gate="G$0" pin="MNT_1"/>
<wire x1="68.58" y1="76.2" x2="71.12" y2="76.2" width="0.1524" layer="91"/>
<label x="71.12" y="76.2" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J2" gate="G$0" pin="MNT_2"/>
<wire x1="68.58" y1="71.12" x2="71.12" y2="71.12" width="0.1524" layer="91"/>
<label x="71.12" y="71.12" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J6" gate="G$0" pin="1"/>
<wire x1="68.58" y1="43.18" x2="71.12" y2="43.18" width="0.1524" layer="91"/>
<label x="71.12" y="43.18" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J6" gate="G$0" pin="MNT_1"/>
<wire x1="68.58" y1="22.86" x2="71.12" y2="22.86" width="0.1524" layer="91"/>
<label x="71.12" y="22.86" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J6" gate="G$0" pin="MNT_2"/>
<wire x1="68.58" y1="17.78" x2="71.12" y2="17.78" width="0.1524" layer="91"/>
<label x="71.12" y="17.78" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J7" gate="G$0" pin="MNT_1"/>
<wire x1="106.68" y1="22.86" x2="109.22" y2="22.86" width="0.1524" layer="91"/>
<label x="109.22" y="22.86" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J7" gate="G$0" pin="MNT_2"/>
<wire x1="106.68" y1="17.78" x2="109.22" y2="17.78" width="0.1524" layer="91"/>
<label x="109.22" y="17.78" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J3" gate="G$0" pin="MNT_1"/>
<wire x1="106.68" y1="76.2" x2="109.22" y2="76.2" width="0.1524" layer="91"/>
<label x="109.22" y="76.2" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J3" gate="G$0" pin="MNT_2"/>
<wire x1="106.68" y1="71.12" x2="109.22" y2="71.12" width="0.1524" layer="91"/>
<label x="109.22" y="71.12" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J4" gate="G$0" pin="2"/>
<wire x1="144.78" y1="91.44" x2="147.32" y2="91.44" width="0.1524" layer="91"/>
<label x="147.32" y="91.44" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J4" gate="G$0" pin="MNT_1"/>
<wire x1="144.78" y1="86.36" x2="147.32" y2="86.36" width="0.1524" layer="91"/>
<label x="147.32" y="86.36" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J4" gate="G$0" pin="MNT_2"/>
<wire x1="144.78" y1="81.28" x2="147.32" y2="81.28" width="0.1524" layer="91"/>
<label x="147.32" y="81.28" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J8" gate="G$0" pin="MNT_1"/>
<wire x1="144.78" y1="33.02" x2="147.32" y2="33.02" width="0.1524" layer="91"/>
<label x="147.32" y="33.02" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J8" gate="G$0" pin="MNT_2"/>
<wire x1="144.78" y1="27.94" x2="147.32" y2="27.94" width="0.1524" layer="91"/>
<label x="147.32" y="27.94" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J9" gate="G$0" pin="2"/>
<wire x1="185.42" y1="38.1" x2="187.96" y2="38.1" width="0.1524" layer="91"/>
<label x="187.96" y="38.1" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J9" gate="G$0" pin="MNT_1"/>
<wire x1="185.42" y1="33.02" x2="187.96" y2="33.02" width="0.1524" layer="91"/>
<label x="187.96" y="33.02" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J9" gate="G$0" pin="MNT_2"/>
<wire x1="185.42" y1="27.94" x2="187.96" y2="27.94" width="0.1524" layer="91"/>
<label x="187.96" y="27.94" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J10" gate="A" pin="1"/>
<wire x1="220.98" y1="35.56" x2="218.44" y2="35.56" width="0.1524" layer="91"/>
<label x="218.44" y="35.56" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J10" gate="A" pin="2"/>
<wire x1="220.98" y1="33.02" x2="218.44" y2="33.02" width="0.1524" layer="91"/>
<label x="218.44" y="33.02" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="144.78" y1="43.18" x2="147.32" y2="43.18" width="0.1524" layer="91"/>
<label x="147.32" y="43.18" size="1.778" layer="95"/>
<pinref part="J8" gate="G$0" pin="1"/>
</segment>
<segment>
<wire x1="203.2" y1="86.36" x2="205.74" y2="86.36" width="0.1524" layer="91"/>
<label x="205.74" y="86.36" size="1.778" layer="95"/>
<pinref part="U$3" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="J12" gate="A" pin="1"/>
<wire x1="220.98" y1="83.82" x2="218.44" y2="83.82" width="0.1524" layer="91"/>
<label x="215.9" y="83.82" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J12" gate="A" pin="2"/>
<wire x1="220.98" y1="81.28" x2="218.44" y2="81.28" width="0.1524" layer="91"/>
<label x="215.9" y="81.28" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J11" gate="A" pin="1"/>
<wire x1="220.98" y1="63.5" x2="218.44" y2="63.5" width="0.1524" layer="91"/>
<label x="215.9" y="63.5" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J11" gate="A" pin="2"/>
<wire x1="220.98" y1="60.96" x2="218.44" y2="60.96" width="0.1524" layer="91"/>
<label x="215.9" y="60.96" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J1" gate="A" pin="4"/>
<wire x1="7.62" y1="78.74" x2="5.08" y2="78.74" width="0.1524" layer="91"/>
<label x="0" y="78.74" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J5" gate="A" pin="4"/>
<wire x1="7.62" y1="20.32" x2="5.08" y2="20.32" width="0.1524" layer="91"/>
<label x="0" y="20.32" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J1" gate="A" pin="3"/>
<wire x1="7.62" y1="81.28" x2="5.08" y2="81.28" width="0.1524" layer="91"/>
<label x="-2.54" y="81.28" size="1.778" layer="95"/>
</segment>
</net>
<net name="ORION-SPACE" class="0">
<segment>
<pinref part="J12" gate="A" pin="3"/>
<wire x1="220.98" y1="78.74" x2="218.44" y2="78.74" width="0.1524" layer="91"/>
<label x="205.74" y="78.74" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J11" gate="A" pin="3"/>
<wire x1="220.98" y1="58.42" x2="218.44" y2="58.42" width="0.1524" layer="91"/>
<label x="203.2" y="58.42" size="1.778" layer="95"/>
</segment>
</net>
<net name="RBF1" class="0">
<segment>
<pinref part="J5" gate="A" pin="2"/>
<wire x1="7.62" y1="25.4" x2="5.08" y2="25.4" width="0.1524" layer="91"/>
<label x="-2.54" y="25.4" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J1" gate="A" pin="1"/>
<wire x1="7.62" y1="86.36" x2="5.08" y2="86.36" width="0.1524" layer="91"/>
<label x="0" y="86.36" size="1.778" layer="95"/>
</segment>
</net>
<net name="RBF2" class="0">
<segment>
<pinref part="J5" gate="A" pin="3"/>
<wire x1="7.62" y1="22.86" x2="5.08" y2="22.86" width="0.1524" layer="91"/>
<label x="-2.54" y="22.86" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J1" gate="A" pin="2"/>
<wire x1="7.62" y1="83.82" x2="5.08" y2="83.82" width="0.1524" layer="91"/>
<label x="-2.54" y="83.82" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J5" gate="A" pin="1"/>
<wire x1="7.62" y1="27.94" x2="5.08" y2="27.94" width="0.1524" layer="91"/>
<label x="0" y="27.94" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
