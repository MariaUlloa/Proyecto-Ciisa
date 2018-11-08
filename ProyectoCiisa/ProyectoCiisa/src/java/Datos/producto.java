package Datos;

import java.sql.Date;

public class producto {
    private String prdc_codigo;
    private String prdc_nombre;
    private int prdc_cantidad;
    private int prdc_precio;
    private boolean prdc_estado;
    private int prdc_umbral;
    private Date prdc_fecha;
    private String fmls_codigo;
    private String fmls_nombre;
    
    public String getFmls_nombre(){
        return fmls_nombre;
    }
    
    public void setFmls_nombre(String fmls_nombre){
        this.fmls_nombre = fmls_nombre;
    }

    public String getPrdc_codigo() {
            return prdc_codigo;
    }

    public void setPrdc_codigo(String prdc_codigo) {
            this.prdc_codigo = prdc_codigo;
    }

    public String getPrdc_nombre() {
            return prdc_nombre;
    }

    public void setPrdc_nombre(String prdc_nombre) {
            this.prdc_nombre = prdc_nombre;
    }

    public int getPrdc_cantidad() {
            return prdc_cantidad;
    }

    public void setPrdc_cantidad(int prdc_cantidad) {
            this.prdc_cantidad = prdc_cantidad;
    }

    public int getPrdc_precio() {
            return prdc_precio;
    }

    public void setPrdc_precio(int prdc_precio) {
            this.prdc_precio = prdc_precio;
    }

    public boolean isPrdc_estado() {
            return prdc_estado;
    }

    public void setPrdc_estado(boolean prdc_estado) {
            this.prdc_estado = prdc_estado;
    }

    public int getPrdc_umbral() {
            return prdc_umbral;
    }

    public void setPrdc_umbral(int prdc_umbral) {
            this.prdc_umbral = prdc_umbral;
    }

    public Date getPrdc_fecha() {
            return prdc_fecha;
    }

    public void setPrdc_fecha(Date prdc_fecha) {
            this.prdc_fecha = prdc_fecha;
    }

    public String getFmls_codigo() {
            return fmls_codigo;
    }

    public void setFmls_codigo(String fmls_codigo) {
            this.fmls_codigo = fmls_codigo;
    }
}
