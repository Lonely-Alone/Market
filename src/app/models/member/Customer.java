package app.models.member;

import javax.persistence.Entity;

@Entity
public class Customer extends Member {

    public long grade = 1;
    public long credit = 100;

}
