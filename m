Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A217BEC6
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 13:02:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 877C922008;
	Wed, 31 Jul 2019 11:02:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g6X5RGU2IkiP; Wed, 31 Jul 2019 11:02:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 750B8215DF;
	Wed, 31 Jul 2019 11:02:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 38A6A1BF3DE
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 11:02:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 304C586837
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 11:02:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DKCgSEFo449z for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 11:02:42 +0000 (UTC)
X-Greylist: delayed 00:27:13 by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 12B618681A
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 11:02:41 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id 19so31663148pfa.4
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 04:02:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=endlessm-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xp/W8ZTYuEqer12ai3NiDJg4PMDw8fKy9ZdPilJWoCU=;
 b=avbVjvMuJowWAvhzBE0eK2ZNV5N05z76jBJNXrAViCbe4s8BE8tl3E/0EsaOzluxy0
 z6583/YHJSoBt15HT+6lebxkKLxW+oftiyWPeYfyykJy7zbamWrqhdNn/YzzxV5JUqtS
 e2SIxZZX4kh1VcfOmf76FX+6CL4ewE/rwvDa55Ln9Mi4EbuMiQjWL8jnpLYnFWwYrOBg
 QB3yMarTBJ0StFM2x8NoeT1gIDWE/qNrqJtdUjqRV70n0zdrUOpeC+Kg/I8+bnirb/kV
 xBmepOYD7+pUoFfZ0odeQ+kOuBkbqmmA7G5Ukrr/+hovZnMsCYP0nQbRu87JfBHiaWkE
 fHbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xp/W8ZTYuEqer12ai3NiDJg4PMDw8fKy9ZdPilJWoCU=;
 b=lL8OHZB9iBnRlnyb3QnV4iFTo9NnrLI+jn4kTqsLPuBe8brxrr2Rx6KGzdm9wfz1z5
 UICqbArbLuns9AJD2kFCynJhO6TooPeWDJ2TCnGidxcn0vFKGvRimz9LTmNQhYGJTz2v
 tGxgmFpBllTfnYYGfq3Vfj2TuaL9n+wiqM6Gl2R+gOm76W/V/9BJwvck6AkkOw3xrD0k
 xXqZTuijlvJekifUhNEuhxmOBobRccZtcVtQzH4vZkBVhM727WxiNv9H0SW3uP3bTdpy
 P4eg32aOw9tcYO1T09xJprqIWH5wlNN50n8HkeNl5sjec7lMoxfEXfFJOoDZ5HU2x+ZX
 J6JQ==
X-Gm-Message-State: APjAAAW+aJ24LBqoys0AO7AIJ937crDTHUFYXRoJ3SK1H5juVAsAjgYx
 kpGiqxqwOyaj0mAeWrBz/GW1nr6voZY=
X-Google-Smtp-Source: APXvYqzjgNCBS9Xc6r1qaCIRpbgFCY8FEOUGV0ioNj007dahDNshESK0G3DDioV3YzxY2BA9jd53DQ==
X-Received: by 2002:a17:90a:d14b:: with SMTP id
 t11mr2249852pjw.79.1564569329177; 
 Wed, 31 Jul 2019 03:35:29 -0700 (PDT)
Received: from localhost.localdomain (220-133-8-232.HINET-IP.hinet.net.
 [220.133.8.232])
 by smtp.gmail.com with ESMTPSA id h26sm71056516pfq.64.2019.07.31.03.35.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 31 Jul 2019 03:35:28 -0700 (PDT)
From: Chris Chiu <chiu@endlessm.com>
To: gregkh@linuxfoundation.org, himadri18.07@gmail.com,
 madhumithabiw@gmail.com, colin.king@canonical.com,
 payal.s.kshirsagar.98@gmail.com, benniciemanuel78@gmail.com
Subject: [PATCH] staging: rtl8723bs: indicate disconnection when disconnecting
Date: Wed, 31 Jul 2019 18:35:17 +0800
Message-Id: <20190731103517.66903-1-chiu@endlessm.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The Realtek RTL8723BS only connects successfully at the very first
time, then it always fails attempting to switch to another AP. No
authentication/association observed from the air capture for each
attempt due to the cfg80211 believes the device is still connected.

Fix this by forcing to indicate the disconnection events during
disconnection so the cfg80211_connect can connect to a different
AP without problem.

Signed-off-by: Chris Chiu <chiu@endlessm.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index db553f2e4c0b..f76a498f015f 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -2024,8 +2024,6 @@ static int cfg80211_rtw_leave_ibss(struct wiphy *wiphy, struct net_device *ndev)
 
 	DBG_871X(FUNC_NDEV_FMT"\n", FUNC_NDEV_ARG(ndev));
 
-	padapter->mlmepriv.not_indic_disco = true;
-
 	old_type = rtw_wdev->iftype;
 
 	rtw_set_to_roam(padapter, 0);
@@ -2047,8 +2045,6 @@ static int cfg80211_rtw_leave_ibss(struct wiphy *wiphy, struct net_device *ndev)
 	}
 
 leave_ibss:
-	padapter->mlmepriv.not_indic_disco = false;
-
 	return 0;
 }
 
@@ -2246,8 +2242,6 @@ static int cfg80211_rtw_disconnect(struct wiphy *wiphy, struct net_device *ndev,
 
 	DBG_871X(FUNC_NDEV_FMT"\n", FUNC_NDEV_ARG(ndev));
 
-	padapter->mlmepriv.not_indic_disco = true;
-
 	rtw_set_to_roam(padapter, 0);
 
 	rtw_scan_abort(padapter);
@@ -2261,8 +2255,6 @@ static int cfg80211_rtw_disconnect(struct wiphy *wiphy, struct net_device *ndev,
 	rtw_free_assoc_resources(padapter, 1);
 	rtw_pwr_wakeup(padapter);
 
-	padapter->mlmepriv.not_indic_disco = false;
-
 	DBG_871X(FUNC_NDEV_FMT" return 0\n", FUNC_NDEV_ARG(ndev));
 	return 0;
 }
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
