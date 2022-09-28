SELECT seq.nextval as UNIQUE_ID,
RDW_RECLASS__DAT.SOP3_LOAN_NO AS SOP3_LOAN_NO,
RDW_RECLASS__DAT.SOP3_LNDR_NO AS SOP3_LNDR_NO,
RDW_RECLASS__DAT.SOP3_REMIT_OPT AS SOP3_REMIT_OPT,
RDW_RECLASS__DAT.SOP3_RCL_RPUR_DATE AS SOP3_RCL_RPUR_DATE,
RDW_RECLASS__DAT.SOP3_GL_ENTITY_COD AS SOP3_GL_ENTITY_COD,
RDW_RECLASS__DAT.SOP3_CONDUIT_CODE AS SOP3_CONDUIT_CODE,
RDW_RECLASS__DAT.SOP3_ACC AS SOP3_ACC,
RDW_RECLASS__DAT.SOP3_ACTL_UPB_ACQS AS SOP3_ACTL_UPB_ACQS,
RDW_RECLASS__DAT.SOP3_LPI_ACQSN AS SOP3_LPI_ACQSN,
RDW_RECLASS__DAT.SOP3_INT_PURD AS SOP3_INT_PURD,
RDW_RECLASS__DAT.SOP3_PASS_THRU_RATE AS SOP3_PASS_THRU_RATE,
RDW_RECLASS__DAT.SOP3_LOAN_TYPE AS SOP3_LOAN_TYPE  FROM RDW_RECLASS__DAT; 