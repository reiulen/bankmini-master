$(".logout").click(function () {
    Swal.fire({
        title: "Apakah yakin?",
        text: `Anda akan keluar dari e-Filling`,
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#6492b8da",
        cancelButtonColor: "#d33",
        confirmButtonText: "Keluar",
        cancelButtonText: "Batal",
    }).then((result) => {
        if (result.isConfirmed) {
            const logout = `${url}/logout`;
            $(location).attr("href", logout);
        }
    });
});

function hapus(id) {
    data = $(`#hapus${id}`).attr("data");
    Swal.fire({
        title: "Apakah yakin?",
        text: `Data ${data} Akan Dihapus`,
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#6492b8da",
        cancelButtonColor: "#d33",
        confirmButtonText: "Hapus",
        cancelButtonText: "Batal",
    }).then((result) => {
        if (result.isConfirmed) {
            $(`#form-hapus${id}`).submit();
        }
    });
}
