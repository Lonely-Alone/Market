package app.action;

import javax.annotation.Resource;

import util.CommonUtils;
import app.models.member.Address;
import app.service.AddressService;
import app.util.Result;

import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("all")
public class AddressAction extends BaseAction implements ModelDriven<Address> {

	private Address address;

	@Resource
	private AddressService addressService;

	public void addAddress() {
		address.owner = CommonUtils.getCurrentMember();
		addressService.saveAddress(address);
		out.print(Result.success(null));
	}

	@Override
	public Address getModel() {
		if (address == null) {
			address = new Address();
		}
		return address;
	}

}
