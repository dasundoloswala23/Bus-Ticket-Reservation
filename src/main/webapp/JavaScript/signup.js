function enableButton()
{
    var checkBox = document.getElementById("agree");
    
    if(checkBox.checked == true)
    { 
        document.getElementById("subbtn").disabled = false;
    } 
    else 
    { 
        document.getElementById("subbtn").disabled = true;
    }
}
