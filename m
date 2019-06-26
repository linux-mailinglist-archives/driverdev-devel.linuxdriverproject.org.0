Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E605621A
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 08:11:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8AC5285FAA;
	Wed, 26 Jun 2019 06:11:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3mSzQM5QWLeD; Wed, 26 Jun 2019 06:11:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2E6088600D;
	Wed, 26 Jun 2019 06:11:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E9EC61BF3CC
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:10:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E0AB8844C9
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:10:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VcJwwHJ0-Gpo for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 06:10:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A2F5A85F8C
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 06:09:57 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id v9so653604pgr.13
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 23:09:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+oR+fPGPAeoJ2wB4fhokSl/SVbI8c4woi+eW7CSnS8w=;
 b=NWBBlXjtHn/y75mt2YyaLKZQPDsZT1wV2nOBKT1ekjuu5TXny0lKBJF3frmT2jNRgB
 IgJhidmprNbhzEkIEDDk81U/W86MBVG8aOisEVIukaLlHz0oVSLMuWm+T1SSpsCX/Ydc
 VEM7EYlXyR0dKqvxKaap8e6FrdUeEPXajveddLhC+oW5EWkYVZXPnFs+rRJKFqBvHHKf
 kUPLkUP0iNMX9Wsu5ponEsT4GGWgDEBS1dDL8Bn7SdAZl5INFQpYt50GSsfcB/q8F1jA
 aQQZCXfqx8NjnopY806BV+yBuOkJdJAwiuOtdCHDNy15MPqpHiWT6CwMelY7YZdPLbFs
 Mq7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+oR+fPGPAeoJ2wB4fhokSl/SVbI8c4woi+eW7CSnS8w=;
 b=VBuZGaZo6eiSnCHolAiruO3Hg9FfoJjx0gOOk6+OOxzCETA5eBtJ1Jyaw0CK+oophz
 qdItHIHMS4+Gmgj/5Ld5lhCl+BbHvX6AXB7u1f0L/Xe3wp6Z8t3akjQXGsqsBbA5xDus
 liz6u5r9dlu6OB5aMGD5Y2Qdd/KBZZq1jCF7tX5ONqHLTdLWJHZG12WiBnZYRIfBuSqz
 tDYI1K+TZNiOdgNcAN/iuyK2vXbYvC8jQ5ROLEx7G5IzgJm1F24p2wuCnzAgBE+3xskY
 yrsWXizx4YvRruAWnOKm3HS0kGLp2j+vuBQaHxIHQ/rGxUzXn/toE6nmP7bmJwaUFOAW
 7x9Q==
X-Gm-Message-State: APjAAAWdcF+xOYIEvOSwWMTIm6g0zu45SBLvjMjqVUy4J6AHhjg0RIqA
 FYKZkdxQxFntUtknt//atgg=
X-Google-Smtp-Source: APXvYqyfVhZvFhsfJ5CSrvuUdFhTEyQ6CY5IkMBTfdV2i3RWpDghcGxJV9vlrAhQLJn/iyFv6FWY7Q==
X-Received: by 2002:a17:90a:950d:: with SMTP id
 t13mr2535618pjo.81.1561529397152; 
 Tue, 25 Jun 2019 23:09:57 -0700 (PDT)
Received: from localhost.localdomain ([110.227.94.173])
 by smtp.gmail.com with ESMTPSA id v13sm17613407pfe.105.2019.06.25.23.09.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 23:09:56 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, larry.finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, devel@driverdev.osuosl.org
Subject: [PATCH 1/9] staging: rtl8712: Change return values of
 r8712_getrfreg_cmd()
Date: Wed, 26 Jun 2019 11:39:33 +0530
Message-Id: <20190626060941.2441-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change return values of r8712_getrfreg_cmd from _SUCCESS/_FAIL to
0/-ENOMEM respectively. Modify call site accordingly.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c       | 8 ++++----
 drivers/staging/rtl8712/rtl871x_cmd.h       | 2 +-
 drivers/staging/rtl8712/rtl871x_ioctl_rtl.c | 2 +-
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index cfd09718777f..436b5ee619e7 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -280,7 +280,7 @@ int r8712_setrfreg_cmd(struct _adapter  *padapter, u8 offset, u32 val)
 	return 0;
 }
 
-u8 r8712_getrfreg_cmd(struct _adapter *padapter, u8 offset, u8 *pval)
+int r8712_getrfreg_cmd(struct _adapter *padapter, u8 offset, u8 *pval)
 {
 	struct cmd_obj *ph2c;
 	struct readRF_parm *prdrfparm;
@@ -288,11 +288,11 @@ u8 r8712_getrfreg_cmd(struct _adapter *padapter, u8 offset, u8 *pval)
 
 	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
 	if (!ph2c)
-		return _FAIL;
+		return -ENOMEM;
 	prdrfparm = kmalloc(sizeof(*prdrfparm), GFP_ATOMIC);
 	if (!prdrfparm) {
 		kfree(ph2c);
-		return _FAIL;
+		return -ENOMEM;
 	}
 	INIT_LIST_HEAD(&ph2c->list);
 	ph2c->cmdcode = GEN_CMD_CODE(_GetRFReg);
@@ -302,7 +302,7 @@ u8 r8712_getrfreg_cmd(struct _adapter *padapter, u8 offset, u8 *pval)
 	ph2c->rspsz = sizeof(struct readRF_rsp);
 	prdrfparm->offset = offset;
 	r8712_enqueue_cmd(pcmdpriv, ph2c);
-	return _SUCCESS;
+	return 0;
 }
 
 void r8712_getbbrfreg_cmdrsp_callback(struct _adapter *padapter,
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.h b/drivers/staging/rtl8712/rtl871x_cmd.h
index 6b004ce330d5..98d7fbfce1a5 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.h
+++ b/drivers/staging/rtl8712/rtl871x_cmd.h
@@ -720,7 +720,7 @@ void r8712_setopmode_cmd(struct _adapter *padapter,
 		 enum NDIS_802_11_NETWORK_INFRASTRUCTURE networktype);
 int r8712_setdatarate_cmd(struct _adapter *padapter, u8 *rateset);
 void r8712_set_chplan_cmd(struct _adapter  *padapter, int chplan);
-u8 r8712_getrfreg_cmd(struct _adapter *padapter, u8 offset, u8 *pval);
+int r8712_getrfreg_cmd(struct _adapter *padapter, u8 offset, u8 *pval);
 int r8712_setrfreg_cmd(struct _adapter  *padapter, u8 offset, u32 val);
 void r8712_addbareq_cmd(struct _adapter *padapter, u8 tid);
 void r8712_wdg_wk_cmd(struct _adapter *padapter);
diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_rtl.c b/drivers/staging/rtl8712/rtl871x_ioctl_rtl.c
index 861bbafac867..b78101afc93d 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_rtl.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_rtl.c
@@ -467,7 +467,7 @@ uint oid_rt_pro_rf_read_registry_hdl(struct oid_par_priv *poid_par_priv)
 		 * RegDataWidth = *((unsigned long *)InformationBuffer+1);
 		 * RegDataValue =  *((unsigned long *)InformationBuffer+2);
 		 */
-			if (!r8712_getrfreg_cmd(Adapter,
+			if (r8712_getrfreg_cmd(Adapter,
 			    *(unsigned char *)poid_par_priv->information_buf,
 			    (unsigned char *)&Adapter->mppriv.workparam.io_value
 			    ))
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
