package com.company;

import java.io.*;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

public class DSCFileProcess implements UnitInterface {
    public String m_Unit;
    public String m_Program;
    private String m_path;
    public LinkedHashMap<String,List<String>> DSCMAP;

    DSCFileProcess(String Unit,String Program){
        this.m_Unit = Unit;
        this.m_Program = Program;
        this.DSCMAP = new LinkedHashMap<>();
    }

    public void setM_path(String path){
        this.m_path = path;
    }

    @Override
    public void LinkUnitProgram() {
        try {
            BufferedReader br = new BufferedReader(
                    new InputStreamReader(
                            new FileInputStream(new File(this.m_path)))); //创建对目标文件读取流
            String str = null;
            while((str = br.readLine())!=null){
                if (str.startsWith(this.m_Unit)){
                    this.DSCMAP.put(str.split(this.m_Unit)[1],new ArrayList<String>());
                }else if(str.startsWith("-- Subprogram: ")){
                    ((ArrayList)(this.DSCMAP.values().toArray()[this.DSCMAP.values().size()-1])).add(0,str.split("-- Subprogram: ")[1]);
                }
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* TODO
    *
    * 显示Unit,Program的列表
    *
    * */
    @Override
    public void ShowHashMap() {
        for (String key:this.DSCMAP.keySet()
        ) {
            List<String> value = this.DSCMAP.get(key);
            for (String v:value
            ) {
                System.out.println(key+":"+v);
            }
        }
    }

    @Override
    public void ReplaceHashMap() {
        /*
        TODO
        把DSCMAP value里的值替换
        */
    }

    @Override
    public void ModefiyllfFile() {
        /*
        TODO
        按行读取llf文件，并替换回正常的状态
        */
    }
}
