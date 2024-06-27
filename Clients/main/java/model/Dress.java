package model;

public class Dress {
  
  private int dressId;
  private String name;
  private float price;
  private byte[] photo;
  private int quantity;
  private String desc;

  public Dress(int dressId, String name, float price, byte[] photo, int quantity, String desc ) {
    super();
    this.dressId = dressId;
    this.name = name;
    this.price = price;
    this.photo = photo;
    this.quantity = quantity;
    this.desc = desc;
  }

  public Dress() {}

  public Dress(int dressId, String name, float price, int quantity, String desc ) {
	    super();
	    this.dressId = dressId;
	    this.name = name;
	    this.price = price;
	    this.quantity = quantity;
	    this.desc = desc;
	}


public int getDressId() {
    return dressId;
  }

  public void setDressId(int dressId) {
    this.dressId = dressId;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public float getPrice() {
    return price;
  }

  public void setPrice(float price) {
    this.price = price;
  }

  public byte[] getPhoto() {
    return photo;
  }

  public void setPhoto(byte[] photoBytes) {
    this.photo = photoBytes;
  }

  public int getQuantity() {
    return quantity;
  }

  public void setQuantity(int quantity) {
    this.quantity = quantity;
  }

  public String getDesc() {
    return desc;
  }

  public void setDesc(String desc) {
    this.desc = desc;
  }
}
