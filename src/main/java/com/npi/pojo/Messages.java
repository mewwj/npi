package com.npi.pojo;

public class Messages {
    private Integer id;

    private Integer headid;

    private String insproject;

    private String item;

    private String items;

    private String problems;

    private String filenamea;

    private String ng;

    private String defectlevels;

    private String reasons;

    private String measures;

    private String filenameb;

    private String exhibitor;

    private String head;

    private String plantime;

    private String finishtime;

    private String confirm;

    private String affect;

    private String comment;

    private String pmcomm;

    public Messages(Integer id, Integer headid, String insproject, String item, String items, String problems, String filenamea, String ng, String defectlevels, String reasons, String measures, String filenameb, String exhibitor, String head, String plantime, String finishtime, String confirm, String affect, String comment, String pmcomm) {
        this.id = id;
        this.headid = headid;
        this.insproject = insproject;
        this.item = item;
        this.items = items;
        this.problems = problems;
        this.filenamea = filenamea;
        this.ng = ng;
        this.defectlevels = defectlevels;
        this.reasons = reasons;
        this.measures = measures;
        this.filenameb = filenameb;
        this.exhibitor = exhibitor;
        this.head = head;
        this.plantime = plantime;
        this.finishtime = finishtime;
        this.confirm = confirm;
        this.affect = affect;
        this.comment = comment;
        this.pmcomm = pmcomm;
    }

    public Messages() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getHeadid() {
        return headid;
    }

    public void setHeadid(Integer headid) {
        this.headid = headid;
    }

    public String getInsproject() {
        return insproject;
    }

    public void setInsproject(String insproject) {
        this.insproject = insproject == null ? null : insproject.trim();
    }

    public String getItem() {
        return item;
    }

    public void setItem(String item) {
        this.item = item == null ? null : item.trim();
    }

    public String getItems() {
        return items;
    }

    public void setItems(String items) {
        this.items = items == null ? null : items.trim();
    }

    public String getProblems() {
        return problems;
    }

    public void setProblems(String problems) {
        this.problems = problems == null ? null : problems.trim();
    }

    public String getFilenamea() {
        return filenamea;
    }

    public void setFilenamea(String filenamea) {
        this.filenamea = filenamea == null ? null : filenamea.trim();
    }

    public String getNg() {
        return ng;
    }

    public void setNg(String ng) {
        this.ng = ng == null ? null : ng.trim();
    }

    public String getDefectlevels() {
        return defectlevels;
    }

    public void setDefectlevels(String defectlevels) {
        this.defectlevels = defectlevels == null ? null : defectlevels.trim();
    }

    public String getReasons() {
        return reasons;
    }

    public void setReasons(String reasons) {
        this.reasons = reasons == null ? null : reasons.trim();
    }

    public String getMeasures() {
        return measures;
    }

    public void setMeasures(String measures) {
        this.measures = measures == null ? null : measures.trim();
    }

    public String getFilenameb() {
        return filenameb;
    }

    public void setFilenameb(String filenameb) {
        this.filenameb = filenameb == null ? null : filenameb.trim();
    }

    public String getExhibitor() {
        return exhibitor;
    }

    public void setExhibitor(String exhibitor) {
        this.exhibitor = exhibitor == null ? null : exhibitor.trim();
    }

    public String getHead() {
        return head;
    }

    public void setHead(String head) {
        this.head = head == null ? null : head.trim();
    }

    public String getPlantime() {
        return plantime;
    }

    public void setPlantime(String plantime) {
        this.plantime = plantime == null ? null : plantime.trim();
    }

    public String getFinishtime() {
        return finishtime;
    }

    public void setFinishtime(String finishtime) {
        this.finishtime = finishtime == null ? null : finishtime.trim();
    }

    public String getConfirm() {
        return confirm;
    }

    public void setConfirm(String confirm) {
        this.confirm = confirm == null ? null : confirm.trim();
    }

    public String getAffect() {
        return affect;
    }

    public void setAffect(String affect) {
        this.affect = affect == null ? null : affect.trim();
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment == null ? null : comment.trim();
    }

    public String getPmcomm() {
        return pmcomm;
    }

    public void setPmcomm(String pmcomm) {
        this.pmcomm = pmcomm == null ? null : pmcomm.trim();
    }
}