
    {% snapshot HSTG_HSTG_TCS_CrTots_snapshot %}

    {{
        config(
            target_schema='HSTG',
            unique_key='OMD_HASH_BUSINESS_KEY',
            strategy='check',
            check_cols='all',
            invalidate_hard_deletes=True,
        )
    }}

    select * from {{ source('STG', 'STG_TCS_CrTots') }}

    {% endsnapshot %}

