package cn.com.magnity.magnitycx.sdk;

public class State implements Cloneable {
    public int intAveNETDt;
    public int intAveTemperature;
    public int[] intHistTemperature = new int[256];
    public int intMaxTemperature;
    public int intMaxX;
    public int intMaxY;
    public int intMinTemperature;
    public int intMinX;
    public int intMinY;
    public int intSTDTemperature;
}
