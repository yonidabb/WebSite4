<%@ Page Language="C#" AutoEventWireup="true" CodeFile="page1.aspx.cs" Inherits="Pages_page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../CSS/StyleTables.css" rel="stylesheet" />
    <script>
        function checkForm() {
            value = document.getElementById("firstname").value;
            if (value.length < 2) {
                document.getElementById("firstname_er").innerHTML = 'לפחות שתי אותיות לועזיות בלבד='


            }
            else if (!noNumbers(value)) {
                document.getElementById("firstname_er").innerHTML = 'אסור לשים מספרים'

            }
            else if (!noSpeicalChars(value)) {
                document.getElementById("firstname_er").innerHTML = 'אסור לשים תווים מיוחדים'

            }
            else {
                document.getElementById("firstname_er").innerHTML = ''
            }


            value = document.getElementById("lastname").value;
            if (value.length < 2) {
                document.getElementById("lastnameer").innerHTML = 'לפחות שתי אותיות לועזיות בלבד='


            }
            else if (!noNumbers(value)) {
                document.getElementById("lastnameer").innerHTML = 'אסור לשים מספרים'

            }
            else if (!noSpeicalChars(value)) {
                document.getElementById("lastnameer").innerHTML = 'אסור לשים תווים מיוחדים'

            }
            else {
                document.getElementById("lastnameer").innerHTML = ''
            }

            checkemail();

            //checkUserName()
            value = document.getElementById("username").value;
            if (value.length < 2) {
                
                document.getElementById("usernameer").innerHTML = 'שם משתמש חייב להיות לפחות עם שני תווים'


            }
            //checkPassword()
            pass1 = document.getElementById("password1").value;
            pass2 = document.getElementById("password2").value;
            if (pass1.length < 2) {

                document.getElementById("usernameer").innerHTML = 'הסיסמא חייבת להיות עם שתי תווים אידיוט'
            else if (pass1 ! = pass 2) {

                document.getElementById("usernameer").innerHTML = 'שם משתמש חייב להיות לפחות עם שני תווים'
            

        }

        function checkemail() {
            value = document.getElementById("email").value;
            var atSign = value.indexOf('@');
            var dotSign = value.indexOf('.', atSign);
            if (atSign != -1|| dotSign !=-1) {
                document.getElementById("emailer").innerHTML = 'עשית משהו לא בסדר'

            }

        }

        function noNumbers(st) {
            var i = 0;
            var digits = "0123456789"
            while (i < digits.length) {
                if (st.includes(digits[i])) {
                    return false

                }
                i++
            }
            return true;
        }
        function noSpeicalChars(st) {
            var i = 0;
            var digits = "!@$%^&*()-_+/=;'.|"
            while (i < digits.length) {
                if (st.includes(digits[i])) {
                    return false

                }
                i++
            }
            return true;
        }

    </script>

</head>
<body>





    <table>
        <tr>
            <td>
                <label>
                    first name
                </label>
            </td>
            <td>
                <input type="text" id="firstname" />
            </td>
            <td id="firstname_er"></td>
        </tr>
        <tr>
            <td>
                <label>
                    last name
                </label>
            </td>
            <td>
                <input type="text" id="lastname" />
            </td>
            <td id="lastnameer"></td>
        </tr>
        <tr>
            <td>
                <label>
                    email
                </label>
            </td>
            <td>
                <input type="text" id="email" value="uesername@..." />
            </td>
            <td id="emailer"></td>
        </tr>
        <tr>
            <td>
                <label>
                    year born
                </label>
            </td>
            <td>
                <input type="text" id="yearborn" />
            </td>
            <td id="yb1"></td>
        </tr>
        <tr>
            <td>gender
            </td>
            <td>
                <input type="radio" name="gender" id="female" value="female" />female
                <input type="radio" name="gender" id="male" value="male" />male
            </td>
            <td id="gender"></td>



        </tr>
        <tr>
            <td>choose contract method
            </td>
            <td>
                <input type="radio" name="choose contract method" id="Phone" value="Phone" />Phone
           <input type="radio" name="choose contract method" id="Email" value="Email" />Email
           <input type="radio" name="choose contract method" id="Mail" value="Mail" />Mail
            </td>
            <td id=" choose contract method"></td>



        </tr>
        <tr>
            <td>favorite color
            </td>
            <td>
                <input type="radio" name="red" id="red" value="red" />red
                <input type="radio" name="green" id="green" value="green" />green
                  <input type="radio" name="blue" id="blue" value="blue" />blue
            </td>
            <td id="favorite color"></td>
        </tr>
        <tr>
            <td>
                <label>
                    user name
                </label>
            </td>
            <td>
                <input type="text" id="username" />
            </td>
            <td id="usernameer"></td>
        </tr>
        <tr>
            <td>
                <label>
                    password
                </label>
            </td>
            <td>
                <input type="password" id="password1" />
            </td>
            <td id="password1er"></td>
        </tr>
        <tr>
            <td>
                <label>
                    confirm password
                </label>
            </td>
            <td>
                <input type="password" id="password2" />
            </td>
            <td id="password2er"></td>
        </tr>
        <tr>
            td<>


        </tr>
        <tr>
            <td style="text-align: center">
                <input type="submit" value="submit" onclick="return checkForm()" />

            </td>
            <td>
                <input type="reset" value="clear" />

            </td>
        </tr>



    </table>


</body>
</html>


