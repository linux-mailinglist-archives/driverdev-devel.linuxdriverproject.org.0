Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 312114E04F
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jun 2019 08:09:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DB55422122;
	Fri, 21 Jun 2019 06:09:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4Cxj9laZTwwA; Fri, 21 Jun 2019 06:09:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2D32A20032;
	Fri, 21 Jun 2019 06:09:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3B4E21BF2C8
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 06:08:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 33041811DB
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 06:08:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7kUgv9wSgIhJ for <devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 06:08:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7F5148113F
 for <devel@driverdev.osuosl.org>; Fri, 21 Jun 2019 06:08:56 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id k35so1187436pgm.12
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 23:08:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6VrYU+kpGupWac5RQxuQR01LNGiBubj1EZdGX/uij+o=;
 b=C1ImQZ0wmAonSX+7qd1IHfmViFNBXakuszPtRadDOJM5a6XFn0PqZNkHFvWsrVV5pk
 TIv2ec1B2EFtEmQ0zgmiXkqBClYpsn2JXimBWfGlIHv8esJFWBeovm0uQvTtVy7InDAL
 ZISBZ+IR5Qrpb1DThXsUM6I1LtyHIs5j+vZcTUzmAWI0PrShVQFnyXXj6Biwc9HVfPNH
 Y6nkvZaFfpVHv3Hh6DMLWsK51oy6k5H+BIjROC8hrFyENyDBx5nZ+JUFALuBwxH4UAUk
 NPKLGQMw7+8GoV4g5bZk2sAY8+8N0MDLaRkMky5fQ3Q8CvUsWPzDrsXLLuDDY6wJZW9/
 aQEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6VrYU+kpGupWac5RQxuQR01LNGiBubj1EZdGX/uij+o=;
 b=Aw+wsAHqvpSfe1+29VCQCBYyk5sScejIpkoij1f8+znt0YMKfBOpM4PP5ZC/hIPAvy
 YrM5dl5+C0tv7sFG1zPOIiZQKm/cLOgvS/beoGPIWHJsNS38VCsqe0SPpPucaWgvoX5X
 wx4ODAY1CoNq4MWl/4G51Sp2rm98ZC0ZXqObfGmyS/Ns9/WddZoP2Rm6t+c0zXuGaSvJ
 oaazYEslGRjheDxj6EVcdaORrUOK/70DaL3VPun8pgs2xfhY5A8LR3eIo+UjpDDoFw6c
 qRYCyx1aznql4vz9QSb13B8HXvRxj5IeJJ/ytbNDN9InGjnDHxuYRCRP82NpcxX1Hw41
 xvdw==
X-Gm-Message-State: APjAAAVqhUQjGE/omp/zVJfcKyohx8WiS52ELiTAnGNXia5/eEtLkrgV
 qDzD2+iGp3CXwf5VMbRbRx0=
X-Google-Smtp-Source: APXvYqwbVnJq2Xzyy+pV6FqqISorIGb4l9eiEYS1Y/LjHLoylkYQ4sw9r0PKPShJNBbDgvki+IxNZg==
X-Received: by 2002:a17:90a:8a0b:: with SMTP id
 w11mr4222235pjn.125.1561097336168; 
 Thu, 20 Jun 2019 23:08:56 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id j23sm1479203pgb.63.2019.06.20.23.08.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 23:08:55 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 09/10] staging: rtl8712: Remove function r8712_setrfintfs_cmd()
Date: Fri, 21 Jun 2019 11:38:15 +0530
Message-Id: <20190621060816.2030-9-nishkadg.linux@gmail.com>
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

Remove unused function r8712_setrfintfs_cmd.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c | 21 ---------------------
 drivers/staging/rtl8712/rtl871x_cmd.h |  1 -
 2 files changed, 22 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index ba30294f8813..752418692be0 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -585,27 +585,6 @@ void r8712_setstakey_cmd(struct _adapter *padapter, u8 *psta, u8 unicast_key)
 	r8712_enqueue_cmd(pcmdpriv, ph2c);
 }
 
-u8 r8712_setrfintfs_cmd(struct _adapter *padapter, u8 mode)
-{
-	struct cmd_obj *ph2c;
-	struct setrfintfs_parm *psetrfintfsparm;
-	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
-
-	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
-	if (!ph2c)
-		return _FAIL;
-	psetrfintfsparm = kmalloc(sizeof(*psetrfintfsparm), GFP_ATOMIC);
-	if (!psetrfintfsparm) {
-		kfree(ph2c);
-		return _FAIL;
-	}
-	init_h2fwcmd_w_parm_no_rsp(ph2c, psetrfintfsparm,
-				   GEN_CMD_CODE(_SetRFIntFs));
-	psetrfintfsparm->rfintfs = mode;
-	r8712_enqueue_cmd(pcmdpriv, ph2c);
-	return _SUCCESS;
-}
-
 u8 r8712_setrttbl_cmd(struct _adapter *padapter,
 		      struct setratable_parm *prate_table)
 {
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.h b/drivers/staging/rtl8712/rtl871x_cmd.h
index 803727b499b7..efca88b4ea99 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.h
+++ b/drivers/staging/rtl8712/rtl871x_cmd.h
@@ -722,7 +722,6 @@ void r8712_setopmode_cmd(struct _adapter *padapter,
 int r8712_setdatarate_cmd(struct _adapter *padapter, u8 *rateset);
 void r8712_set_chplan_cmd(struct _adapter  *padapter, int chplan);
 u8 r8712_getrfreg_cmd(struct _adapter *padapter, u8 offset, u8 *pval);
-u8 r8712_setrfintfs_cmd(struct _adapter *padapter, u8 mode);
 u8 r8712_setrfreg_cmd(struct _adapter  *padapter, u8 offset, u32 val);
 u8 r8712_setrttbl_cmd(struct _adapter  *padapter,
 		      struct setratable_parm *prate_table);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
