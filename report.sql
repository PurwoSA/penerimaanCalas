select calas.*, fakultas.nama_fakultas, program_studi.program_studi
from calas
inner join program_studi
on calas.id_prodi=program_studi.id_prodi
inner join fakultas
on fakultas.kode_fakultas=calas.kode_fakultas