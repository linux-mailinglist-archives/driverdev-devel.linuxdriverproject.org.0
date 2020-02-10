Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 17DE91581FC
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Feb 2020 19:03:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B70B5861A4;
	Mon, 10 Feb 2020 18:03:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ipj+i5bAq7A4; Mon, 10 Feb 2020 18:03:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CEAE786110;
	Mon, 10 Feb 2020 18:03:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2D7321BF304
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:02:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 23C6C860F9
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:02:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e+PVty5RILJa for <devel@linuxdriverproject.org>;
 Mon, 10 Feb 2020 18:02:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7485C8614D
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 18:02:56 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id p8so7233277oth.10
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 10:02:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7zev+nzf84O19+SsgOdC2PDlzmc84n4XaWfl0N7G4i0=;
 b=Dm5a5NF32KMUXbMVRjY9EA3Lu2y+8Y1u6jlIPibi5pscf9+PxxuHEBLUcxn5GVYiEo
 BFXXlCP+fpqSe1rZiDI1MhiSSlnMGt0AN78XxKV726Fpejy6W9MYAPXFZ8Wn1PRF99hY
 fc0tKxZq7n9gtzN44yaSCSLOo2XhlgtFqWC07O98De42qk1U/xwSQZyXLS5c00WYETGn
 XOlIbniRxuh26KCfgW9tcbVdoLMDSZdH2U5mn6h4oDLnjT7Q3RQvy7mH+KIdce0I14v3
 /pUIvmX+rtwqWNHzwOkNs+4NXpxlRGq5PCZdLk+dDxKtDrcp0nthRc8q43JqINhzv0SO
 FVYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=7zev+nzf84O19+SsgOdC2PDlzmc84n4XaWfl0N7G4i0=;
 b=Qb8RfV6r6Nal7BBBpS1K4ehh9cbgBQ2RpZeGbHjH0xfG5habO03aKnJaoDQirNOHy+
 QJr+6SKJVJJcjJd5zqMBa9aEMR6CbDCYAoRMGo7KOmiM2AURQuPKPL5ZejoACbN/GN+z
 oKdUfEO7xMPYkzgXKUiNnozHmCKEbXpH3atGuUMQ2SoqeCXz9gGYySP4Ar+EhF2yKFaK
 wNfFZBY2saLmG2oo09UW8EarCL4jDw6BZexIHBngBdjcd1D2xpW4f1YsKUoi+3FjBgbG
 H7qkpMrfiiTV+cnCXybpCY4ugoX9foqs1HynmLwZbrHYMJlhwudGS25m6zy2xxhgZuOF
 IVWA==
X-Gm-Message-State: APjAAAXy5eIzilINiJRGItVAUmB6Iev5wFWA0PUGtW8ALlvjdqAcjiON
 dBk+yRyV3cO9ciAv6BVGY9Y=
X-Google-Smtp-Source: APXvYqxunMGeML/UlC7WUnBRDzKk0bdaw79CtqMWEXo2vCD0jzYIOUDupIbDs9S1OkiKbdIUqYkClQ==
X-Received: by 2002:a05:6830:1218:: with SMTP id
 r24mr2037318otp.144.1581357775682; 
 Mon, 10 Feb 2020 10:02:55 -0800 (PST)
Received: from localhost.localdomain (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id d131sm313031oia.36.2020.02.10.10.02.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 10:02:55 -0800 (PST)
From: Larry Finger <Larry.Finger@lwfinger.net>
To: gregkh@linuxfoundation.org
Subject: [PATCH 6/6] staging: rtl8723bs: Remove unneeded goto statements
Date: Mon, 10 Feb 2020 12:02:35 -0600
Message-Id: <20200210180235.21691-7-Larry.Finger@lwfinger.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200210180235.21691-1-Larry.Finger@lwfinger.net>
References: <20200210180235.21691-1-Larry.Finger@lwfinger.net>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 Pietro Oliva <pietroliva@gmail.com>, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In routines rtw_hostapd_ioctl() and wpa_supplicant_ioctl(), several
error conditions involve setting a variable indicating the error,
followed by a goto. The code following the target of that goto merely
returns the value. It is simpler, therefore to return the error value
immediately, and eliminate the got  target.

Signed-off-by: Larry Finger <Larry.Finger@lwfinger.net>
Cc: Pietro Oliva <pietroliva@gmail.com>
---
 .../staging/rtl8723bs/os_dep/ioctl_linux.c    | 47 +++++--------------
 1 file changed, 12 insertions(+), 35 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 2ac0d84f090e..9b9038e7deb1 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -3373,21 +3373,16 @@ static int wpa_supplicant_ioctl(struct net_device *dev, struct iw_point *p)
 
 	/* down(&ieee->wx_sem); */
 
-	if (!p->pointer || p->length != sizeof(struct ieee_param)) {
-		ret = -EINVAL;
-		goto out;
-	}
+	if (!p->pointer || p->length != sizeof(struct ieee_param))
+		return -EINVAL;
 
 	param = rtw_malloc(p->length);
-	if (param == NULL) {
-		ret = -ENOMEM;
-		goto out;
-	}
+	if (param == NULL)
+		return -ENOMEM;
 
 	if (copy_from_user(param, p->pointer, p->length)) {
 		kfree(param);
-		ret = -EFAULT;
-		goto out;
+		return -EFAULT;
 	}
 
 	switch (param->cmd) {
@@ -3421,12 +3416,8 @@ static int wpa_supplicant_ioctl(struct net_device *dev, struct iw_point *p)
 
 	kfree(param);
 
-out:
-
 	/* up(&ieee->wx_sem); */
-
 	return ret;
-
 }
 
 static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param, u32 param_len)
@@ -4200,28 +4191,19 @@ static int rtw_hostapd_ioctl(struct net_device *dev, struct iw_point *p)
 	* so, we just check hw_init_completed
 	*/
 
-	if (!padapter->hw_init_completed) {
-		ret = -EPERM;
-		goto out;
-	}
-
+	if (!padapter->hw_init_completed)
+		return -EPERM;
 
-	/* if (p->length < sizeof(struct ieee_param) || !p->pointer) { */
-	if (!p->pointer || p->length != sizeof(*param)) {
-		ret = -EINVAL;
-		goto out;
-	}
+	if (!p->pointer || p->length != sizeof(*param))
+		return -EINVAL;
 
 	param = rtw_malloc(p->length);
-	if (param == NULL) {
-		ret = -ENOMEM;
-		goto out;
-	}
+	if (param == NULL)
+		return -ENOMEM;
 
 	if (copy_from_user(param, p->pointer, p->length)) {
 		kfree(param);
-		ret = -EFAULT;
-		goto out;
+		return -EFAULT;
 	}
 
 	/* DBG_871X("%s, cmd =%d\n", __func__, param->cmd); */
@@ -4321,13 +4303,8 @@ static int rtw_hostapd_ioctl(struct net_device *dev, struct iw_point *p)
 	if (ret == 0 && copy_to_user(p->pointer, param, p->length))
 		ret = -EFAULT;
 
-
 	kfree(param);
-
-out:
-
 	return ret;
-
 }
 
 static int rtw_wx_set_priv(struct net_device *dev,
-- 
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
