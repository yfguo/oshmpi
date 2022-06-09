/* -*- Mode: C{} c-basic-offset:4 {} -*- */
/*
 *  (C) 2018 by Argonne National Laboratory.
 *      See COPYRIGHT in top-level directory.
 *
 * This file is automatically generated. DO NOT EDIT.
 */

#include <shmem.h>
#include "oshmpi_impl.h"
/* TPL_BLOCK_START */

TYPE shmem_TYPENAME_atomic_compare_swap(TYPE * dest, TYPE cond, TYPE value, int pe)
{
    TYPE oldval;
    OSHMPI_amo_cswap(SHMEM_CTX_DEFAULT, MPI_TYPE, OSHMPI_AM_MPI_TYPE, sizeof(TYPE),
                     dest, &cond, &value, pe, &oldval);
    return oldval;
}

TYPE shmem_ctx_TYPENAME_atomic_compare_swap(shmem_ctx_t ctx, TYPE * dest, TYPE cond, TYPE
                                            value, int pe)
{
    TYPE oldval;
    OSHMPI_amo_cswap(ctx, MPI_TYPE, OSHMPI_AM_MPI_TYPE, sizeof(TYPE), dest, &cond, &value, pe,
                     &oldval);
    return oldval;
}

TYPE shmem_TYPENAME_atomic_fetch_inc(TYPE * dest, int pe)
{
    TYPE one = 1, oldval;
    OSHMPI_amo_fetch(SHMEM_CTX_DEFAULT, MPI_TYPE, OSHMPI_AM_MPI_TYPE, sizeof(TYPE),
                     MPI_SUM, OSHMPI_AM_MPI_SUM, dest, &one, pe, &oldval);
    return oldval;
}

TYPE shmem_ctx_TYPENAME_atomic_fetch_inc(shmem_ctx_t ctx, TYPE * dest, int pe)
{
    TYPE one = 1, oldval;
    OSHMPI_amo_fetch(ctx, MPI_TYPE, OSHMPI_AM_MPI_TYPE, sizeof(TYPE), MPI_SUM, OSHMPI_AM_MPI_SUM,
                     dest, &one, pe, &oldval);
    return oldval;
}

void shmem_TYPENAME_atomic_inc(TYPE * dest, int pe)
{
    TYPE one = 1;
    OSHMPI_amo_post(SHMEM_CTX_DEFAULT, MPI_TYPE, OSHMPI_AM_MPI_TYPE, sizeof(TYPE),
                    MPI_SUM, OSHMPI_AM_MPI_SUM, dest, &one, pe);
}

void shmem_ctx_TYPENAME_atomic_inc(shmem_ctx_t ctx, TYPE * dest, int pe)
{
    TYPE one = 1;
    OSHMPI_amo_post(ctx, MPI_TYPE, OSHMPI_AM_MPI_TYPE, sizeof(TYPE), MPI_SUM, OSHMPI_AM_MPI_SUM,
                    dest, &one, pe);
}

TYPE shmem_TYPENAME_atomic_fetch_add(TYPE * dest, TYPE value, int pe)
{
    TYPE oldval;
    OSHMPI_amo_fetch(SHMEM_CTX_DEFAULT, MPI_TYPE, OSHMPI_AM_MPI_TYPE, sizeof(TYPE),
                     MPI_SUM, OSHMPI_AM_MPI_SUM, dest, &value, pe, &oldval);
    return oldval;
}

TYPE shmem_ctx_TYPENAME_atomic_fetch_add(shmem_ctx_t ctx, TYPE * dest, TYPE value, int pe)
{
    TYPE oldval;
    OSHMPI_amo_fetch(ctx, MPI_TYPE, OSHMPI_AM_MPI_TYPE, sizeof(TYPE), MPI_SUM, OSHMPI_AM_MPI_SUM,
                     dest, &value, pe, &oldval);
    return oldval;
}

void shmem_TYPENAME_atomic_add(TYPE * dest, TYPE value, int pe)
{
    OSHMPI_amo_post(SHMEM_CTX_DEFAULT, MPI_TYPE, OSHMPI_AM_MPI_TYPE, sizeof(TYPE),
                    MPI_SUM, OSHMPI_AM_MPI_SUM, dest, &value, pe);
}

void shmem_ctx_TYPENAME_atomic_add(shmem_ctx_t ctx, TYPE * dest, TYPE value, int pe)
{
    OSHMPI_amo_post(ctx, MPI_TYPE, OSHMPI_AM_MPI_TYPE, sizeof(TYPE), MPI_SUM, OSHMPI_AM_MPI_SUM,
                    dest, &value, pe);
}

TYPE shmem_TYPENAME_atomic_compare_swap_nbi(TYPE * fetch, TYPE * dest, TYPE cond, TYPE value,
                                            int pe)
{
    TYPE oldval;
    OSHMPI_amo_cswap(SHMEM_CTX_DEFAULT, MPI_TYPE, OSHMPI_AM_MPI_TYPE, sizeof(TYPE),
                     dest, &cond, &value, pe, &oldval);
    return oldval;
}

TYPE shmem_ctx_TYPENAME_atomic_compare_swap_nbi(shmem_ctx_t ctx, TYPE * fetch, TYPE * dest,
                                                TYPE cond, TYPE value, int pe)
{
    TYPE oldval;
    OSHMPI_amo_cswap(ctx, MPI_TYPE, OSHMPI_AM_MPI_TYPE, sizeof(TYPE), dest, &cond, &value, pe,
                     &oldval);
    return oldval;
}

TYPE shmem_TYPENAME_atomic_fetch_inc_nbi(TYPE * fetch, TYPE * dest, int pe)
{
    TYPE one = 1, oldval;
    OSHMPI_amo_fetch(SHMEM_CTX_DEFAULT, MPI_TYPE, OSHMPI_AM_MPI_TYPE, sizeof(TYPE),
                     MPI_SUM, OSHMPI_AM_MPI_SUM, dest, &one, pe, &oldval);
    return oldval;
}

TYPE shmem_ctx_TYPENAME_atomic_fetch_inc_nbi(shmem_ctx_t ctx, TYPE * fetch, TYPE * dest, int pe)
{
    TYPE one = 1, oldval;
    OSHMPI_amo_fetch(ctx, MPI_TYPE, OSHMPI_AM_MPI_TYPE, sizeof(TYPE), MPI_SUM, OSHMPI_AM_MPI_SUM,
                     dest, &one, pe, &oldval);
    return oldval;
}

TYPE shmem_TYPENAME_atomic_fetch_add_nbi(TYPE * fetch, TYPE * dest, TYPE value, int pe)
{
    TYPE oldval;
    OSHMPI_amo_fetch(SHMEM_CTX_DEFAULT, MPI_TYPE, OSHMPI_AM_MPI_TYPE, sizeof(TYPE),
                     MPI_SUM, OSHMPI_AM_MPI_SUM, dest, &value, pe, &oldval);
    return oldval;
}

TYPE shmem_ctx_TYPENAME_atomic_fetch_add_nbi(shmem_ctx_t ctx, TYPE * fetch, TYPE * dest, TYPE value,
                                             int pe)
{
    TYPE oldval;
    OSHMPI_amo_fetch(ctx, MPI_TYPE, OSHMPI_AM_MPI_TYPE, sizeof(TYPE), MPI_SUM, OSHMPI_AM_MPI_SUM,
                     dest, &value, pe, &oldval);
    return oldval;
}

/* Deprecated APIs start */
TYPE shmem_TYPENAME_cswap(TYPE * dest, TYPE cond, TYPE value, int pe)
{
    TYPE oldval;
    OSHMPI_amo_cswap(SHMEM_CTX_DEFAULT, MPI_TYPE, OSHMPI_AM_MPI_TYPE, sizeof(TYPE),
                     dest, &cond, &value, pe, &oldval);
    return oldval;
}

TYPE shmem_TYPENAME_finc(TYPE * dest, int pe)
{
    TYPE one = 1, oldval;
    OSHMPI_amo_fetch(SHMEM_CTX_DEFAULT, MPI_TYPE, OSHMPI_AM_MPI_TYPE, sizeof(TYPE),
                     MPI_SUM, OSHMPI_AM_MPI_SUM, dest, &one, pe, &oldval);
    return oldval;
}

void shmem_TYPENAME_inc(TYPE * dest, int pe)
{
    TYPE one = 1;
    OSHMPI_amo_post(SHMEM_CTX_DEFAULT, MPI_TYPE, OSHMPI_AM_MPI_TYPE, sizeof(TYPE), MPI_SUM,
                    OSHMPI_AM_MPI_SUM, dest, &one, pe);
}

TYPE shmem_TYPENAME_fadd(TYPE * dest, TYPE value, int pe)
{
    TYPE oldval;
    OSHMPI_amo_fetch(SHMEM_CTX_DEFAULT, MPI_TYPE, OSHMPI_AM_MPI_TYPE, sizeof(TYPE), MPI_SUM,
                     OSHMPI_AM_MPI_SUM, dest, &value, pe, &oldval);
    return oldval;
}

void shmem_TYPENAME_add(TYPE * dest, TYPE value, int pe)
{
    OSHMPI_amo_post(SHMEM_CTX_DEFAULT, MPI_TYPE, OSHMPI_AM_MPI_TYPE, sizeof(TYPE), MPI_SUM,
                    OSHMPI_AM_MPI_SUM, dest, &value, pe);
}

/* Deprecated APIs end */
/* TPL_BLOCK_END */
