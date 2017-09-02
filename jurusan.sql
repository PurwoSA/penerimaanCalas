select fakultas.nama_fakultas, program_studi.program_studi
from fakultas
inner join program_studi
on fakultas.kode_fakultas=program_studi.kode_fakultas