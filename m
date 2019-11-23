Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9FD107EFA
	for <lists+driverdev-devel@lfdr.de>; Sat, 23 Nov 2019 16:16:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 79C0820400;
	Sat, 23 Nov 2019 15:16:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KCCXMDRkXPwf; Sat, 23 Nov 2019 15:16:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 293DE2039E;
	Sat, 23 Nov 2019 15:16:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 26D961BF580
 for <devel@linuxdriverproject.org>; Sat, 23 Nov 2019 15:16:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 245D386E68
 for <devel@linuxdriverproject.org>; Sat, 23 Nov 2019 15:16:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yd+aArhRV62T for <devel@linuxdriverproject.org>;
 Sat, 23 Nov 2019 15:16:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 60A3386FEF
 for <devel@driverdev.osuosl.org>; Sat, 23 Nov 2019 15:16:50 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id z19so11001707wmk.3
 for <devel@driverdev.osuosl.org>; Sat, 23 Nov 2019 07:16:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dFed9VqpsJKafs4auYjqVCiB2JZMUoL2P/uWCdp5l5Q=;
 b=s5jME4KlROGZt+v99F8rHGB4q5F574j8yIuMkOLNP3orVMGMgvDhzbh43mm6EWJsrP
 gLnQM/bQ2lxwUP6RhPwXRaIK5x/V+73jG8qTjOOSQmua5yY8ImMouZhjYK4v1hiHGIBy
 i8+4ZmlLayz0DP50sOFtd+GCdFVJh3eoWerV0D77GNUTwxS4hjVHrXM+fSXt/82piM3x
 BH3edRluBQo4LxXahRLiShZz+EItaSeBkbewUDLisRKhjcRVJvVBGy6rOdG/4CGEJxHJ
 PFQyykDM4RliuUz8JePMCw0uYlCGHC+SMxKiJQbY+RoDoBXef4QjkKBQ7VaIv2zFuXRa
 m9iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dFed9VqpsJKafs4auYjqVCiB2JZMUoL2P/uWCdp5l5Q=;
 b=TQ3LzARqYlqvThcw/JQYxlWyYdOBA7S9OwRm8H+yFIMGNUx7hvViie6KCqIVJ1lfEy
 d+x2+WNPHDP324BKjLYWLWisHBWRF9PzcrkOETE75zUlxW4D9pCVWfBSlz105Uz+nEjT
 eQDV6ghPhFEL4bXyV8DHyTEiK1dcd0w1ZPecBvbxnj5K3/WTcnvzBXiSnaqDJ8A1yGYd
 VyHTnlir86TeJmHUyJ0vFxGNWHvQZrRa5kmAGV51Er0nF+2VWHL52aYwxq6whdiXvpck
 /LXSUvpUmQ4kS7gsqPTuJlcd2smefbJhrzqMXVTi+iRCCG7ZmSA0Et0Do5VFyxVSmSqa
 1LLA==
X-Gm-Message-State: APjAAAVOAk5vOJk4hHrjPXSJvCthv41UI8ex944MeoE186xYUchvy/nX
 Q/ZknkU6tQtIqh483O1VDig=
X-Google-Smtp-Source: APXvYqxej3lQo35o2AcErOq4wsO6GVqMxTmW4YKoxjFD/Rzg4BwQccSqZZSdF/3jycOVQ3dSQGpocg==
X-Received: by 2002:a05:600c:2549:: with SMTP id
 e9mr20859986wma.177.1574522208846; 
 Sat, 23 Nov 2019 07:16:48 -0800 (PST)
Received: from localhost.localdomain
 (dslb-092-073-054-228.092.073.pools.vodafone-ip.de. [92.73.54.228])
 by smtp.gmail.com with ESMTPSA id p25sm2126311wma.20.2019.11.23.07.16.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Nov 2019 07:16:48 -0800 (PST)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/3] staging: rtl8188eu: remove return variable from
 rtw_pwr_unassociated_idle
Date: Sat, 23 Nov 2019 16:16:35 +0100
Message-Id: <20191123151635.155138-3-straube.linux@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191123151635.155138-1-straube.linux@gmail.com>
References: <20191123151635.155138-1-straube.linux@gmail.com>
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
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Function rtw_pwr_unassociated_idle returns boolean values.
Remove the return variable ret and the exit label to simplify the
function a little bit. Return true or false directly instead.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_pwrctrl.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
index 8e99e10c1fd4..c4f58507dbfd 100644
--- a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
@@ -201,21 +201,17 @@ int ips_leave(struct adapter *padapter)
 static bool rtw_pwr_unassociated_idle(struct adapter *adapter)
 {
 	struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
-	bool ret = false;
 
 	if (time_after_eq(adapter->pwrctrlpriv.ips_deny_time, jiffies))
-		goto exit;
+		return false;
 
 	if (check_fwstate(pmlmepriv, WIFI_ASOC_STATE|WIFI_SITE_MONITOR) ||
 	    check_fwstate(pmlmepriv, WIFI_UNDER_LINKING|WIFI_UNDER_WPS) ||
 	    check_fwstate(pmlmepriv, WIFI_AP_STATE) ||
 	    check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE|WIFI_ADHOC_STATE))
-		goto exit;
-
-	ret = true;
+		return false;
 
-exit:
-	return ret;
+	return true;
 }
 
 void rtw_ps_processor(struct adapter *padapter)
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
