Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E66A3B0B2
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 10:23:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2C7AA86223;
	Mon, 10 Jun 2019 08:23:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w5oR4qz6GVme; Mon, 10 Jun 2019 08:23:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 914EC85CC7;
	Mon, 10 Jun 2019 08:23:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 211E21BF3CB
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 08:23:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1E8FD85472
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 08:23:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KYD2FPRTyHVL for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 08:23:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8FC388520A
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 08:23:21 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id 20so4637410pgr.4
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 01:23:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=p63uzMwFZHMyRgVY8GmjZFojfvOm3+Tu2s/6hju0BnI=;
 b=ZmnHS3OTVE1PqkXkJaKTRfimxCHtVbbKInrqDEQeNEQowoM/0DJN+Npplaiz0WZAE3
 E0t0UQ096oceE5x9koYRCg2mDR0uaz8ZdyobGP/ltFEGmcmRoRdx/WVg9Y18rZF1PzyN
 ee3MPo9enZIr0lRIcfrR3RJYPArz6RGebgn6RC2K//ITu06lu63tS/Aj91c5b0FsgYa+
 Ci4YzAtuN/aH+f3BBXFwskVnx3rebqJIutJ28sYuFEmvu82LXprBgYDMrAwjLcQLAVvD
 SNlexftn1r8Dzc9b2bTzbjJZrUN4u1k1SHwjt9bveJmaOVS6sfJznox7KIOmIqc3C7YS
 38VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=p63uzMwFZHMyRgVY8GmjZFojfvOm3+Tu2s/6hju0BnI=;
 b=t/vdd+MIYfDEAlhvlN56JXwaMUDjDAXdP7o2EYNJJyibBjjt7pGBqkf2srsOmVQ9DP
 tE+SJfJTvLWWSKqy4neZ7qmun8xepN92cAmrlJ+lFR24VMek3bgHepyHubLeWX6HWFjb
 IHJ1JaSXUqR1eGKxG1jvGebeyFMjzefdWLVw5p7rVJjPKa1zbosGdn3aLWib9YISOXbb
 IYdEI+ajfo2NxsFe5Vj+imkDq34Ruy6k5Xx2ylDFuiyDdnR9Uo93yKJU89F74M7jlbzh
 fHsY3sgfADq1TvOCgrwKePvq89o2wbOZk/7JI70wUo7BM1BFphfbPPjiHuizGaGWDZiQ
 HPeA==
X-Gm-Message-State: APjAAAVaWJNf10MI2BAfkBYzbsh94/ouQ0WwngHIG7dRXey4PKnxx+kf
 DGkYVvihDrIbnjJQa7nj0Fc=
X-Google-Smtp-Source: APXvYqz6jeR7OpUGvAI/8heUS89F0l8uB6tguNolnR2FNebLGjdWiOjnGRtwQMueIIdrczTE9O1Dsg==
X-Received: by 2002:aa7:8248:: with SMTP id e8mr33641224pfn.155.1560155001218; 
 Mon, 10 Jun 2019 01:23:21 -0700 (PDT)
Received: from localhost.localdomain ([171.79.92.225])
 by smtp.gmail.com with ESMTPSA id y7sm12868197pge.89.2019.06.10.01.23.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 01:23:20 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 florian.c.schilhabel@googlemail.com, larry.finger@lwfinger.net
Subject: [PATCH v2 1/2] staging: rtl8712: Change return values of
 r8712_setdatarate_cmd()
Date: Mon, 10 Jun 2019 13:52:53 +0530
Message-Id: <20190610082254.2343-1-nishkadg.linux@gmail.com>
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

Change the return values of function r8712_setdatarate_cmd from _SUCCESS
and _FAIL to 0 and -ENOMEM respectively.
Change the return type of the function from u8 to int to reflect this.
Change the call site of the function to check for 0 instead of _SUCCESS.
Return the value at the call site directly instead of storing it in a
return variable.
Remove now-unused return variable.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
Changes in v2:
- Change return method at call site.
- Remove variable at call site.
- Fix commit subject.

 drivers/staging/rtl8712/rtl871x_cmd.c         | 8 ++++----
 drivers/staging/rtl8712/rtl871x_cmd.h         | 2 +-
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 6 ++----
 3 files changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index 05a78ac24987..e478c031f95f 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -242,7 +242,7 @@ u8 r8712_sitesurvey_cmd(struct _adapter *padapter,
 	return _SUCCESS;
 }
 
-u8 r8712_setdatarate_cmd(struct _adapter *padapter, u8 *rateset)
+int r8712_setdatarate_cmd(struct _adapter *padapter, u8 *rateset)
 {
 	struct cmd_obj		*ph2c;
 	struct setdatarate_parm	*pbsetdataratepara;
@@ -250,18 +250,18 @@ u8 r8712_setdatarate_cmd(struct _adapter *padapter, u8 *rateset)
 
 	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
 	if (!ph2c)
-		return _FAIL;
+		return -ENOMEM;
 	pbsetdataratepara = kmalloc(sizeof(*pbsetdataratepara), GFP_ATOMIC);
 	if (!pbsetdataratepara) {
 		kfree(ph2c);
-		return _FAIL;
+		return -ENOMEM;
 	}
 	init_h2fwcmd_w_parm_no_rsp(ph2c, pbsetdataratepara,
 				   GEN_CMD_CODE(_SetDataRate));
 	pbsetdataratepara->mac_id = 5;
 	memcpy(pbsetdataratepara->datarates, rateset, NumRates);
 	r8712_enqueue_cmd(pcmdpriv, ph2c);
-	return _SUCCESS;
+	return 0;
 }
 
 u8 r8712_set_chplan_cmd(struct _adapter *padapter, int chplan)
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.h b/drivers/staging/rtl8712/rtl871x_cmd.h
index 262984c58efb..800216cca2f6 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.h
+++ b/drivers/staging/rtl8712/rtl871x_cmd.h
@@ -719,7 +719,7 @@ u8 r8712_joinbss_cmd(struct _adapter *padapter,
 u8 r8712_disassoc_cmd(struct _adapter *padapter);
 u8 r8712_setopmode_cmd(struct _adapter *padapter,
 		 enum NDIS_802_11_NETWORK_INFRASTRUCTURE networktype);
-u8 r8712_setdatarate_cmd(struct _adapter *padapter, u8 *rateset);
+int r8712_setdatarate_cmd(struct _adapter *padapter, u8 *rateset);
 u8 r8712_set_chplan_cmd(struct _adapter  *padapter, int chplan);
 u8 r8712_setbasicrate_cmd(struct _adapter *padapter, u8 *rateset);
 u8 r8712_getrfreg_cmd(struct _adapter *padapter, u8 offset, u8 *pval);
diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index b424b8436fcf..a224797cd993 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -1309,7 +1309,7 @@ static int r8711_wx_set_rate(struct net_device *dev,
 	u32 ratevalue = 0;
 	u8 datarates[NumRates];
 	u8 mpdatarate[NumRates] = {11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, 0xff};
-	int i, ret = 0;
+	int i;
 
 	if (target_rate == -1) {
 		ratevalue = 11;
@@ -1367,9 +1367,7 @@ static int r8711_wx_set_rate(struct net_device *dev,
 			datarates[i] = 0xff;
 		}
 	}
-	if (r8712_setdatarate_cmd(padapter, datarates) != _SUCCESS)
-		ret = -ENOMEM;
-	return ret;
+	return r8712_setdatarate_cmd(padapter, datarates);
 }
 
 static int r8711_wx_get_rate(struct net_device *dev,
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
