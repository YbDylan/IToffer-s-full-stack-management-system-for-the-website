package dao;

import bean.Admin;
import bean.Company;
import util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

//企业信息的持久层
public class CompanyDao {
    //企业信息表的增删改查
    //添加
    public int addCompany(Company company){
        Connection conn = null;
        PreparedStatement psta =null;
        try {
            conn = DBUtil.getConn();
            String sql = "insert into company(company_name,company_loc,company_size,company_type,company_desc," +
                    "company_status,company_num,company_img) values(?,?,?,?,?,?,?,?)";
            psta = conn.prepareStatement(sql);
            psta.setString(1,company.getCompanyName());
            psta.setString(2,company.getCompanyLoc());
            psta.setString(3,company.getCompanySize());
            psta.setString(4, company.getCompanyType());
            psta.setString(5,company.getCompanyDesc());
            psta.setInt(6,company.getCompanyStatus());
            psta.setInt(7,company.getCompanyNum());
            psta.setString(8,company.getCompanyImg());
            int num = psta.executeUpdate();
            return num;
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            DBUtil.closeUpdate(psta,conn);
        }
        return 0;
    }
    //全查询
    public List<Company> getAllCompany(){
        Connection conn = null;
        PreparedStatement psta = null;
        ResultSet resultSet =null;
        try {
            conn = DBUtil.getConn();
            String sql ="select *   from company";
            psta = conn.prepareStatement(sql);
            resultSet = psta.executeQuery();
            List<Company> companyList = new ArrayList<>();
            while(resultSet.next()){
                Company company = new Company();
                company.setCompanyDesc(resultSet.getString("company_desc"));
                company.setCompanyId(resultSet.getInt("company_id"));
                company.setCompanyImg(resultSet.getString("company_img"));
                company.setCompanyLoc(resultSet.getString("company_loc"));
                company.setCompanyName(resultSet.getString("company_name"));
                company.setCompanyNum(resultSet.getInt("company_num"));
                company.setCompanySize(resultSet.getString("company_size"));
                company.setCompanyStatus(resultSet.getInt("company_status"));
                company.setCompanyType(resultSet.getString("company_type"));
                companyList.add(company);
            }
            return companyList;

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            DBUtil.closeQuery(resultSet,psta,conn);
        }
        return null;
    }
    //根据企业id获取企业详情信息
    public  Company getCompanyById(int companyId){
        Connection conn = null;
        PreparedStatement psta = null;
        ResultSet resultSet =null;
        try {
            conn = DBUtil.getConn();
            String sql ="select *   from company where company_id=?";
            psta = conn.prepareStatement(sql);
            psta.setInt(1,companyId);
            resultSet = psta.executeQuery();
            while(resultSet.next()){
                Company company = new Company();
                company.setCompanyDesc(resultSet.getString("company_desc"));
                company.setCompanyId(resultSet.getInt("company_id"));
                company.setCompanyImg(resultSet.getString("company_img"));
                company.setCompanyLoc(resultSet.getString("company_loc"));
                company.setCompanyName(resultSet.getString("company_name"));
                company.setCompanyNum(resultSet.getInt("company_num"));
                company.setCompanySize(resultSet.getString("company_size"));
                company.setCompanyStatus(resultSet.getInt("company_status"));
                company.setCompanyType(resultSet.getString("company_type"));
                return company;
            }

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            DBUtil.closeQuery(resultSet,psta,conn);
        }
        return null;
    }
    //删除
    //修改  全字段修改
    public int updateCompany(Company company){
        Connection conn = null;
        PreparedStatement psta = null;
        try {
            conn = DBUtil.getConn();
            String sql = "update  company  set  company_name=?,company_loc=?,company_desc=?,company_size =?,company_type=?,company_status =?,company_num=?,company_img =? where  company_id=?";
            psta = conn.prepareStatement(sql);
            psta.setString(1,company.getCompanyName());
            psta.setString(2,company.getCompanyLoc());
            psta.setString(3,company.getCompanyDesc());
            psta.setString(4,company.getCompanySize());
            psta.setString(5,company.getCompanyType());
            psta.setInt(6,company.getCompanyStatus());
            psta.setInt(7,company.getCompanyNum());
            psta.setString(8,company.getCompanyImg());
            psta.setInt(9,company.getCompanyId());
            int num = psta.executeUpdate();
            return num;
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            DBUtil.closeUpdate(psta,conn);
        }
        return 0;
    }
}
