Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B53164E04B
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jun 2019 08:09:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 558F187F38;
	Fri, 21 Jun 2019 06:09:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DuZmn-Ueydln; Fri, 21 Jun 2019 06:09:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EC2BF87EBF;
	Fri, 21 Jun 2019 06:08:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A9E9F1BF2C8
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 06:08:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 96E8686151
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 06:08:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Oerf54lbLJCC for <devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 06:08:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 191A886148
 for <devel@driverdev.osuosl.org>; Fri, 21 Jun 2019 06:08:48 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id t16so3001620pfe.11
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 23:08:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=blOnpu6rV8DWmc99AQwo9MNPX/VoU6PorGHWe5njsPk=;
 b=W2TDBSTBYfVZHtniOgOHXFiGdwRoE0vk9aEPW5z2ly4FG3GPIju3hg0MffUmag4okL
 Ch1WWkBtVh3iZF4WelkPZpflonBMpaZYTpqCB5LE/b+n5a4g56rt7nYdFaCL/uxSUVt9
 EYtCa26UBUc1kKzmiLDucwCTITg/+TWCaRue38SNXn0sjrU/WaGNsh3FWqL2jEAlAZTb
 l3EaczAKCbMF/5cyg/1ntkMtF1VYenUFLy1rBLKwewBuVRKhsQIpbdfImGZCQYrcuQNh
 3joxJDFMqntnXKAu/KRNF3jOVuvEA/a87hJBRtuU+PEMUaE756NmH8QaYeUDXUDs4MRW
 NgdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=blOnpu6rV8DWmc99AQwo9MNPX/VoU6PorGHWe5njsPk=;
 b=fAZY8yPJObjMj1esVuhMYrO4s+lrOmMQ2k02HuIo1sV6BjKgbbv+bZIUzv5iurfCz3
 ZS8sWX0KprRK11v8pdEZCP9lW9f/UP5jAoEuczAmOUe8gipHwq+dciH5Ps6CQk7LUysw
 BzEsdTACm7ab2awskzdPKJYwji9Ts4wmmnGRnSiqVpPvlZK7cAihlqx/hswXGXegdefM
 Y34Ptd5LPgpQw1PK93PtP9DtULdJE5hme7dX62aS3VfRLdWUBlWEQeAr8DKnMzwmBDLt
 2ULy4uGP/dbpAbVcPjENeW9/0ZiwaYXH0kUcl2En8Z1jNbenerdcbA75opZ2YoFbdSwP
 P9yg==
X-Gm-Message-State: APjAAAVxZ7IYdZRI1kZo/k8+h5q+aiSLJSg8DoOzEt+4wvqH/+0he0rV
 Bgueuic4fSKQqmJT7u9Y4apaqZ/i
X-Google-Smtp-Source: APXvYqwN3tqgc7VfTNOkndMoX1f7Kjk89WlmCTDg2NcB/CqM+aKwZG68WBfZlNQksAeU6eI/5JbH3A==
X-Received: by 2002:a17:90a:2743:: with SMTP id
 o61mr4283636pje.59.1561097327740; 
 Thu, 20 Jun 2019 23:08:47 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id j23sm1479203pgb.63.2019.06.20.23.08.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 23:08:47 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 06/10] staging: rtl8712: Remove function r8712_setbasicrate_cmd
Date: Fri, 21 Jun 2019 11:38:12 +0530
Message-Id: <20190621060816.2030-6-nishkadg.linux@gmail.com>
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

Remove unused function r8712_setbasicrate_cmd.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c | 21 ---------------------
 drivers/staging/rtl8712/rtl871x_cmd.h |  1 -
 2 files changed, 22 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index 66c2f4750497..f3ecd4332dca 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -279,27 +279,6 @@ void r8712_set_chplan_cmd(struct _adapter *padapter, int chplan)
 	r8712_enqueue_cmd(pcmdpriv, ph2c);
 }
 
-u8 r8712_setbasicrate_cmd(struct _adapter *padapter, u8 *rateset)
-{
-	struct cmd_obj *ph2c;
-	struct setbasicrate_parm *pssetbasicratepara;
-	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
-
-	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
-	if (!ph2c)
-		return _FAIL;
-	pssetbasicratepara = kmalloc(sizeof(*pssetbasicratepara), GFP_ATOMIC);
-	if (!pssetbasicratepara) {
-		kfree(ph2c);
-		return _FAIL;
-	}
-	init_h2fwcmd_w_parm_no_rsp(ph2c, pssetbasicratepara,
-		_SetBasicRate_CMD_);
-	memcpy(pssetbasicratepara->basicrates, rateset, NumRates);
-	r8712_enqueue_cmd(pcmdpriv, ph2c);
-	return _SUCCESS;
-}
-
 u8 r8712_setfwdig_cmd(struct _adapter *padapter, u8 type)
 {
 	struct cmd_obj *ph2c;
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.h b/drivers/staging/rtl8712/rtl871x_cmd.h
index 0817d126254f..d029097f3684 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.h
+++ b/drivers/staging/rtl8712/rtl871x_cmd.h
@@ -721,7 +721,6 @@ void r8712_setopmode_cmd(struct _adapter *padapter,
 		 enum NDIS_802_11_NETWORK_INFRASTRUCTURE networktype);
 int r8712_setdatarate_cmd(struct _adapter *padapter, u8 *rateset);
 void r8712_set_chplan_cmd(struct _adapter  *padapter, int chplan);
-u8 r8712_setbasicrate_cmd(struct _adapter *padapter, u8 *rateset);
 u8 r8712_getrfreg_cmd(struct _adapter *padapter, u8 offset, u8 *pval);
 u8 r8712_setrfintfs_cmd(struct _adapter *padapter, u8 mode);
 u8 r8712_setrfreg_cmd(struct _adapter  *padapter, u8 offset, u32 val);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
