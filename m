Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E15A1581FF
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Feb 2020 19:03:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C149B87884;
	Mon, 10 Feb 2020 18:03:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hf-Gbe6Oz8WO; Mon, 10 Feb 2020 18:03:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1DEFE878F1;
	Mon, 10 Feb 2020 18:03:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 873501BF304
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:02:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8128220452
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:02:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1dtIL6L6s5+W for <devel@linuxdriverproject.org>;
 Mon, 10 Feb 2020 18:02:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 9FCBD2040D
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 18:02:55 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id d62so10019767oia.11
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 10:02:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=B0KShUUCdWMdc6fnb1YrsfTdb60AmTRCc7YmXkdpn5U=;
 b=k3TjCHJhU6nkTcCUxn7zXH7719HcZgCiVBa31yj4u2fpmhiYmawQmwxcXu3TaDkogO
 +EAEeTJuF5h4zGadBINUKxyzEIayXTkdq0QwJ1CItinKuI0BXQ/ygY+GMlnZin/b9D3Z
 fyhNPbWaql9+xLCLjwH7bQL9tCdpOu1XM21wJFPNKsWWrIuPsymoPdZdeeb47/virS0M
 UaNhe3Zo9QWWIxvJUvn5Me863ZW6M5vTtziQtFXukncVsPgLFANVNucS/Ed44JoIjmj2
 Uf/Wf6xvdIQvAfMnSuiT10IHfl31tyh/wLGk/erkZ79VFTOjxDjtin2ProH43Xxk26GA
 7XnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=B0KShUUCdWMdc6fnb1YrsfTdb60AmTRCc7YmXkdpn5U=;
 b=f7gAlYSKGgKFCKBs3Wm3KFmTdQTYsgip5MwuMk6YY4W/1z+UQCgFFuHi42nSlkvZA2
 J8RqUJD/8QyR/ZdF4GIkmFYY1nnEqj0498o7rkSb82MAb6zV0ZqjEWhyylrET1ptqeCq
 91Aq5iDI9+tQTGUktecZW3Kxmb7HsN4NonDksVNOl6PtHP+/RH/wrNmKZMs1WkmYBqXF
 GjTOJdFDidzLXZAXSaXsjymWgukM5g3u9Vt9rOfBEtuZw1WkfjEWa+VmSYzairg4vEZm
 TGY5H8ktHL7G9Dcuc8KhnoIgsBSPeRGm00h5+Q5Cppl8tWRczvj+Lu8vnJWD/NCDw5Ha
 NWzg==
X-Gm-Message-State: APjAAAU9SXuYLWz7yfxKOPeu9TaMNE5HA1byN/fnmPLHHsNBJq3PpLSd
 SdRq/KuSMsp6qN+jAT7Aik0=
X-Google-Smtp-Source: APXvYqxMRFW/Iym6ZleUbDwWpCYlbfoI9xJ5HXNeac3/qVk1ykPCLHPe8fQfSxJsL7wFhLJ2S8O+aQ==
X-Received: by 2002:a54:4106:: with SMTP id l6mr189137oic.76.1581357774943;
 Mon, 10 Feb 2020 10:02:54 -0800 (PST)
Received: from localhost.localdomain (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id d131sm313031oia.36.2020.02.10.10.02.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 10:02:54 -0800 (PST)
From: Larry Finger <Larry.Finger@lwfinger.net>
To: gregkh@linuxfoundation.org
Subject: [PATCH 5/6] staging: rtl8188eu: Remove some unneeded goto statements
Date: Mon, 10 Feb 2020 12:02:34 -0600
Message-Id: <20200210180235.21691-6-Larry.Finger@lwfinger.net>
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
 .../staging/rtl8188eu/os_dep/ioctl_linux.c    | 40 ++++++-------------
 1 file changed, 12 insertions(+), 28 deletions(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index acca3ae8b254..ba53959e1303 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -2009,21 +2009,16 @@ static int wpa_supplicant_ioctl(struct net_device *dev, struct iw_point *p)
 	struct ieee_param *param;
 	uint ret = 0;
 
-	if (!p->pointer || p->length != sizeof(struct ieee_param)) {
-		ret = -EINVAL;
-		goto out;
-	}
+	if (!p->pointer || p->length != sizeof(struct ieee_param))
+		return -EINVAL;
 
 	param = (struct ieee_param *)rtw_malloc(p->length);
-	if (!param) {
-		ret = -ENOMEM;
-		goto out;
-	}
+	if (!param)
+		return -ENOMEM;
 
 	if (copy_from_user(param, p->pointer, p->length)) {
 		kfree(param);
-		ret = -EFAULT;
-		goto out;
+		return -EFAULT;
 	}
 
 	switch (param->cmd) {
@@ -2054,9 +2049,6 @@ static int wpa_supplicant_ioctl(struct net_device *dev, struct iw_point *p)
 		ret = -EFAULT;
 
 	kfree(param);
-
-out:
-
 	return ret;
 }
 
@@ -2791,26 +2783,19 @@ static int rtw_hostapd_ioctl(struct net_device *dev, struct iw_point *p)
 	* so, we just check hw_init_completed
 	*/
 
-	if (!padapter->hw_init_completed) {
-		ret = -EPERM;
-		goto out;
-	}
+	if (!padapter->hw_init_completed)
+		return -EPERM;
 
-	if (!p->pointer || p->length != sizeof(struct ieee_param)) {
-		ret = -EINVAL;
-		goto out;
-	}
+	if (!p->pointer || p->length != sizeof(struct ieee_param))
+		return -EINVAL;
 
 	param = (struct ieee_param *)rtw_malloc(p->length);
-	if (!param) {
-		ret = -ENOMEM;
-		goto out;
-	}
+	if (!param)
+		return -ENOMEM;
 
 	if (copy_from_user(param, p->pointer, p->length)) {
 		kfree(param);
-		ret = -EFAULT;
-		goto out;
+		return -EFAULT;
 	}
 
 	switch (param->cmd) {
@@ -2865,7 +2850,6 @@ static int rtw_hostapd_ioctl(struct net_device *dev, struct iw_point *p)
 	if (ret == 0 && copy_to_user(p->pointer, param, p->length))
 		ret = -EFAULT;
 	kfree(param);
-out:
 	return ret;
 }
 #endif
-- 
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
