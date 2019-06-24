Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9423250180
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jun 2019 07:49:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 487AB844E7;
	Mon, 24 Jun 2019 05:49:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jl89eBPlvC4x; Mon, 24 Jun 2019 05:49:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BF591840B9;
	Mon, 24 Jun 2019 05:49:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9D5E91BF470
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 05:49:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9903A87032
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 05:49:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UlH6t951phuo for <devel@linuxdriverproject.org>;
 Mon, 24 Jun 2019 05:49:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BE806870F6
 for <devel@driverdev.osuosl.org>; Mon, 24 Jun 2019 05:49:41 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id c14so6242010plo.0
 for <devel@driverdev.osuosl.org>; Sun, 23 Jun 2019 22:49:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hfFfRVuqOxk/vre0x30snyfQVB3VGFzX8iL+AsusSn8=;
 b=JI0nsnNhOdZM55DoFRA8IktHRJlLFZxnhG5jKeZ92N10ab1/hektV+QlCp8pJW2IOv
 FxMWDlcyg8g1Bv0YsD45rlZDweMM8K2KuXtZGmCT7doTC56YUomGMsTOHpOkw8thVrMs
 NUV62lKrAfmeL3IflpkAjb1iwntc93BFCI5l1w+5HVHdW9WtrXWWFmi2CVxDJfzMtQto
 QIDVcAZTpf4ljKZFcn5wVaroK+hPLMThISjun6QuKedz2QDISXj6sDyA5Yvw/SnK9v1j
 r/ta8FMZCR8J2Feqi/ogFlqORKGJc+YeQiJkoEtGb4pWFv16Xs9rHkIcz5WGjlpNZuos
 lgpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hfFfRVuqOxk/vre0x30snyfQVB3VGFzX8iL+AsusSn8=;
 b=QRIRFSVbICOd8N4d5bVmuzR5VAt+U9OFtPf/MBSIw1eSsehzdE6sQfHdXCGBX63lBz
 /M2QVwS6NGUWys8V7kSQYmfAuk0NJvBM7z8R/JMiUrzrLI876RESuxw4A/sn1iFHRCMz
 fR/7A/xXe03vSyxnel/r0p51go78xcPFpPm1wzSmmIWFFlv320ivAxuskGUgXqRiPSzh
 g/EwjkTGEm81zlaTEj1GGb3Y3fNGWuxKu2nRyJhLfqesFgD7YFyKqeDxP2h3YuoOh/NM
 IjPgKrMfiMA78Lm3JKMiO2CEY68B81ZTvZqBhLc+xHGO2zn+QpBX3rec0ea1LY5IQXcw
 i2QA==
X-Gm-Message-State: APjAAAVI3O/H06xQJCRpPBXyg7O4TzGPMZnMMuBz1QWsWc0sLQ+GZ1n0
 bAt9NGZdj0Oz0VeAGs4emnc=
X-Google-Smtp-Source: APXvYqx2XH2ypIYDnAmXW4e5SrOA4ov5wje2x1ksRZCvDmfb7z1gQtPRktgMDxx8aOqxsb2Ewy4BnA==
X-Received: by 2002:a17:902:8f87:: with SMTP id
 z7mr117891650plo.65.1561355381399; 
 Sun, 23 Jun 2019 22:49:41 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id s43sm11908182pjb.10.2019.06.23.22.49.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 23 Jun 2019 22:49:41 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com
Subject: [PATCH 10/10] staging: rtl8712: Change return values of
 r8712_setrfreg_cmd()
Date: Mon, 24 Jun 2019 11:19:03 +0530
Message-Id: <20190624054903.2673-10-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190624054903.2673-1-nishkadg.linux@gmail.com>
References: <20190624054903.2673-1-nishkadg.linux@gmail.com>
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

Change return values of function r8712_setrfreg_cmd from _SUCCESS/_FAIL
to 0/-ENOMEM respectively. Modify call site accordingly.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c       | 8 ++++----
 drivers/staging/rtl8712/rtl871x_cmd.h       | 2 +-
 drivers/staging/rtl8712/rtl871x_ioctl_rtl.c | 2 +-
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index 8af1574e7753..cfd09718777f 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -259,7 +259,7 @@ void r8712_set_chplan_cmd(struct _adapter *padapter, int chplan)
 	r8712_enqueue_cmd(pcmdpriv, ph2c);
 }
 
-u8 r8712_setrfreg_cmd(struct _adapter  *padapter, u8 offset, u32 val)
+int r8712_setrfreg_cmd(struct _adapter  *padapter, u8 offset, u32 val)
 {
 	struct cmd_obj *ph2c;
 	struct writeRF_parm *pwriterfparm;
@@ -267,17 +267,17 @@ u8 r8712_setrfreg_cmd(struct _adapter  *padapter, u8 offset, u32 val)
 
 	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
 	if (!ph2c)
-		return _FAIL;
+		return -ENOMEM;
 	pwriterfparm = kmalloc(sizeof(*pwriterfparm), GFP_ATOMIC);
 	if (!pwriterfparm) {
 		kfree(ph2c);
-		return _FAIL;
+		return -ENOMEM;
 	}
 	init_h2fwcmd_w_parm_no_rsp(ph2c, pwriterfparm, GEN_CMD_CODE(_SetRFReg));
 	pwriterfparm->offset = offset;
 	pwriterfparm->value = val;
 	r8712_enqueue_cmd(pcmdpriv, ph2c);
-	return _SUCCESS;
+	return 0;
 }
 
 u8 r8712_getrfreg_cmd(struct _adapter *padapter, u8 offset, u8 *pval)
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.h b/drivers/staging/rtl8712/rtl871x_cmd.h
index b582f2cbe0ef..6b004ce330d5 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.h
+++ b/drivers/staging/rtl8712/rtl871x_cmd.h
@@ -721,7 +721,7 @@ void r8712_setopmode_cmd(struct _adapter *padapter,
 int r8712_setdatarate_cmd(struct _adapter *padapter, u8 *rateset);
 void r8712_set_chplan_cmd(struct _adapter  *padapter, int chplan);
 u8 r8712_getrfreg_cmd(struct _adapter *padapter, u8 offset, u8 *pval);
-u8 r8712_setrfreg_cmd(struct _adapter  *padapter, u8 offset, u32 val);
+int r8712_setrfreg_cmd(struct _adapter  *padapter, u8 offset, u32 val);
 void r8712_addbareq_cmd(struct _adapter *padapter, u8 tid);
 void r8712_wdg_wk_cmd(struct _adapter *padapter);
 void r8712_survey_cmd_callback(struct _adapter  *padapter,
diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_rtl.c b/drivers/staging/rtl8712/rtl871x_ioctl_rtl.c
index 2dc20da21679..861bbafac867 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_rtl.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_rtl.c
@@ -429,7 +429,7 @@ uint oid_rt_pro_rf_write_registry_hdl(struct oid_par_priv*
 		return RNDIS_STATUS_NOT_ACCEPTED;
 	if (poid_par_priv->information_buf_len ==
 	   (sizeof(unsigned long) * 3)) {
-		if (!r8712_setrfreg_cmd(Adapter,
+		if (r8712_setrfreg_cmd(Adapter,
 			*(unsigned char *)poid_par_priv->information_buf,
 			(unsigned long)(*((unsigned long *)
 					poid_par_priv->information_buf + 2))))
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
