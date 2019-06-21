Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B9E4E04C
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jun 2019 08:09:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E040C2010E;
	Fri, 21 Jun 2019 06:09:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i8tZE+RvhgvB; Fri, 21 Jun 2019 06:09:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 41DC52049D;
	Fri, 21 Jun 2019 06:09:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2C7681BF2C8
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 06:08:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 21680204A1
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 06:08:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y3P4AAgI3h2p for <devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 06:08:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 701CD20032
 for <devel@driverdev.osuosl.org>; Fri, 21 Jun 2019 06:08:50 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id f25so2815656pgv.10
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 23:08:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gvss287xKmrDSdtNuAvdENeqTeNQSx4Kp+UWVDaXkv4=;
 b=UonRBDmkj2kjIrzWOnKGIxfxxc/VhjB09kEKXhTN1Nf2loaGS2tf2KbY22r/vyFEET
 lW986Jv4z+biyN6jZF8wsv33AcB/2Od/oOiN2ssr8hBHcvE+05+JFXd0/EB2WfP9+KFs
 Tglilx+V2qZeXcrQazCzZGgKhwux/7k7LOz2QlsoByylrI3m7iiOlHeX0ZpULK+x5R01
 gQuYwmIsx0H8yVlHyFr3SnlBpfrAt01tnYlnYqcyr09cnDLWMfEoqdRNgBgH7zgU1U/Q
 hCXpDfRZsx3Asgh4EZF4C6cIobvU3TDC6w1ITHajgehxOsMqzZhkfcTfi9upmejqpqoc
 hbvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gvss287xKmrDSdtNuAvdENeqTeNQSx4Kp+UWVDaXkv4=;
 b=eKRzQxwSFqnAQrqJs7YZeI33ju6yKSRURGHUWJiOZrlmYl4hIoSZDLD9BjNUQg8eAn
 bJTJ1KBhHJzfxH/XnFs0IVF+AOT9bd1TUQt5AD7g0Qfd472KHOI7Ejloel+Ky3hdz38G
 i7UK45aAsa6faSTUWnJaaJ+txYlNiDpKAG9xf4j8kMvpUPDlkfJPOkvlCQ1nyx43R4uu
 p1FbLIh/5tozGYMUxteOHnJOFj0cyAS4sKyFfVCKyw9pFmXvfwYykiKqDoAO1VeZR22c
 gRd8kh+yOZI/9tmVYoZg380oSs/xzrjdx0aAgU/cIbGhxaY1i/EI0C5sQ6OFGaJsFfPi
 XX4w==
X-Gm-Message-State: APjAAAWjO3zaeQYEgAJUphSEvjcZ+9XdyH+a4obXyPPA7Ryqb/MxLEwV
 UuYryTsZVo6pu5Rtg1hm73E=
X-Google-Smtp-Source: APXvYqzYWsGnDpaTysSR1Br6IEL85jJdlaQ7W6ciel5WN4dDr0DSINfl/dp3vbAbo/jeBPjsqwUxbg==
X-Received: by 2002:a17:90a:e38f:: with SMTP id
 b15mr4343215pjz.85.1561097330181; 
 Thu, 20 Jun 2019 23:08:50 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id j23sm1479203pgb.63.2019.06.20.23.08.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 23:08:49 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 07/10] staging: rtl8712: Remove function r8712_setfwdig_cmd()
Date: Fri, 21 Jun 2019 11:38:13 +0530
Message-Id: <20190621060816.2030-7-nishkadg.linux@gmail.com>
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

Remove unused function r8712_setfwdig_cmd().

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c | 20 --------------------
 drivers/staging/rtl8712/rtl871x_cmd.h |  1 -
 2 files changed, 21 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index f3ecd4332dca..65f37cd0ebb7 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -279,26 +279,6 @@ void r8712_set_chplan_cmd(struct _adapter *padapter, int chplan)
 	r8712_enqueue_cmd(pcmdpriv, ph2c);
 }
 
-u8 r8712_setfwdig_cmd(struct _adapter *padapter, u8 type)
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
-	init_h2fwcmd_w_parm_no_rsp(ph2c, pwriteptmparm, GEN_CMD_CODE(_SetDIG));
-	pwriteptmparm->type = type;
-	r8712_enqueue_cmd(pcmdpriv, ph2c);
-	return _SUCCESS;
-}
-
 u8 r8712_setfwra_cmd(struct _adapter *padapter, u8 type)
 {
 	struct cmd_obj *ph2c;
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.h b/drivers/staging/rtl8712/rtl871x_cmd.h
index d029097f3684..5a3ef023d38f 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.h
+++ b/drivers/staging/rtl8712/rtl871x_cmd.h
@@ -726,7 +726,6 @@ u8 r8712_setrfintfs_cmd(struct _adapter *padapter, u8 mode);
 u8 r8712_setrfreg_cmd(struct _adapter  *padapter, u8 offset, u32 val);
 u8 r8712_setrttbl_cmd(struct _adapter  *padapter,
 		      struct setratable_parm *prate_table);
-u8 r8712_setfwdig_cmd(struct _adapter *padapter, u8 type);
 u8 r8712_setfwra_cmd(struct _adapter *padapter, u8 type);
 void r8712_addbareq_cmd(struct _adapter *padapter, u8 tid);
 void r8712_wdg_wk_cmd(struct _adapter *padapter);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
