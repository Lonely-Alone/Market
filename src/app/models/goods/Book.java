package app.models.goods;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Book extends Good {

	public String author;
	public String publisher;// 出版商
	@Temporal(TemporalType.TIMESTAMP)
	public Date publishTime;// 出版时间

}
