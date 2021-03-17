Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCF333FB24
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:28:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1689D60661;
	Wed, 17 Mar 2021 22:28:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rbNWJFxJNlm6; Wed, 17 Mar 2021 22:28:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 688BB6F998;
	Wed, 17 Mar 2021 22:28:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 885581BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 701A66F9BA
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eXH5D1OzjO9S for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 93EE46F998
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:50 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id dm8so4226035edb.2
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=aErZt+ruM3F1sUJo0I22pluDUMcdVJAfC2IT5c/+oe8=;
 b=RTOhBuSyEbvbPeRumNLuzAcjrIAXNcJDCHwYPK3qyN/KLbKiM6V4j/vjGFSHKzRmHF
 3xxHjEinh3PCLuKL3yLSJjBg0jfpqGavJyffTxS62dB0DF5PvVeog+rhLgbbhBxOfzD9
 dx6/3ydNw7XvxQdiqd09U3SakzX+UYjgHm1q3i1qlJxOirW4LgLvWl0nzwjeVrIXJhft
 iz3UjTzxlgqOskSLbUD/DfB47YGUj7MH5S1yURwp7tYunC3Nmu13A13Dgkivgc5b4vqV
 3anku8Us9dIV3eKTOoiS/1ZTZq6lrLIf9nHFO0qmTu4NZBWLkSQazdoaihNyyjfyP4yr
 z60A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aErZt+ruM3F1sUJo0I22pluDUMcdVJAfC2IT5c/+oe8=;
 b=grPZQNZb3d9MK/n86emtICcGBTrZKGCWFTFj0s5tv6OKKJeEws/CnWopUwYUiYSr0w
 ZwknlZOOW9wJ15KDYgQwNb+k8r5ZYrbSNIMQoPINFN2Pme+K0uaPEo5olhrG4XlK3/Ys
 i/5wRwL3HzIUsFoGFdGVOQIa71F7qzcovE582jQ7muDsjIK2Sd/ilnTIYYg/KljkhCTb
 YJWzcVXIRIeDTywpDlziEklUHV4NcMNXqa/hlLzu27qApdCs2fmHVmSgSm10r9SDbhYx
 oFbGHlaL3z/4gkpVZ33/3VQab3A22MF1riam/jxCWm+i8Kl5n2iOzymt7jNpibU/AIG2
 vdxA==
X-Gm-Message-State: AOAM533dYWoSfQfA9+2iGaTrai6rGpjxVJs2fRWc6F/wbTOIbY/sfOST
 xhneVaQyApyW4gcK6oE30B7rCYd8/vw=
X-Google-Smtp-Source: ABdhPJzis8REApSna5m5CFvW24P5IfXtvUu/k6v+c+xWCQQOYC4efuDdCTI89FlRXP/ZueASuYWq+Q==
X-Received: by 2002:aa7:db51:: with SMTP id n17mr46115365edt.259.1616019708907; 
 Wed, 17 Mar 2021 15:21:48 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:48 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 41/43] Staging: rtl8723bs: fix in odm_DynamicBBPowerSaving.h
Date: Wed, 17 Mar 2021 23:21:28 +0100
Message-Id: <20210317222130.29528-42-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210317222130.29528-1-marcocesati@gmail.com>
References: <20210317222130.29528-1-marcocesati@gmail.com>
MIME-Version: 1.0
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit converts names of structs / enums
in hal/odm_DynamicBBPowerSaving.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm.h                      | 2 +-
 drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.c | 4 ++--
 drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.h | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm.h b/drivers/staging/rtl8723bs/hal/odm.h
index e2dd8c34c569..ec6e32ec20de 100644
--- a/drivers/staging/rtl8723bs/hal/odm.h
+++ b/drivers/staging/rtl8723bs/hal/odm.h
@@ -1111,7 +1111,7 @@ struct dm_odm_t { /* DM_Out_Source_Dynamic_Mechanism_Structure */
 	/*  */
 	struct fat_t DM_FatTable;
 	struct dig_t DM_DigTable;
-	struct PS_T DM_PSTable;
+	struct ps_t DM_PSTable;
 	struct dynamic_primary_CCA DM_PriCCA;
 	struct rxhp_t dM_RXHP_Table;
 	struct ra_t DM_RA_Table;
diff --git a/drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.c b/drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.c
index d12f4841114c..57c5736527d2 100644
--- a/drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.c
+++ b/drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.c
@@ -10,7 +10,7 @@
 void odm_DynamicBBPowerSavingInit(void *pDM_VOID)
 {
 	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
-	struct PS_T *pDM_PSTable = &pDM_Odm->DM_PSTable;
+	struct ps_t *pDM_PSTable = &pDM_Odm->DM_PSTable;
 
 	pDM_PSTable->PreCCAState = CCA_MAX;
 	pDM_PSTable->CurCCAState = CCA_MAX;
@@ -23,7 +23,7 @@ void odm_DynamicBBPowerSavingInit(void *pDM_VOID)
 void ODM_RF_Saving(void *pDM_VOID, u8 bForceInNormal)
 {
 	struct dm_odm_t *pDM_Odm = (struct dm_odm_t *)pDM_VOID;
-	struct PS_T *pDM_PSTable = &pDM_Odm->DM_PSTable;
+	struct ps_t *pDM_PSTable = &pDM_Odm->DM_PSTable;
 	u8 Rssi_Up_bound = 30;
 	u8 Rssi_Low_bound = 25;
 
diff --git a/drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.h b/drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.h
index 90b9c7659084..3ebbbfd1dd1f 100644
--- a/drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.h
+++ b/drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.h
@@ -8,7 +8,7 @@
 #ifndef	__ODMDYNAMICBBPOWERSAVING_H__
 #define    __ODMDYNAMICBBPOWERSAVING_H__
 
-struct PS_T { /* _Dynamic_Power_Saving_ */
+struct ps_t { /* _Dynamic_Power_Saving_ */
 	u8 PreCCAState;
 	u8 CurCCAState;
 
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
