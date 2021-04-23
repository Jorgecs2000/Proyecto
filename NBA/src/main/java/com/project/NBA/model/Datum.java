
package com.project.NBA.model;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.Generated;
import com.fasterxml.jackson.annotation.JsonAnyGetter;
import com.fasterxml.jackson.annotation.JsonAnySetter;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;

@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonPropertyOrder({
    "id",
    "first_name",
    "height_feet",
    "height_inches",
    "last_name",
    "position",
    "team",
    "weight_pounds"
})
@Generated("jsonschema2pojo")
public class Datum {

    @JsonProperty("id")
    private Integer id;
    @JsonProperty("first_name")
    private String firstName;
    @JsonProperty("height_feet")
    private Object heightFeet;
    @JsonProperty("height_inches")
    private Object heightInches;
    @JsonProperty("last_name")
    private String lastName;
    @JsonProperty("position")
    private String position;
    @JsonProperty("team")
    private Team team;
    @JsonProperty("weight_pounds")
    private Object weightPounds;
    @JsonIgnore
    private Map<String, Object> additionalProperties = new HashMap<String, Object>();

    @JsonProperty("id")
    public Integer getId() {
        return id;
    }

    @JsonProperty("id")
    public void setId(Integer id) {
        this.id = id;
    }

    @JsonProperty("first_name")
    public String getFirstName() {
        return firstName;
    }

    @JsonProperty("first_name")
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    @JsonProperty("height_feet")
    public Object getHeightFeet() {
        return heightFeet;
    }

    @JsonProperty("height_feet")
    public void setHeightFeet(Object heightFeet) {
        this.heightFeet = heightFeet;
    }

    @JsonProperty("height_inches")
    public Object getHeightInches() {
        return heightInches;
    }

    @JsonProperty("height_inches")
    public void setHeightInches(Object heightInches) {
        this.heightInches = heightInches;
    }

    @JsonProperty("last_name")
    public String getLastName() {
        return lastName;
    }

    @JsonProperty("last_name")
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    @JsonProperty("position")
    public String getPosition() {
        return position;
    }

    @JsonProperty("position")
    public void setPosition(String position) {
        this.position = position;
    }

    @JsonProperty("team")
    public Team getTeam() {
        return team;
    }

    @JsonProperty("team")
    public void setTeam(Team team) {
        this.team = team;
    }

    @JsonProperty("weight_pounds")
    public Object getWeightPounds() {
        return weightPounds;
    }

    @JsonProperty("weight_pounds")
    public void setWeightPounds(Object weightPounds) {
        this.weightPounds = weightPounds;
    }

    @JsonAnyGetter
    public Map<String, Object> getAdditionalProperties() {
        return this.additionalProperties;
    }

    @JsonAnySetter
    public void setAdditionalProperty(String name, Object value) {
        this.additionalProperties.put(name, value);
    }

}
