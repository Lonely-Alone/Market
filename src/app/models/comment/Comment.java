package app.models.comment;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.ManyToOne;

import app.models.BaseModel;
import app.models.member.Member;

@Entity
public class Comment extends BaseModel {

    @ManyToOne
    public Member creator;
    public String content;

    @Enumerated(EnumType.STRING)
    public commentType type;

    public enum commentType {
	Good, Normal, Bad
    }

}
