package bean;

public class Job {
    private int jobId;
    private String jobName;
    private String jobSal;
    private String jobLoc;
    //招聘人数
    private String jobCount;
    //学历
    private String jobDegree;
    //专业
    private String jobSubject;
    //职位描述
    private String jobDesc;
    //任职要求
    private String jobDetail;
    //招聘状态
    private int jobStatus;
    //工作经验
    private String jobYear;
    private int companyId;
    //添加一个新属性  不跟数据库对象
    private String comName;

    public String getComName() {
        return comName;
    }

    public void setComName(String comName) {
        this.comName = comName;
    }

    public int getJobId() {
        return jobId;
    }

    public void setJobId(int jobId) {
        this.jobId = jobId;
    }

    public String getJobName() {
        return jobName;
    }

    public void setJobName(String jobName) {
        this.jobName = jobName;
    }

    public String getJobSal() {
        return jobSal;
    }

    public void setJobSal(String jobSal) {
        this.jobSal = jobSal;
    }

    public String getJobLoc() {
        return jobLoc;
    }

    public void setJobLoc(String jobLoc) {
        this.jobLoc = jobLoc;
    }

    public String getJobCount() {
        return jobCount;
    }

    public void setJobCount(String jobCount) {
        this.jobCount = jobCount;
    }

    public String getJobDegree() {
        return jobDegree;
    }

    public void setJobDegree(String jobDegree) {
        this.jobDegree = jobDegree;
    }

    public String getJobSubject() {
        return jobSubject;
    }

    public void setJobSubject(String jobSubject) {
        this.jobSubject = jobSubject;
    }

    public String getJobDesc() {
        return jobDesc;
    }

    public void setJobDesc(String jobDesc) {
        this.jobDesc = jobDesc;
    }

    public String getJobDetail() {
        return jobDetail;
    }

    public void setJobDetail(String jobDetail) {
        this.jobDetail = jobDetail;
    }

    public int getJobStatus() {
        return jobStatus;
    }

    public void setJobStatus(int jobStatus) {
        this.jobStatus = jobStatus;
    }

    public String getJobYear() {
        return jobYear;
    }

    public void setJobYear(String jobYear) {
        this.jobYear = jobYear;
    }

    public int getCompanyId() {
        return companyId;
    }

    public void setCompanyId(int companyId) {
        this.companyId = companyId;
    }
}
