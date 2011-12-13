<%-- 
    Document   : index
    Created on : Dec 11, 2011, 1:12:02 AM
    Author     : kopapaha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Simple jsp Basket</h1>
                    <jsp:useBean id="beanCoffeeQ" scope="session" class="basket.compute.coffeeCompute" />
                    <jsp:setProperty name="beanCoffeeQ" property="coffeeQ"  param="f" />
                    <jsp:useBean id="beanSugarQ" scope="session" class="basket.compute.sugarCompute" />
                    <jsp:setProperty name="beanSugarQ" property="sugarQ"  param="s" />
                    <jsp:useBean id="beanWaterQ" scope="session" class="basket.compute.waterCompute" />
                    <jsp:setProperty name="beanWaterQ" property="waterQ"  param="r" />
        
        <form method="POST">
        <table border="3" width="1" cellspacing="1" cellpadding="15">
           
            <tbody>
                <tr>
                    <td>Item</td>
                    <td>Price</td>
                    <td>Quantity</td>
                    <td>Total</td>
                </tr>
                <tr>
                    <td>coffee</td>
                    <td>${initParam.coffeePrice}</td>
                    <td><input type="text" name="f" value="${beanCoffeeQ.coffeeQ}" /></td>
                    <td>
                          ${initParam.coffeePrice*beanCoffeeQ.coffeeQ}
                    </td>
                </tr>
                <tr>
                    <td>sugar</td>
                    <td>${initParam.sugarPrice}</td>
                    <td><input type="text" name="s" value="${beanSugarQ.sugarQ}" /></td>
                    <td>
                        ${initParam.sugarPrice*beanSugarQ.sugarQ}
                    </td>
                </tr>
                <tr>
                    <td>water</td>
                    <td>${initParam.waterPrice}</td>
                    <td><input type="text" name="r" value="${beanWaterQ.waterQ}" /></td>
                    <td>
                        ${initParam.waterPrice*beanWaterQ.waterQ}
                    </td>
                </tr>
                <tr>
                    <td>Total</td>
                    <td></td>
                    <td></td>
                    <td>${initParam.waterPrice*beanWaterQ.waterQ+initParam.sugarPrice*beanSugarQ.sugarQ+initParam.coffeePrice*beanCoffeeQ.coffeeQ}</td>
                </tr>
            </tbody>
        </table>
        <input type="submit" value="OK" />
        
             <a href="http://kopapahatexwww.wordpress.com" target="_blank">?</a>
            <a href="https://github.com/kopapaha" target="_blank">S</a>
            <a href="https://github.com/kopapaha">T</a>
        
    </body>
</html>
