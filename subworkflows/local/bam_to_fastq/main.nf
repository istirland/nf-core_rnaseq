// subworkflows/local/bam_to_fastq.nf
nextflow.enable.dsl=2

process BAM_TO_FASTQ {
    // ... define a container, inputs, outputs, etc. ...
    input:
    path bam_file

    output:
    path fastq_file

    script:
    """
    samtools fastq --input-fmt-opt unaligned -o ${fastq_file} ${bam_file}
    """
}
