Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3303408E8
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Mar 2021 16:29:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1C7E143291;
	Thu, 18 Mar 2021 15:29:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 461IfLntvtQ1; Thu, 18 Mar 2021 15:29:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 59AC14328B;
	Thu, 18 Mar 2021 15:29:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6AE651BF341
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 15:27:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D34E1400B5
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 15:27:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Av73e5ORRWtN for <devel@linuxdriverproject.org>;
 Thu, 18 Mar 2021 15:27:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1F5994328B
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 15:27:18 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 t5-20020a1c77050000b029010e62cea9deso3645766wmi.0
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 08:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qLUU1s8kRWxcJ8qSEAxAw8lK0hzJa5M0nSsIsfK6i4Q=;
 b=rYNAA/V3Afy04iivf60eNGzlRgIcMtegewrD7WrKf3Z6Aag3x04fraob0bxYfXXXA8
 HA+xVSPW2RE9vboeVcWxbWhba0esjgoELFi+1+LzMnjso+Z3HiOdqLYU2cJDwezxGad9
 5iDDfAIOKEGC5617ytomAKDuZcE0EvgQdO7SUtIz4jNKJI7MMTOZ4vWR/ZENvO5FrwcU
 o0K+BQFt4COovLK2QWzcLttc961ceg2UWjzGkNub5XS5j5x3HUad5YHppAXgZzwMcQ8q
 dPobLq3vx2VAxlF33Z9X2ruJ03cxMfwGxHn1uSnFcknwL8ulsj4oBfKFsK6kHCHiKNly
 j0sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qLUU1s8kRWxcJ8qSEAxAw8lK0hzJa5M0nSsIsfK6i4Q=;
 b=Ix82LlRcQW2nlV/CA6IQcJ1OpiK/aSV/hDiKSV5Xy/xEZ+ZapCrnf1SDeqOJmBshd1
 C8mdpv46IEWsqJ2M+Ks2fsydbDKzCUGU9z4EcP5Xe01WEUCf40FLz9NaXBJm18iCB9mE
 2p3XNBcilVkq+NSywNv1JsazeyVGgDmk7FnkRugix2KunroA+wVih8NDRALDBWYFqINj
 kc7VlsI7r6jaDr604EwDMIs+YF6zbJjh+RWeIT718Oef49oSrWCyBC22OZdBYPg0fd5k
 bFDUVrbcPnp2Dy7LHHVztEdYgd7+at8u+h9lvorp2lIyRvdBEW34RY/1DvNhI0jfWT7U
 tvmw==
X-Gm-Message-State: AOAM533NvBKGWodXbui+DGjxn5hH+ST5Tvv0R8CddeGCMEhXY/uLrWCx
 0+Rbfof+mUpeXzT+KrIgLpU=
X-Google-Smtp-Source: ABdhPJzUu0235LltzmzUgpzF+krQtLvZN9FARDVjYF0jMCc1/9SkQUCURGIp38+xRw04HcfoH2TXUw==
X-Received: by 2002:a05:600c:4ba2:: with SMTP id
 e34mr4198375wmp.121.1616081236223; 
 Thu, 18 Mar 2021 08:27:16 -0700 (PDT)
Received: from agape ([151.46.162.59])
 by smtp.gmail.com with ESMTPSA id i8sm2392173wmi.6.2021.03.18.08.27.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Mar 2021 08:27:15 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 13/15] staging: rtl8723bs: remove unnecessary logging in
 os_dep/ioctl_linux.c
Date: Thu, 18 Mar 2021 16:26:08 +0100
Message-Id: <20210318152610.16758-14-fabioaiuto83@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210318152610.16758-1-fabioaiuto83@gmail.com>
References: <YFMb+7jjmj7Oty8B@kroah.com>
 <20210318152610.16758-1-fabioaiuto83@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Fabio Aiuto <fabioaiuto83@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix the following checkpatch.pl issues:

WARNING: Unnecessary ftrace-like logging - prefer using ftrace
1207: FILE: drivers/staging/rtl8723bs/os_dep/ioctl_linux.c:1207:
+	DBG_871X("%s\n", __func__);
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
1507: FILE: drivers/staging/rtl8723bs/os_dep/ioctl_linux.c:1507:
+	DBG_871X("=>%s\n", __func__);
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
3390: FILE: drivers/staging/rtl8723bs/os_dep/ioctl_linux.c:3390:
+	DBG_871X("%s\n", __func__);
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
3687: FILE: drivers/staging/rtl8723bs/os_dep/ioctl_linux.c:3687:
+	DBG_871X("%s\n", __func__);
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
4143: FILE: drivers/staging/rtl8723bs/os_dep/ioctl_linux.c:4143:
+	/* DBG_871X("%s\n", __func__); */

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index aac1391bdbf1..590da76e9e8e 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -1204,8 +1204,6 @@ static int rtw_wx_set_mlme(struct net_device *dev,
 	if (mlme == NULL)
 		return -1;
 
-	DBG_871X("%s\n", __func__);
-
 	reason = mlme->reason_code;
 
 	DBG_871X("%s, cmd =%d, reason =%d\n", __func__, mlme->cmd, reason);
@@ -1504,7 +1502,6 @@ static int rtw_wx_set_essid(struct net_device *dev,
 	}
 
 	authmode = padapter->securitypriv.ndisauthtype;
-	DBG_871X("=>%s\n", __func__);
 	if (wrqu->essid.flags && wrqu->essid.length) {
 		len = (wrqu->essid.length < IW_ESSID_MAX_SIZE) ? wrqu->essid.length : IW_ESSID_MAX_SIZE;
 
@@ -3387,8 +3384,6 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 	struct security_priv *psecuritypriv = &(padapter->securitypriv);
 	struct sta_priv *pstapriv = &padapter->stapriv;
 
-	DBG_871X("%s\n", __func__);
-
 	param->u.crypt.err = 0;
 	param->u.crypt.alg[IEEE_CRYPT_ALG_NAME_LEN - 1] = '\0';
 
@@ -3684,8 +3679,6 @@ static void rtw_hostapd_sta_flush(struct net_device *dev)
 	struct adapter *padapter = rtw_netdev_priv(dev);
 	/* struct sta_priv *pstapriv = &padapter->stapriv; */
 
-	DBG_871X("%s\n", __func__);
-
 	flush_all_cam_entry(padapter);	/* clear CAM */
 
 	rtw_sta_flush(padapter);
@@ -4140,8 +4133,6 @@ static int rtw_hostapd_ioctl(struct net_device *dev, struct iw_point *p)
 	int ret = 0;
 	struct adapter *padapter = rtw_netdev_priv(dev);
 
-	/* DBG_871X("%s\n", __func__); */
-
 	/*
 	* this function is expect to call in master mode, which allows no power saving
 	* so, we just check hw_init_completed
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
