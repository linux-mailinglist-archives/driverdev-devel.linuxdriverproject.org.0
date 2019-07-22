Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2755D6FC14
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 11:24:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F32E88328C;
	Mon, 22 Jul 2019 09:24:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G9Sa+Bg3TjVi; Mon, 22 Jul 2019 09:24:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B00BB81D66;
	Mon, 22 Jul 2019 09:24:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9CED71BF302
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 09:24:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9A91F20414
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 09:24:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U+4Lokfmf0C3 for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 09:24:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 1E8C420455
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 09:24:09 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id m30so17098602pff.8
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 02:24:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FnFasX7bcyPANmdcwpdUPmi76dlyAO6YklMsRmAmcEY=;
 b=ks1JnCoR7qqAWVzJffNlUGx0laxXAAcuMpy5ywr/OwQPTfNFMv9q9869KTLEtGLiPm
 Tvx7gbS9JouDbEI/bQ/teyehs4IOUD6U+EUwxjGQf8/jKHaPUQZATZz3EnPBliy2ZMUd
 geQvSVmB3i+f4Ru8sn6jRhXFMhp67M92h5fYooOULu654zUJSZOzYaUoEtPJ8OPE71l1
 xi5ELWx0Rz6R3JSOW3GYnAeYsjTqqFj12f7t0STFvwUZzAzvrlSZGYpYL+41Te58/LJU
 +63FeL0jJA9Aj3hF2hmHI6+4OLbINDYzckPCslTGMIc6yYZLD3EJ9DUc4QstYv7nnshQ
 ObVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FnFasX7bcyPANmdcwpdUPmi76dlyAO6YklMsRmAmcEY=;
 b=f9j5/D8ndTYLuLECS/dy3DHdEX3Ev7UMis9UlQj+Kq4bJBFsXT8LCT9wCXA+OLXYWn
 u2DD4HJbW8l8ZU6Pgsb85VAuFqz8ZwkBehYE/gPXr8NDI27PE6xFg87jizi2m9dBfEmJ
 RkgS5jxi4w4cG08w9TVIp7nrw0uLRtTOtgUN7T9JqB4TuakUsNukR7nNzeyMlBSEwYjv
 xc6Es8FCi0KrCjK1CzAGCnhbs36+fbJf8ccGFSFPhvw1Gcr4tIfoDKTuY9olteHVapfg
 sBiL8z2ht3xW2mLUtWAXFkdOdaLotGSy5u9owFysSBZP7HfH/qrNHInD93AA39WOXarN
 1FwA==
X-Gm-Message-State: APjAAAXJ3Ef+h8dEmtTGxy0e2H9XlqBWQFlwUmQohWQtJOcfYuVF5rr+
 5se5K6ozNMq2aZPH02uf8hSIf1ju
X-Google-Smtp-Source: APXvYqxb4QM9zMuEO0j+XiIjdZtx16k9Ra2Q8PvHebLazxLgQUGkgx7yanNE7OIGFv+9UqbpWyi2Gg==
X-Received: by 2002:a63:e010:: with SMTP id e16mr64833385pgh.285.1563787448674; 
 Mon, 22 Jul 2019 02:24:08 -0700 (PDT)
Received: from localhost.localdomain ([122.163.0.39])
 by smtp.gmail.com with ESMTPSA id f19sm52010125pfk.180.2019.07.22.02.24.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 02:24:08 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 6/8] staging: rtl8712: r8712_set_802_11_add_wep(): Change
 return values
Date: Mon, 22 Jul 2019 14:53:39 +0530
Message-Id: <20190722092341.21030-6-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190722092341.21030-1-nishkadg.linux@gmail.com>
References: <20190722092341.21030-1-nishkadg.linux@gmail.com>
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

Change call sites of r8712_set_802_11_add_wep to check for 0 and
non-zero values (e.g -EINVAL, -ENOMEM) instead of for _SUCCESS and
_FAIL.
Change return values of r8712_set_802_11_add_wep from true and false and
_SUCCESS to -EINVAL and the return value of r8712_set_key.
Change return type from u8 to int to accommodate these new return
values.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c |  5 ++---
 drivers/staging/rtl8712/rtl871x_ioctl_set.c   | 10 ++++------
 drivers/staging/rtl8712/rtl871x_ioctl_set.h   |  4 ++--
 3 files changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index b08b9a191a34..944336e0d2e2 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -419,8 +419,7 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 		pwep->KeyIndex |= 0x80000000;
 		memcpy(pwep->KeyMaterial, param->u.crypt.key, pwep->KeyLength);
 		if (param->u.crypt.set_tx) {
-			if (r8712_set_802_11_add_wep(padapter, pwep) ==
-			    (u8)_FAIL)
+			if (r8712_set_802_11_add_wep(padapter, pwep))
 				ret = -EOPNOTSUPP;
 		} else {
 			/* don't update "psecuritypriv->PrivacyAlgrthm" and
@@ -1585,7 +1584,7 @@ static int r8711_wx_set_enc(struct net_device *dev,
 	}
 	wep.KeyIndex |= 0x80000000;	/* transmit key */
 	memcpy(wep.KeyMaterial, keybuf, wep.KeyLength);
-	if (r8712_set_802_11_add_wep(padapter, &wep) == _FAIL)
+	if (r8712_set_802_11_add_wep(padapter, &wep))
 		return -EOPNOTSUPP;
 	return 0;
 }
diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_set.c b/drivers/staging/rtl8712/rtl871x_ioctl_set.c
index 54b16bc41465..6cdc6f1a6bc6 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_set.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_set.c
@@ -327,15 +327,15 @@ u8 r8712_set_802_11_authentication_mode(struct _adapter *padapter,
 	return ret;
 }
 
-u8 r8712_set_802_11_add_wep(struct _adapter *padapter,
-			    struct NDIS_802_11_WEP *wep)
+int r8712_set_802_11_add_wep(struct _adapter *padapter,
+			     struct NDIS_802_11_WEP *wep)
 {
 	sint	keyid;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
 
 	keyid = wep->KeyIndex & 0x3fffffff;
 	if (keyid >= WEP_KEYS)
-		return false;
+		return -EINVAL;
 	switch (wep->KeyLength) {
 	case 5:
 		psecuritypriv->PrivacyAlgrthm = _WEP40_;
@@ -351,7 +351,5 @@ u8 r8712_set_802_11_add_wep(struct _adapter *padapter,
 		wep->KeyLength);
 	psecuritypriv->DefKeylen[keyid] = wep->KeyLength;
 	psecuritypriv->PrivacyKeyIndex = keyid;
-	if (r8712_set_key(padapter, psecuritypriv, keyid))
-		return false;
-	return _SUCCESS;
+	return r8712_set_key(padapter, psecuritypriv, keyid);
 }
diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_set.h b/drivers/staging/rtl8712/rtl871x_ioctl_set.h
index 8b1085aea962..e2de820f61d9 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_set.h
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_set.h
@@ -28,8 +28,8 @@ u8 r8712_set_802_11_authentication_mode(struct _adapter *pdapter,
 
 u8 r8712_set_802_11_bssid(struct _adapter *padapter, u8 *bssid);
 
-u8 r8712_set_802_11_add_wep(struct _adapter *padapter,
-			    struct NDIS_802_11_WEP *wep);
+int r8712_set_802_11_add_wep(struct _adapter *padapter,
+			     struct NDIS_802_11_WEP *wep);
 
 u8 r8712_set_802_11_disassociate(struct _adapter *padapter);
 
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
