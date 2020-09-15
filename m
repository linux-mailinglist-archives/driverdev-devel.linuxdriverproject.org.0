Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9365826A233
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 11:32:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 472A8220C1;
	Tue, 15 Sep 2020 09:32:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VSZbIY+3WZOz; Tue, 15 Sep 2020 09:32:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C31C220110;
	Tue, 15 Sep 2020 09:32:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 784901BF28B
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 09:32:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 62E1C20110
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 09:32:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FAxX-5Z8shI1 for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 09:32:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by silver.osuosl.org (Postfix) with ESMTPS id BD4DA1FC71
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 09:32:02 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id e17so2671912wme.0
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 02:32:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mzjxk6Z1eBrJN1ZjH1a+7+cmqXARPYvjYL126a4N7s8=;
 b=V8pFeg/GpWzpHfmH6r2/l3YP0qMrgVmfaaP7hSqnG26Ak9Q02anebh3MBGWiRc0Whj
 1d3MhU/cusjU88L3dYhPCCophjl5G2IWatce1ynFfhYStWt/80HBd0rAYGMIlKWR/v2/
 Jw1tQGu9m23/ZSrnzs2kyTdcL/m42y7kWZ5Sc3JS8n7XKbRRAH7x+24TTmniXh8FP84R
 Xn3C6R+Z4HjWBxbd+9rGCiRvUeSDLRtzzc/U7z/yvAxvbyYWBfsewRUIT8hvAQc45yoA
 dhLgAbVHDOpW/P0DKhuyinMy8ft1guzC8s4cIX9NotIi6vG8K55cz/YuLYF3M+FnJ+bg
 hwTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mzjxk6Z1eBrJN1ZjH1a+7+cmqXARPYvjYL126a4N7s8=;
 b=TO2lr3uxLr9ADpOfiWjA9Gk23gxw4nHuHfFXVjsT5q1ZIHBk6tHvn+D8NLsx+oe8Ie
 IWMM1Qmck4q+LKhZa6/uJOCRHF9wYT8I/vPHeDREXnDdEcLGKME+3PMzsl2rwdAUyIee
 PB69YpzZ2OplzfjNVKfF400LJC/QcIBPhhf16m7bAUeNLbv3NCWNbg8SCqPxduO2UDU5
 BOY+ZDGONJk87FZy1VM6ppI7YsH8v9JcQ+5q7cJ/vr4HuBBojeLl0ZrZCRqlOdyQHrR7
 32I56eE4LVxLEMBV4T+K2T3UB462sA5esr88K3kpoNf0MzBBFoobd4WkmEgDHwrVk9gU
 8EPQ==
X-Gm-Message-State: AOAM531gVrXcMHiePJdlo/FcDrri0ul6o5IAbSRQS8aqxSZpw/SpySbN
 MJDilcVrBZF1ts5xMfqXC+k=
X-Google-Smtp-Source: ABdhPJw1TT5auEHEOxsMaDaNIKHnSoCzmxorwYj7pD5I60UNLOyyz6jDh9rwq3HSZDDewfzFKE7g0w==
X-Received: by 2002:a1c:94:: with SMTP id 142mr2540529wma.25.1600162320915;
 Tue, 15 Sep 2020 02:32:00 -0700 (PDT)
Received: from localhost.localdomain ([85.153.229.188])
 by smtp.gmail.com with ESMTPSA id f14sm25642477wrv.72.2020.09.15.02.31.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Sep 2020 02:32:00 -0700 (PDT)
From: Necip Fazil Yildiran <fazilyildiran@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8192e: fix kconfig dependency warning for
 RTLLIB_CRYPTO_TKIP
Date: Tue, 15 Sep 2020 12:30:34 +0300
Message-Id: <20200915093033.20130-1-fazilyildiran@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, paul@pgazz.com,
 Necip Fazil Yildiran <fazilyildiran@gmail.com>, linux-kernel@vger.kernel.org,
 jeho@cs.utexas.edu, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

When RTLLIB_CRYPTO_TKIP is enabled and CRYPTO is disabled, it results in
the following Kbuild warning:

WARNING: unmet direct dependencies detected for CRYPTO_ARC4
  Depends on [n]: CRYPTO [=n]
  Selected by [m]:
  - RTLLIB_CRYPTO_TKIP [=m] && STAGING [=y] && RTLLIB [=m]

WARNING: unmet direct dependencies detected for CRYPTO_MICHAEL_MIC
  Depends on [n]: CRYPTO [=n]
  Selected by [m]:
  - RTLLIB_CRYPTO_TKIP [=m] && STAGING [=y] && RTLLIB [=m]

The reason is that RTLLIB_CRYPTO_TKIP selects CRYPTO_ARC4 and
CRYPTO_MICHAEL_MIC without depending on or selecting CRYPTO while both
CRYPTO_ARC4 and CRYPTO_MICHAEL_MIC are subordinate to CRYPTO.

Honor the kconfig menu hierarchy to remove kconfig dependency warnings.

Fixes: e0e3daddad36 ("staging: r8192e: Fix possible error in configuration")
Signed-off-by: Necip Fazil Yildiran <fazilyildiran@gmail.com>
---
 drivers/staging/rtl8192e/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/rtl8192e/Kconfig b/drivers/staging/rtl8192e/Kconfig
index 1007eea6c8fc..fd237dda8be4 100644
--- a/drivers/staging/rtl8192e/Kconfig
+++ b/drivers/staging/rtl8192e/Kconfig
@@ -25,6 +25,7 @@ config RTLLIB_CRYPTO_CCMP
 config RTLLIB_CRYPTO_TKIP
 	tristate "Support for rtllib TKIP crypto"
 	depends on RTLLIB
+	select CRYPTO
 	select CRYPTO_ARC4
 	select CRYPTO_MICHAEL_MIC
 	default y
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
