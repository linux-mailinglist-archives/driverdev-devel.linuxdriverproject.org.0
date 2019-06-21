Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7BF4E048
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jun 2019 08:08:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7A28387F34;
	Fri, 21 Jun 2019 06:08:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VflseSWpcaxy; Fri, 21 Jun 2019 06:08:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 89ED587ED1;
	Fri, 21 Jun 2019 06:08:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D553F1BF2C8
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 06:08:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CDC1B86151
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 06:08:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bK5IQjm5Ukc4 for <devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 06:08:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 89F2386148
 for <devel@driverdev.osuosl.org>; Fri, 21 Jun 2019 06:08:37 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id b7so2465505pls.6
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 23:08:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=z/5Hq2C+qJ8Iy2G1z0rl7YBrU6gZQuvrY8fl3v7k9XE=;
 b=fg49JHIsJG8PmI5wjnXO2+UR5zn5vZZeY2pPrSGGy8rwvGvD/TPsAYm9829ibIM2aW
 wSeRP2U8DjMMVeD6vkcVyivcvyA68wak0zb3zHM2w9HyilS946bYOZPpa542lewhXtPq
 IjXffLTLaEEIAvf5ubyVEUOxdOg1oFoZGjIjxQHp8eqyFAil0p9QvOtruxsRFEOZWy+f
 0sT6xwo6iSDoY6/l1743ZZfU3shZxDMVI2xoK+zNH7qckurn/rRLWSFqdHTLx8xXLdSi
 dp6ZpQr7kib1ufTw7jiZbzLKKfoFA1C5tBn5+N9sJNADL8SEmrM+oqXyQhBj1hrzJUv5
 05gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=z/5Hq2C+qJ8Iy2G1z0rl7YBrU6gZQuvrY8fl3v7k9XE=;
 b=ud/61zHMipbZILS8UvcCpBOE/YCgLwZveUB1SgqZx2AqlkaBZJVbwyzDwwO/ckXX+l
 aTMaHJwMkDmbZrIEh/6N2qmy6LEla5Sbj5+YL5lMDGsuGGGJv3F0lalmEk6SJc8ObeAS
 Qc/u2IFbGf9cUpUmARbq+oOVC8ZUmoG8uSwg0maeZXZS1RBXbVfJV+Df624LssA1Bzzv
 ntVEKJXGII7R+oJB5T4oUMnn55SjeRmdhaNnPYAC3pWRU9Ng5eD4/Ygcw+BgHXoTDTBt
 /TjVsajLS3gi3kRrhGpWfKbUKwm+L1tITinrt6xZsThrFtlktGsM96mG5jg5nGu7Va6K
 dxVQ==
X-Gm-Message-State: APjAAAWPPrH7GoWSONc6Ml/L4fPyZtsMBVef2ZSr8LRVYoLZ3cguIymj
 gOyoQVEmP4KrmLmzgthmTYM=
X-Google-Smtp-Source: APXvYqxB7wsZfX6SN7MsECuyJ7V4xYgPxZ0WGpGuWVIKs6dYPUcnRQVITuPTVeLascPxSbg87Wt3Bw==
X-Received: by 2002:a17:902:2868:: with SMTP id
 e95mr13687110plb.319.1561097317257; 
 Thu, 20 Jun 2019 23:08:37 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id j23sm1479203pgb.63.2019.06.20.23.08.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 23:08:36 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 02/10] staging: rtl8712: r8712_disconnectCtrlEx_cmd(): Change
 return type
Date: Fri, 21 Jun 2019 11:38:08 +0530
Message-Id: <20190621060816.2030-2-nishkadg.linux@gmail.com>
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

Change return type of function r8712_disconnectCtrlEx_cmd from u8 to
void as its return value is never stored, checked or otherwise used.
Modify its return statements accordingly.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c | 7 +++----
 drivers/staging/rtl8712/rtl871x_cmd.h | 2 +-
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index 8d110cc23b9a..516047a074d6 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -935,7 +935,7 @@ void r8712_setassocsta_cmdrsp_callback(struct _adapter *padapter,
 	r8712_free_cmd_obj(pcmd);
 }
 
-u8 r8712_disconnectCtrlEx_cmd(struct _adapter *adapter, u32 enableDrvCtrl,
+void r8712_disconnectCtrlEx_cmd(struct _adapter *adapter, u32 enableDrvCtrl,
 			u32 tryPktCnt, u32 tryPktInterval, u32 firstStageTO)
 {
 	struct cmd_obj *ph2c;
@@ -944,11 +944,11 @@ u8 r8712_disconnectCtrlEx_cmd(struct _adapter *adapter, u32 enableDrvCtrl,
 
 	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
 	if (!ph2c)
-		return _FAIL;
+		return;
 	param = kzalloc(sizeof(*param), GFP_ATOMIC);
 	if (!param) {
 		kfree(ph2c);
-		return _FAIL;
+		return;
 	}
 
 	param->EnableDrvCtrl = (unsigned char)enableDrvCtrl;
@@ -959,5 +959,4 @@ u8 r8712_disconnectCtrlEx_cmd(struct _adapter *adapter, u32 enableDrvCtrl,
 	init_h2fwcmd_w_parm_no_rsp(ph2c, param,
 				GEN_CMD_CODE(_DisconnectCtrlEx));
 	r8712_enqueue_cmd(pcmdpriv, ph2c);
-	return _SUCCESS;
 }
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.h b/drivers/staging/rtl8712/rtl871x_cmd.h
index 8448dd05fa4c..2aa50e6f1297 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.h
+++ b/drivers/staging/rtl8712/rtl871x_cmd.h
@@ -747,7 +747,7 @@ void r8712_setstaKey_cmdrsp_callback(struct _adapter  *padapter,
 				     struct cmd_obj *pcmd);
 void r8712_setassocsta_cmdrsp_callback(struct _adapter  *padapter,
 				       struct cmd_obj *pcmd);
-u8 r8712_disconnectCtrlEx_cmd(struct _adapter *adapter, u32 enableDrvCtrl,
+void r8712_disconnectCtrlEx_cmd(struct _adapter *adapter, u32 enableDrvCtrl,
 			u32 tryPktCnt, u32 tryPktInterval, u32 firstStageTO);
 
 struct _cmd_callback {
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
