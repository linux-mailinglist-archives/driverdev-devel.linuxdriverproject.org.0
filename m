Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 116D5588DC
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 19:42:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5F22E88045;
	Thu, 27 Jun 2019 17:42:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id km0zQIUEDKRY; Thu, 27 Jun 2019 17:42:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id ECD4B87FFF;
	Thu, 27 Jun 2019 17:42:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1A8301BF3F9
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 17:42:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 129CE85DDC
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 17:42:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fM4Sx5k91bBM for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 17:42:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8EEBA85B0A
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 17:42:06 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id 196so1344317pgc.6
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 10:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=gOS8Fn0ZCLcglF4xKeQZbhL/pfJXLmBVW/p/GaFW4vw=;
 b=uPdAlVeEkWRPvyXaQHMcoUf1KiMZ8y3IchjzB4LpXvjA3PWopLM23mdCfvh8e6aT8f
 moz685kVPURyD0QfGpQ15iLkhiJVnB6FTnopZaE9GQw1qfcX28961BFzoad6LmgcjMAK
 iNPi65WQF2y1Dt8++ZIA3pavZhIs+52lbBKhOO6mnWezHhch/UrA36rmJJf3w2Sox7iG
 FH5c/7rND1ZKv138gH03CluA5COl027kU9NwXSFzNau196IytFwuou1PeTSQWgB9vt90
 jOupeT3ZMB/on6U8wr/LakCfP8gqj0haMByxgc/rBKy5VLN0WBXim3kJMGDgXFqRzcmL
 f1Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=gOS8Fn0ZCLcglF4xKeQZbhL/pfJXLmBVW/p/GaFW4vw=;
 b=hTaUerr+4Z59NvmGNLVRIOvR5b3fpy51+uXUnzN0b/9N8XyNWxsIJYyL2zgoUckOj8
 AcONyf4il9Rc6cxEtkBvWwMSg1jPzHw2Yi8AKkHcpZmTQB+gNZ7NyzVM6f+ChI7Ll7GX
 CPSp2x4ATVS+9g5Sz/PtI0Iawk7nuGVb1F8qz39UEQ4kmM4j55RaKQk1DUj7JiTJJkFT
 PLfosVd/dx043Ri6FVwOeJAHy6P/rp+zOv+oxFSr5rd2HT9/EhBLK7nq3p1qsrwWGeLY
 eLzUTOkpCgQfICrP2Rcw54qghzD0+k4lQ7CDVkNdKi0k4Rq+m1ClBoSRwfG2xXJHZ5Ya
 FlxA==
X-Gm-Message-State: APjAAAX6N9Db0+YGjzVHRgT9BpVVSx/Si6s2Yj7pIX0q8+HeE5DiA+0b
 6i9MVSnyUJv5Wq9Bd6kWpPQ=
X-Google-Smtp-Source: APXvYqxLjZc8YA2i5iuLsRCgktSmgA1fvawM8bInlAxJ54TjKSt49nAe7X0Ysj4Sjh/WVGT73i+7dg==
X-Received: by 2002:a65:6241:: with SMTP id q1mr4853914pgv.24.1561657326093;
 Thu, 27 Jun 2019 10:42:06 -0700 (PDT)
Received: from hfq-skylake.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.googlemail.com with ESMTPSA id cx22sm6124798pjb.25.2019.06.27.10.42.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 10:42:05 -0700 (PDT)
From: Fuqian Huang <huangfq.daxian@gmail.com>
To: 
Subject: [PATCH 49/87] rtl8723bs: core: remove memset after rtw_zmalloc
Date: Fri, 28 Jun 2019 01:41:56 +0800
Message-Id: <20190627174158.4560-1-huangfq.daxian@gmail.com>
X-Mailer: git-send-email 2.11.0
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anirudh Rayabharam <anirudh.rayabharam@gmail.com>,
 linux-kernel@vger.kernel.org, Mamta Shukla <mamtashukla555@gmail.com>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Fuqian Huang <huangfq.daxian@gmail.com>,
 Nishka Dasgupta <nishka.dasgupta@yahoo.com>,
 Murray McAllister <murray.mcallister@insomniasec.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

rtw_zmalloc already zeros the memory.
memset is unneeded.

Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c   | 2 --
 drivers/staging/rtl8723bs/core/rtw_mlme.c | 2 --
 2 files changed, 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index bc0230672457..dc1da5626ce1 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -1504,8 +1504,6 @@ static int rtw_ap_set_key(
 		goto exit;
 	}
 
-	memset(psetkeyparm, 0, sizeof(struct setkey_parm));
-
 	psetkeyparm->keyid = (u8)keyid;
 	if (is_wep_enc(alg))
 		padapter->securitypriv.key_mask |= BIT(psetkeyparm->keyid);
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 5f78f1eaa7aa..3586da79af5a 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -2229,7 +2229,6 @@ sint rtw_set_auth(struct adapter *adapter, struct security_priv *psecuritypriv)
 		goto exit;
 	}
 
-	memset(psetauthparm, 0, sizeof(struct setauth_parm));
 	psetauthparm->mode = (unsigned char)psecuritypriv->dot11AuthAlgrthm;
 
 	pcmd->cmdcode = _SetAuth_CMD_;
@@ -2262,7 +2261,6 @@ sint rtw_set_key(struct adapter *adapter, struct security_priv *psecuritypriv, s
 		res = _FAIL;
 		goto exit;
 	}
-	memset(psetkeyparm, 0, sizeof(struct setkey_parm));
 
 	if (psecuritypriv->dot11AuthAlgrthm == dot11AuthAlgrthm_8021X) {
 		psetkeyparm->algorithm = (unsigned char)psecuritypriv->dot118021XGrpPrivacy;
-- 
2.11.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
