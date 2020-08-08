package com.company;

import java.io.*;
import java.security.PrivateKey;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

//读取文件，并对文件内容进行替换
public class IOStreamProcess {
    public String m_str1;
    public String m_str2;
    public ArrayList<String> m_UnitList;
    public ArrayList<String> m_ProgramList;
    protected File m_file;
    protected int U_index;
    protected int P_index;
    public HashMap<String,ArrayList> DSC_List;

    IOStreamProcess(String Path) {
        m_str1 = "(-- Unit: )(\\w+)";
        m_str2 = "(-- Subprogram: )(\\w+)";
        this.m_UnitList = new ArrayList<>();
        this.m_ProgramList = new ArrayList<>();
        this.DSC_List = new HashMap<>();
        this.m_file = new File(Path);
    }

    public void ReadIoFromStream() {
        try {
            this.U_index = 0;
            this.P_index = 0;
            long start = System.currentTimeMillis(); //开始时间
            BufferedReader br = new BufferedReader(
                    new InputStreamReader(
                            new FileInputStream(this.m_file))); //创建对目标文件读取流
            File newFile = new File("D:\\TempProgress.tst"); //创建临时文件
            if (!newFile.exists()) {
                newFile.createNewFile(); //不存在则创建
            }
            //创建对临时文件输出流，并追加
            BufferedWriter bw = new BufferedWriter(
                    new OutputStreamWriter(
                            new FileOutputStream(newFile, true)));
            String string = null;

            int flag = 1;
            ArrayList<String> TempList = new ArrayList<>();
            while ((string = br.readLine()) != null) {
                //判断读取的内容是否包含原字符串
                Pattern r1 = Pattern.compile(this.m_str1);
                Pattern r2 = Pattern.compile(this.m_str2);

                // 现在创建 matcher 对象
                Matcher m1 = r1.matcher(string);
                Matcher m2 = r2.matcher(string);

                if (m1.find()) {
                    //Unit添加至List中
                    System.out.println("Found Unit: " + m1.group(2));
                    this.m_UnitList.add(m1.group(2));
                    U_index++;
                }

                if (m2.find()){
                    //Program添加至List中
                    System.out.println("Found Program: " + m2.group(2));
                    this.m_ProgramList.add(m2.group(2));
                    P_index++;
                }

                if (this.U_index>0 && P_index>0){
                    if (this.U_index==flag){  //非空
                        if (!TempList.isEmpty()){
                            this.DSC_List.put(this.m_UnitList.get(this.U_index-1),this.m_ProgramList);
                        }
                    }else{
                        this.m_ProgramList.clear();
                        flag++;
                    }
                }

                bw.write(string);
                bw.newLine(); //添加换行
            }
            br.close(); //关闭流，对文件进行删除等操作需先关闭文件流操作
            bw.close();
            String filePath = this.m_file.getPath();
            this.m_file.delete(); //删除源文件
            newFile.renameTo(new File(filePath)); //将新文件更名为源文件
            long time = System.currentTimeMillis() - start; //整个操作所用时间;
            System.out.println("the total time is :"+time);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public List<String> getM_UnitList() {
        return m_UnitList;
    }

    public List<String> getM_ProgramList() {
        return m_ProgramList;
    }

    public int getP_index() {
        return P_index;
    }

    public int getU_index() {
        return U_index;
    }
}
