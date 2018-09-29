
package cn.com.webxml;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for anonymous complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType>
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="theCityName" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="theUserID" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "theCityName",
    "theUserID"
})
@XmlRootElement(name = "getWeatherbyCityNamePro")
public class GetWeatherbyCityNamePro {

    protected String theCityName;
    protected String theUserID;

    /**
     * Gets the value of the theCityName property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getTheCityName() {
        return theCityName;
    }

    /**
     * Sets the value of the theCityName property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setTheCityName(String value) {
        this.theCityName = value;
    }

    /**
     * Gets the value of the theUserID property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getTheUserID() {
        return theUserID;
    }

    /**
     * Sets the value of the theUserID property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setTheUserID(String value) {
        this.theUserID = value;
    }

}
