function myFunction(id){
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    jQuery.ajax({
        url: "index.php/search",
        method: 'post',
        data: {
            name: id,
            value: jQuery('#' + id).val()
        },
        success: function(result){

            $( "#resp" ).empty();
            $.each(result, function(key, value){
                let row = "<tr>";
                row = row + '<td>' + value.id + '</td>';
                row = row + '<td><input type="text" value= ' + value.name +' onkeyup=' +  "keyEnter(this.id,this.name, this.value, event);"  + '   readonly="true" ondblclick=' + 'this.readOnly="";' + ' ></td>';
                row = row + '<td><input type="text" value= ' + value.surname +' onkeyup=' +  "keyEnter(this.id,this.name, this.value, event);"  + '  readonly="true" ondblclick=' + 'this.readOnly="";' + ' ></td>';
                row = row + '<td><input type="text" value= ' + value.email +' onkeyup=' +  "keyEnter(this.id,this.name, this.value, event);"  + '  readonly="true" ondblclick=' + 'this.readOnly="";' + ' ></td>';
                row = row + '<td><input type="text" value= ' + value.password +' onkeyup=' +  "keyEnter(this.id,this.name, this.value, event);"  + '  readonly="true" ondblclick=' + 'this.readOnly="";' + ' ></td>';
                $('#resp').append(row);
            })
        }});
}

function keyEnter(id, name, value, event){
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    var keycode = (event.keyCode ? event.keyCode : event.which);

    if(keycode == '13'){

        jQuery.ajax({
            url: "index.php/update",
            method: 'post',
            data: {
                id: id,
                value: value,
                name: name
            },
            success: function(result){
                if(result == 200){
                    alert('changes were successfully saved');
                }else{
                    alert('some error has occurred');
                }
            }});
    }

}



