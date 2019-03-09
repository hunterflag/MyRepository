package Work.hunter.bean;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.Session;
import org.hibernate.Transaction;

import Work.hunter.utility.HibernateUtils;

@Entity
@Table(name="comApply")
public class ComApply {
//====================================================	
	private String comApplyId;
	private String comApplyAcc;
	private String comApplyPwd;
	private String comApplyName;
	private String comApplyPrincipal; 	//負責人
	private String comApplyPhone;
	private String comApplyAdd;
	private String comApplyWeb;
	private String comApplyMail;
	private Timestamp comApplyDay;		//申請日
	private Integer comApplyStatus;
	private String comApplyNote;
	
	
// Getter & Setter ====================================================	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="comApplyId", columnDefinition="INT IDENTITY(1, 1) NOT NULL")
	public String getComApplyId() {
		return comApplyId;
	}


	public void setComApplyId(String comApplyId) {
		this.comApplyId = comApplyId;
	}


	@Column(name="comApplyAcc", columnDefinition="NVARCHAR(250) NOT NULL")
	public String getComApplyAcc() {
		return comApplyAcc;
	}


	public void setComApplyAcc(String comApplyAcc) {
		this.comApplyAcc = comApplyAcc;
	}


	@Column(name="comApplyPwd", columnDefinition="NVARCHAR(250) NOT NULL")
	public String getComApplyPwd() {
		return comApplyPwd;
	}


	public void setComApplyPwd(String comApplyPwd) {
		this.comApplyPwd = comApplyPwd;
	}


	@Column(name="comApplyName", columnDefinition="NVARCHAR(250) NOT NULL")
	public String getComApplyName() {
		return comApplyName;
	}


	public void setComApplyName(String comApplyName) {
		this.comApplyName = comApplyName;
	}


	@Column(name="comApplyPrincipal", columnDefinition="NVARCHAR(250) NOT NULL")
	public String getComApplyPrincipal() {
		return comApplyPrincipal;
	}


	public void setComApplyPrincipal(String comApplyPrincipal) {
		this.comApplyPrincipal = comApplyPrincipal;
	}


	@Column(name="comApplyPhone", columnDefinition="NVARCHAR(250) NOT NULL")
	public String getComApplyPhone() {
		return comApplyPhone;
	}


	public void setComApplyPhone(String comApplyPhone) {
		this.comApplyPhone = comApplyPhone;
	}


	@Column(name="comApplyAdd", columnDefinition="NVARCHAR(250) NOT NULL")
	public String getComApplyAdd() {
		return comApplyAdd;
	}


	public void setComApplyAdd(String comApplyAdd) {
		this.comApplyAdd = comApplyAdd;
	}


	@Column(name="comApplyWeb", columnDefinition="NVARCHAR(250) NULL")
	public String getComApplyWeb() {
		return comApplyWeb;
	}


	public void setComApplyWeb(String comApplyWeb) {
		this.comApplyWeb = comApplyWeb;
	}


	@Column(name="comApplyMail", columnDefinition="NVARCHAR(250) NOT NULL")
	public String getComApplyMail() {
		return comApplyMail;
	}


	public void setComApplyMail(String comApplyMail) {
		this.comApplyMail = comApplyMail;
	}


	@Column(name="comApplyDay", columnDefinition="DATETIME NOT NULL")
	public Timestamp getComApplyDay() {
		return comApplyDay;
	}


	public void setComApplyDay(Timestamp comApplyDay) {
		this.comApplyDay = comApplyDay;
	}


	@Column(name="comApplyStatus", columnDefinition="INT NULL")
	public Integer getComApplyStatus() {
		return comApplyStatus;
	}


	public void setComApplyStatus(Integer comApplyStatus) {
		this.comApplyStatus = comApplyStatus;
	}


	@Column(name="comApplyNote", columnDefinition="NVARCHAR(250) NULL")
	public String getComApplyNote() {
		return comApplyNote;
	}


	public void setComApplyNote(String comApplyNote) {
		this.comApplyNote = comApplyNote;
	}

// Constructor ========================================================	
	public ComApply() {
	}


	public ComApply(String comApplyId, String comApplyAcc, String comApplyPwd, String comApplyName,
			String comApplyPrincipal, String comApplyPhone, String comApplyAdd, String comApplyWeb, String comApplyMail,
			Timestamp comApplyDay, Integer comApplyStatus, String comApplyNote) {
		super();
		this.comApplyId = comApplyId;
		this.comApplyAcc = comApplyAcc;
		this.comApplyPwd = comApplyPwd;
		this.comApplyName = comApplyName;
		this.comApplyPrincipal = comApplyPrincipal;
		this.comApplyPhone = comApplyPhone;
		this.comApplyAdd = comApplyAdd;
		this.comApplyWeb = comApplyWeb;
		this.comApplyMail = comApplyMail;
		this.comApplyDay = comApplyDay;
		this.comApplyStatus = comApplyStatus;
		this.comApplyNote = comApplyNote;
	}

//========================================================
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("ComApply [comApplyId=");
		builder.append(comApplyId);
		builder.append(", comApplyAcc=");
		builder.append(comApplyAcc);
		builder.append(", comApplyPwd=");
		builder.append(comApplyPwd);
		builder.append(", comApplyName=");
		builder.append(comApplyName);
		builder.append(", comApplyPrincipal=");
		builder.append(comApplyPrincipal);
		builder.append(", comApplyPhone=");
		builder.append(comApplyPhone);
		builder.append(", comApplyAdd=");
		builder.append(comApplyAdd);
		builder.append(", comApplyWeb=");
		builder.append(comApplyWeb);
		builder.append(", comApplyMail=");
		builder.append(comApplyMail);
		builder.append(", comApplyDay=");
		builder.append(comApplyDay);
		builder.append(", comApplyStatus=");
		builder.append(comApplyStatus);
		builder.append(", comApplyNote=");
		builder.append(comApplyNote);
		builder.append("]");
		return builder.toString();
	}

	
// Test ==============================================================	
	public static void main(String[] args) {
		ComApply comApply = new ComApply();
		comApply.setComApplyAcc("12345000");
		comApply.setComApplyPwd("123456");
		comApply.setComApplyName("John");
		comApply.setComApplyPrincipal("John");
		comApply.setComApplyAdd("Taipei");
		comApply.setComApplyPhone("+886-2-23456789");
		comApply.setComApplyWeb("www.iii.org.tw");
		comApply.setComApplyMail("tester@gmail.com");
		comApply.setComApplyDay(Timestamp.valueOf("1980-01-01 12:00:00"));
		
		Session session = HibernateUtils.getSessionFactory().openSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			session.save(comApply);
			tx.commit();
		} catch(Exception e) {
			if(tx != null) tx.rollback();
			e.printStackTrace();
		} finally {
			if (session != null) session.close();
		}
		
		HibernateUtils.getSessionFactory().close();
	}

}
