package com.company;

import java.io.*;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

public class main {
    public static void main(String[] args) {
//        UnitClass IO = new UnitClass("D:\\00_MyWorkSpace\\CpApDSC_SH00_For_SW011_P1E1_203\\test\\vcast\\DSC_TEST.tst");
//        System.out.println(IO.getU_index());
//        System.out.println(IO.getP_index());
//        IO.ShowDSC_List();
//        System.out.println(IO.DSC_List.get("CpApDSC_EventManager").toString());
        LinkedHashMap<String, List<String>> DscMap = new LinkedHashMap<>();
        DscMap = main.addfunction("E:\\00_MyWorkspace\\DSC_TEST.tst");
        for (String key:DscMap.keySet()
             ) {
            List<String> value = DscMap.get(key);
            for (String v:value
                 ) {
                System.out.println(key+":"+v);
            }
        }
    }

    public static LinkedHashMap<String,List<String>> addfunction(String path){
        LinkedHashMap<String, List<String>> DscMap = new LinkedHashMap<>();
        try {
            BufferedReader br = new BufferedReader(
                    new InputStreamReader(
                            new FileInputStream(new File(path)))); //创建对目标文件读取流
            String str = null;
            while((str = br.readLine())!=null){
                if (str.startsWith("-- Unit: ")){
                    DscMap.put(str.split("-- Unit: ")[1],new ArrayList<String>());
                }else if(str.startsWith("-- Subprogram: ")){
                    ((ArrayList)(DscMap.values().toArray()[DscMap.values().size()-1])).add(0,str.split("-- Subprogram: ")[1]);
                }
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return DscMap;
    }

    public void func(){
        System.out.println("1");
    }
}
