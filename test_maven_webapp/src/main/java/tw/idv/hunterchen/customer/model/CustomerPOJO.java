package tw.idv.hunterchen.customer.model;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="tblCustomer")
public class CustomerPOJO {
	private Long cstId;
	private String cstName;
	private String cstAccount;
	private String cstPassword;

	public CustomerPOJO() {
	}

	public CustomerPOJO(Long cstId, String cstName, String cstAccount, String cstPassword) {
		super();
		this.cstId = cstId;
		this.cstName = cstName;
		this.cstAccount = cstAccount;
		this.cstPassword = cstPassword;
	}


	public Long getCstId() {
		return cstId;
	}

	public void setCstId(Long cstId) {
		this.cstId = cstId;
	}

	public String getCstName() {
		return cstName;
	}

	public void setCstName(String cstName) {
		this.cstName = cstName;
	}

	public String getCstAccount() {
		return cstAccount;
	}

	public void setCstAccount(String cstAccount) {
		this.cstAccount = cstAccount;
	}

	public String getCstPassword() {
		return cstPassword;
	}

	public void setCstPassword(String cstPassword) {
		this.cstPassword = cstPassword;
	}

	@Override
	public String toString() {
		return "CustomerPOJO [cstId=" + cstId + ", cstName=" + cstName + ", cstAccount=" + cstAccount + ", cstPassword="
				+ cstPassword + "]";
	}

}
