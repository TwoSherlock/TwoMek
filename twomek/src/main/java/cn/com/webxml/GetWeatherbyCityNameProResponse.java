
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
 *         &lt;element name="getWeatherbyCityNameProResult" type="{http://WebXml.com.cn/}ArrayOfString" minOccurs="0"/>
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
    "getWeatherbyCityNameProResult"
})
@XmlRootElement(name = "getWeatherbyCityNameProResponse")
public class GetWeatherbyCityNameProResponse {

    protected ArrayOfString getWeatherbyCityNameProResult;

    /**
     * Gets the value of the getWeatherbyCityNameProResult property.
     * 
     * @return
     *     possible object is
     *     {@link ArrayOfString }
     *     
     */
    public ArrayOfString getGetWeatherbyCityNameProResult() {
        return getWeatherbyCityNameProResult;
    }

    /**
     * Sets the value of the getWeatherbyCityNameProResult property.
     * 
     * @param value
     *     allowed object is
     *     {@link ArrayOfString }
     *     
     */
    public void setGetWeatherbyCityNameProResult(ArrayOfString value) {
        this.getWeatherbyCityNameProResult = value;
    }

}
