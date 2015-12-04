package app.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import app.dao.AddressDao;
import app.models.member.Address;
import app.models.member.Member;
import app.service.AddressService;

@Service
public class AddressServiceImpl implements AddressService {

	@Resource
	private AddressDao addressDao;

	@Override
	public Address saveAddress(Address address) {
		return addressDao.saveAddress(address);
	}

	@Override
	public List<Address> fetchByPerson(Member member) {
		return addressDao.fetchByPerson(member);
	}

	@Override
	public Address findById(long addressId) {
		return addressDao.findById(addressId);

	}

	@Override
	public void setDefalut(Address address) {
		addressDao.setDefalut(address);
	}

	@Override
	public Address findDefault() {
		return addressDao.findDefault();
	}

}
