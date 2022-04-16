$.ajaxSetup({
    headers: {
        "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
    },
});

let filter = { status: [] };

const domStrings = {
    inputFilter: $(".filter"),
    inputForm: $("#form-filter"),
    jKelamin: $('input[name="j_kelamin"]').val(),
    jurusan: $('input[name="jurusan"]').val(),
    kelas: $('input[name="kelas"]').val(),
    tahunAkademik: $('input[name="tahun_akademik"]').val(),
    formKelas: $("#form-kelas"),
};
domStrings.inputFilter.select2();

var table = $("#example1").DataTable({
    lengthMenu: [
        [10, 25, 50, 100, 500, -1],
        [10, 25, 50, 100, 500, "All"],
    ],
    responsive: true,
    lengthChange: true,
    autoWidth: false,
    pagingType: "full_numbers",
    order: [[3, "desc"]],
    language: {
        search: "_INPUT_",
        searchPlaceholder: "Cari...",
        processing:
            '<div class="spinner-border text-info" role="status">' +
            '<span class="sr-only">Loading...</span>' +
            "</div>",
        paginate: {
            Search: '<i class="icon-search"></i>',
            first: "<i class='fas fa-angle-double-left'></i>",
            previous: "<i class='fas fa-angle-left'></i>",
            next: "<i class='fas fa-angle-right'></i>",
            last: "<i class='fas fa-angle-double-right'></i>",
        },
    },
    oLanguage: {
        sSearch: "",
    },
    processing: true,
    serverSide: true,
    ajax: {
        url: `${url}/kenaikan/ajax/dataTables`,
        method: "POST",
        data: function (d) {
            d.filter = filter;
            return d;
        },
    },
    columns: [
        {
            name: "checked",
            data: function (data) {
                return `<div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input pilih" value="${data.id}" id="checkbox-${data.id}">
                            <label class="custom-control-label" for="checkbox-${data.id}"></label>
                        </div>`;
            },
            searchable: false,
            orderable: false,
        },
        {
            name: "foto",
            data: "foto",
        },
        {
            name: "nisn",
            data: "nisn",
        },
        {
            name: "nis",
            data: "nis",
        },
        {
            name: "nama",
            data: "nama",
        },
        {
            name: "jenis_kelamin",
            data: "jenis_kelamin",
        },
        {
            name: "kelas",
            data: "kelas",
        },
        {
            name: "tahun_akademik",
            data: "tahun_akademik",
        },
    ],
});

$("#pilih").click(function () {
    var checked = $("#pilih").prop("checked");
    $("tbody tr .pilih").prop("checked", checked);
});

table.on("click", ".pilih", function () {
    if($(this).prop('checked') != true){
        $('#pilih').prop('checked', false);
    }
});

domStrings.formKelas.submit(function (e) {
    e.preventDefault();
    let semua = $("tbody tr .pilih:checked");
    let kelas = $('select[name="kelas"]').val();
    if (kelas) {
        if (semua.length > 0) {
            let semua_id = [];
            $.each(semua, function (i, v) {
                semua_id.push($(v).val());
            });
            Swal.fire({
                title: "Apakah yakin?",
                text: `${semua.length} siswa akan dinaikan kelas`,
                icon: "warning",
                showCancelButton: true,
                confirmButtonColor: "#6492b8da",
                cancelButtonColor: "#d33",
                confirmButtonText: "Yakin",
                cancelButtonText: "Batal",
            }).then((result) => {
                if (result.isConfirmed) {
                    $.ajax({
                        url: `${url}/kenaikan/update`,
                        method: "POST",
                        data: {
                            _method: "PUT",
                            id: semua_id,
                            kelas: kelas,
                        },
                        success: function (res) {
                            table.draw();
                            Swal.fire({
                                icon: "success",
                                title: "Berhasil menaikkan kelas",
                                text: res.success,
                            });
                        },
                        error: function (err) {
                            Swal.fire({
                                icon: "error",
                                title: "Gagal",
                                text: err.responseJSON.message,
                            });
                        },
                    });
                }
            });
        } else {
            Swal.fire({
                icon: "error",
                title: "Oops...",
                text: "Pilih data terlebih dahulu!",
            });
        }
    } else {
        Swal.fire({
            icon: "error",
            title: "Oops...",
            text: "Pilih kelas terlebih dahulu!",
        });
    }
});

domStrings.inputForm.submit(function (e) {
    e.preventDefault();
    let data = $(this).serializeArray();

    data = data.reduce((obj, item) => {
        if (obj.hasOwnProperty(item.name)) {
            temp = obj[item.name];
            obj[item.name] = Array.isArray(temp)
                ? temp.concat(item.value)
                : [temp, item.value];
        } else {
            obj[item.name] = item.value;
        }
        return obj;
    }, {});

    filter = data;
    $(".card-body").slideDown("slow");
    $("#modalFilter").modal("hide");
    table.draw();
});
