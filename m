Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B07B4E04E
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jun 2019 08:09:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A6824221BB;
	Fri, 21 Jun 2019 06:09:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rW620Q3pDYT5; Fri, 21 Jun 2019 06:09:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0357022122;
	Fri, 21 Jun 2019 06:09:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 74F0B1BF2C8
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 06:08:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 66F8D87ED0
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 06:08:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9l4JVEzi+Dgr for <devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 06:08:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0EC9887EBF
 for <devel@driverdev.osuosl.org>; Fri, 21 Jun 2019 06:08:54 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id bi6so2448609plb.12
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 23:08:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+IhpI5z3JcuLa+7qDoEYC2pvR074JisldLIR1LEHNb8=;
 b=etRxqHI8yGZsG1+IjjEWbjCX+7udkK69FCUx4hSGSzc6IosiSsOVuD0VJSMm4AVP1X
 OKF5zzB8AaElZyO/MElbCaZ8cgE5j0DYJA9s2S1mSJZIBL5uNOL1NstYO0dbKPWORj9+
 8U66nCtgp7Lf3EtNjbGCrV9E1Pz32bLNSJrmybux0Xo46u+n2gJkDl5OaHxVLRW4RMMu
 81xFBeaWeKFzolawh1TPSV64yBKZfVsWO9mqgJdjH29mjqaqfrLGVTsK8JSmkewYwTiL
 DT3yMNvPPv74dJqmVe4vie0SD5DFWP7nqWibu+w+k2EicxfrZMXoacHFOWaRZP82PC2n
 aPcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+IhpI5z3JcuLa+7qDoEYC2pvR074JisldLIR1LEHNb8=;
 b=kzNP9P1EGJlS3DgeY06vTEp3h9U4IWhSxv+RbLfIPRep6xSqBxRqSSl4DvhagucT5t
 ux7d2JfRZ1waHh0oUIGMg3NLNlT/LR0ot5YaN1b5bC2xSL9tRz3/yPbHKrU39+xZMH84
 11+HAaGnCs5umy0MokCJGcfiAaWYQcUiOVdrB1XGm57boWqCJ3+xk3dnY2qmGyEG651m
 v4qtvW+juWjNxwL6cr3ULZkExhTPUy/zQyEabYTnCEAena47i2vn+KQ1ykrK7gRdQJmA
 /pF4dO2p3eakRtCu3fXZNl8U3jl2G7L7qeOuEkAOIWWGaW2TRyv2oiXyukeoPSdp+MH8
 4VcA==
X-Gm-Message-State: APjAAAVQJXGL3uqmLRQ34b1hkSBkEgckOTvlAZVph8xrdORw0ju8pvcr
 x32f0kkKr0fEKFBeyznAF5c=
X-Google-Smtp-Source: APXvYqwYfMe5xbB0NP/yDhjJmpjrDtOz3mh/vvv+dWZ0b6BBDDsDdHsJVZgh5XISs7YzduYZrcaDZg==
X-Received: by 2002:a17:902:2865:: with SMTP id
 e92mr127475533plb.264.1561097333742; 
 Thu, 20 Jun 2019 23:08:53 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id j23sm1479203pgb.63.2019.06.20.23.08.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 23:08:53 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 08/10] staging: rtl8712: Remove function r8712_setfwra_cmd()
Date: Fri, 21 Jun 2019 11:38:14 +0530
Message-Id: <20190621060816.2030-8-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190621060816.2030-1-nishkadg.linux@gmail.com>
References: <20190621060816.2030-1-nishkadg.linux@gmail.com>
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

Remove unused function r8712_setfwra_cmd.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c | 20 --------------------
 drivers/staging/rtl8712/rtl871x_cmd.h |  1 -
 2 files changed, 21 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index 65f37cd0ebb7..ba30294f8813 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -279,26 +279,6 @@ void r8712_set_chplan_cmd(struct _adapter *padapter, int chplan)
 	r8712_enqueue_cmd(pcmdpriv, ph2c);
 }
 
-u8 r8712_setfwra_cmd(struct _adapter *padapter, u8 type)
-{
-	struct cmd_obj *ph2c;
-	struct writePTM_parm *pwriteptmparm;
-	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
-
-	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
-	if (!ph2c)
-		return _FAIL;
-	pwriteptmparm = kmalloc(sizeof(*pwriteptmparm), GFP_ATOMIC);
-	if (!pwriteptmparm) {
-		kfree(ph2c);
-		return _FAIL;
-	}
-	init_h2fwcmd_w_parm_no_rsp(ph2c, pwriteptmparm, GEN_CMD_CODE(_SetRA));
-	pwriteptmparm->type = type;
-	r8712_enqueue_cmd(pcmdpriv, ph2c);
-	return _SUCCESS;
-}
-
 u8 r8712_setrfreg_cmd(struct _adapter  *padapter, u8 offset, u32 val)
 {
 	struct cmd_obj *ph2c;
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.h b/drivers/staging/rtl8712/rtl871x_cmd.h
index 5a3ef023d38f..803727b499b7 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.h
+++ b/drivers/staging/rtl8712/rtl871x_cmd.h
@@ -726,7 +726,6 @@ u8 r8712_setrfintfs_cmd(struct _adapter *padapter, u8 mode);
 u8 r8712_setrfreg_cmd(struct _adapter  *padapter, u8 offset, u32 val);
 u8 r8712_setrttbl_cmd(struct _adapter  *padapter,
 		      struct setratable_parm *prate_table);
-u8 r8712_setfwra_cmd(struct _adapter *padapter, u8 type);
 void r8712_addbareq_cmd(struct _adapter *padapter, u8 tid);
 void r8712_wdg_wk_cmd(struct _adapter *padapter);
 void r8712_survey_cmd_callback(struct _adapter  *padapter,
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
