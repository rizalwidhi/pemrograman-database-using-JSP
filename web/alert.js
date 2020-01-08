function saveData() {
    var tanyaSave = confirm ("Data Berhasil Disimpan");
        if (tanyaSave === true){
                pesan = "Yes";
        }else{
                pesan = "Cancel";
        }
                document.getElementById("pesan"). innerHTML = pesan;
}

function delData(){
   var tanyaDel = confirm ("Data Berhasil Dihapus");
    if (tanyaDel === true){
            pesan = "Yes";
    }else{
            pesan = "Cancel";
    }
            document.getElementById("pesan"). innerHTML = pesan;
}


function uptData(){
   var tanyaUpt = confirm ("Data Berhasil Di Update");
    if (tanyaUpt === true){
            pesan = "Yes";
    }else{
            pesan = "Cancel";
    }
            document.getElementById("pesan"). innerHTML = pesan;
}

