<div style="margin:0px 50px 0px 50px;">
    @if($content)
        <table class="table table-hover table-striped">
            <thead>
            <tr>
                <th>#</th>
                <th>Name</th>
                <th>Surname</th>
                <th>Email</th>
                <th>Password</th>
            </tr>
            <tr>
                <th></th>
                <th><input class="search" id="name" value="" onkeyup="myFunction(this.id);" placeholder="Search from names"></th>
                <th><input class="search" id="surname" value="" onkeyup="myFunction(this.id);" placeholder="Search from Surnames"></th>
                <th><input class="search" id="email" value="" onkeyup="myFunction(this.id);" placeholder="Search from Email"></th>
                <th><input class="search" id="password" value="" onkeyup="myFunction(this.id);" placeholder="Search from Password"></th>
            </tr>
            </thead>
            <tbody id="resp">
            @foreach($content as $k => $cont)
                <tr>
                    <td>{{ $cont->id }}</td>
                    <td><input type="text" name="name" id="{{ $cont->id }}" value={{ $cont->name }} readonly="true" onkeyup="keyEnter(this.id,this.name, this.value, event);" ondblclick="this.readOnly=''"></td>
                    <td><input type="text" name="surname" id="{{ $cont->id }}" value={{ $cont->surname }} readonly="true" onkeyup="keyEnter(this.id,this.name, this.value, event);" ondblclick="this.readOnly='';"></td>
                    <td><input type="text" name="email" id="{{ $cont->id }}" value={{  $cont->email }} readonly="true" onkeyup="keyEnter(this.id,this.name, this.value, event);" ondblclick="this.readOnly='';"></td>
                    <td><input type="text" name="password" id="{{ $cont->id }}" value={{ $cont->password }} readonly="true" onkeyup="keyEnter(this.id,this.name, this.value, event);" ondblclick="this.readOnly='';"></td>
                </tr>
            @endforeach
            </tbody>
        </table>
    @endif
</div>