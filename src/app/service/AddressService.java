package app.service;

import java.util.List;

import app.models.member.Address;
import app.models.member.Member;

public interface AddressService {

	public Address saveAddress(Address address);

	public List<Address> fetchByPerson(Member member);

	public Address findById(long addressId);

	public void setDefalut(Address address);

	public Address findDefault();

}
