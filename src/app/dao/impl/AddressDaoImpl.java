package app.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import util.CommonUtils;
import app.dao.AddressDao;
import app.models.member.Address;
import app.models.member.Member;

@SuppressWarnings("all")
@Repository
public class AddressDaoImpl extends BaseDaoImpl implements AddressDao {

	@Override
	public Address saveAddress(Address address) {
		return (Address) save(address);
	}

	@Override
	public List<Address> fetchByPerson(Member member) {
		return fetch(
				"select add from Address add where add.owner = ? and add.isDeleted = false",
				member);
	}

	@Override
	public Address findById(long addressId) {
		return (Address) find(Address.class, addressId);
	}

	@Override
	public void setDefalut(Address address) {
		Address add = findDefault();
		add.isDefault = false;
		save(add);
		address.isDefault = true;
		save(address);
	}

	@Override
	public Address findDefault() {
		return (Address) find(
				"select add from Address add where add.owner = ? and add.isDefault = true and add.isDeleted = false",
				CommonUtils.getCurrentMember());
	}
}
