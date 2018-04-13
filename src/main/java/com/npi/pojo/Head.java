package com.npi.pojo;

public class Head {
    private Integer id;

    private String stage0;

    private String stage;

    private String cusname;

    private String proname;

    private String modeltype;

    private String trydate;

    private String trytime;

    private String team;

    private String trialsite;

    private String number;

    private String goodnumber;

    private String goodrate;

    public Head(Integer id, String stage0, String stage, String cusname, String proname, String modeltype, String trydate, String trytime, String team, String trialsite, String number, String goodnumber, String goodrate) {
        this.id = id;
        this.stage0 = stage0;
        this.stage = stage;
        this.cusname = cusname;
        this.proname = proname;
        this.modeltype = modeltype;
        this.trydate = trydate;
        this.trytime = trytime;
        this.team = team;
        this.trialsite = trialsite;
        this.number = number;
        this.goodnumber = goodnumber;
        this.goodrate = goodrate;
    }

    public Head() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getStage0() {
        return stage0;
    }

    public void setStage0(String stage0) {
        this.stage0 = stage0 == null ? null : stage0.trim();
    }

    public String getStage() {
        return stage;
    }

    public void setStage(String stage) {
        this.stage = stage == null ? null : stage.trim();
    }

    public String getCusname() {
        return cusname;
    }

    public void setCusname(String cusname) {
        this.cusname = cusname == null ? null : cusname.trim();
    }

    public String getProname() {
        return proname;
    }

    public void setProname(String proname) {
        this.proname = proname == null ? null : proname.trim();
    }

    public String getModeltype() {
        return modeltype;
    }

    public void setModeltype(String modeltype) {
        this.modeltype = modeltype == null ? null : modeltype.trim();
    }

    public String getTrydate() {
        return trydate;
    }

    public void setTrydate(String trydate) {
        this.trydate = trydate == null ? null : trydate.trim();
    }

    public String getTrytime() {
        return trytime;
    }

    public void setTrytime(String trytime) {
        this.trytime = trytime == null ? null : trytime.trim();
    }

    public String getTeam() {
        return team;
    }

    public void setTeam(String team) {
        this.team = team == null ? null : team.trim();
    }

    public String getTrialsite() {
        return trialsite;
    }

    public void setTrialsite(String trialsite) {
        this.trialsite = trialsite == null ? null : trialsite.trim();
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number == null ? null : number.trim();
    }

    public String getGoodnumber() {
        return goodnumber;
    }

    public void setGoodnumber(String goodnumber) {
        this.goodnumber = goodnumber == null ? null : goodnumber.trim();
    }

    public String getGoodrate() {
        return goodrate;
    }

    public void setGoodrate(String goodrate) {
        this.goodrate = goodrate == null ? null : goodrate.trim();
    }
}