Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A5731591A9
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 04:50:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 17A9E86502;
	Fri, 28 Jun 2019 02:50:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ukq58nDqeYFY; Fri, 28 Jun 2019 02:50:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0FCE6864EE;
	Fri, 28 Jun 2019 02:50:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F14CB1BF418
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 02:50:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EACE3203D6
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 02:50:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lKGvycvMVuVW for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 02:49:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id D440220351
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 02:49:59 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id z19so1889525pgl.12
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 19:49:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=ntiJ5C/OBL6UdCz4Q7ktczZqFeLJZaqGoBR+VZeaVcQ=;
 b=hy72Cf3q1oJ7rFjw+u0OTSaQNnxUaiSNepNt+DvajIwO5FZgf1H5nma5H/nNKqU05/
 rFIH8E61qyP2qWOWDRONVJtLPbXXei+mScXn2kC9zYL/IA3Lumiw7u3yf9x0WEtqTbhG
 CZjJw2dCkgWhxrZBhv/+vYrIuYSoTFeP60qN27F0QvZAs7aFE74nEpSjjbSxuWgCXEa8
 O4zaJAge4tk1FYgD4JVVKcNFn+WzFceVq0L365itBFLjU8J9EyrAY2f+wt2JFhIlI2UF
 mjlnvLII0cx6Ds+cYsJGlgPIPGGApcc/u4vEy/crPJR915gSSstqTrAAImol1chwQZyf
 G9sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ntiJ5C/OBL6UdCz4Q7ktczZqFeLJZaqGoBR+VZeaVcQ=;
 b=GJRFN6BvX+mMuAAqbntK5enNyvmM5NixtLqRMmrVXJw1n3LMoJa46I41aYBPh5dC7n
 YtGzMpzhmpUwGLE37QzGpFx1B7XfVOGHcdduW/kBD5nqNkE+weyKiIYJs9qG40gcHPJg
 un+QB/IQTtVNxOHvXQoUhquqxKhWfnggx8lji2zLENjRQsWqr8F4Af1bh8HCd3BVInYg
 x/JBBESZc5itJ3mzz36Ri9Pm+Ky4iWmynmzMefz0jOQIP6NQAOi4cVYawNeNnMltnsHn
 4H5iqVKEYz77LazXKJiePab0YaKXJt1b7D8Ti76h91LAi4nALXe/0aXWRDxFjJUDgw2t
 zeVw==
X-Gm-Message-State: APjAAAXTfd14jKCT1jagasxzD6KAKhuUgw3SG3QEYKq+APbu8sPX8HS+
 PmWurK3cVmCDSuggj7FwE0Q=
X-Google-Smtp-Source: APXvYqyfn2rh8ilKv0L32NiNdkcC+i8x5BeMbUQYHSIRKS7tjyeJfoqsLpWyRcsX7ElJnZS6K2irOA==
X-Received: by 2002:a17:90a:1b48:: with SMTP id
 q66mr9678386pjq.83.1561690199548; 
 Thu, 27 Jun 2019 19:49:59 -0700 (PDT)
Received: from hfq-skylake.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.googlemail.com with ESMTPSA id b135sm454729pfb.44.2019.06.27.19.49.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 19:49:59 -0700 (PDT)
From: Fuqian Huang <huangfq.daxian@gmail.com>
To: 
Subject: [PATCH v2 20/27] staging: rtl8723bs: remove unneeded memset
Date: Fri, 28 Jun 2019 10:49:49 +0800
Message-Id: <20190628024952.15866-1-huangfq.daxian@gmail.com>
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
 Hans de Goede <hdegoede@redhat.com>,
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

rtw_zmalloc already zeroes the memory,
so memset is unneeded.

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
