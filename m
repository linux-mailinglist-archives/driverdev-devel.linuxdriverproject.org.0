Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A4AD827BD26
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Sep 2020 08:32:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 33F5085C5E;
	Tue, 29 Sep 2020 06:32:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EOKDedfjRq64; Tue, 29 Sep 2020 06:32:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 119BC85549;
	Tue, 29 Sep 2020 06:32:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 81F451BF2F9
 for <devel@linuxdriverproject.org>; Tue, 29 Sep 2020 06:32:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7F42F866DA
 for <devel@linuxdriverproject.org>; Tue, 29 Sep 2020 06:32:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TWVV2SfgBpx0 for <devel@linuxdriverproject.org>;
 Tue, 29 Sep 2020 06:32:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com
 [209.85.218.47])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A7A4C866D2
 for <devel@driverdev.osuosl.org>; Tue, 29 Sep 2020 06:32:36 +0000 (UTC)
Received: by mail-ej1-f47.google.com with SMTP id lo4so13361489ejb.8
 for <devel@driverdev.osuosl.org>; Mon, 28 Sep 2020 23:32:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=o+v3CNWiULTSXTkzBN+W9pmDaVzfA2hpJcEqVzTq83Y=;
 b=KaSz8hGrumNfx/R+23PNmhyRItc7/Is255868qgs6uBAWnWvnK+WuoIAVANwsGFF1x
 idPgVdXevl2RZ+XyhLLIaG1E40F3TKDAf0VnutVyA/3x+JmcgTESVUObzadTHENU3KpZ
 M3dP/7kY5j9oO+YQfYw62yt4XcgkLM6TJHvRxdkQ1JEH2RR35nBEE/sO2RP2/VE50HDC
 kQ8pRz8jcG03tSfXMXNWRHwcSz7eRqO8/bjSRvy395VMuYVo9kY/Ua16kNC8qgFqywxJ
 1Snl0BbTzTPVx8J1UC6KXiasHN7+SshyZNkzA04zi3jKQLVJ+Ry9/HLAPAYWX62XCrBh
 WEAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=o+v3CNWiULTSXTkzBN+W9pmDaVzfA2hpJcEqVzTq83Y=;
 b=WY1FMzYsIYTLLBxCZYTW53hIu2Wm+sdkzy1/4JNS5zK+voirUvP/0K0j3AmxPqkiFW
 mvGn1JXaSG77+3pHwHgKhDztqdBYszaG97wWSQ6ErxvfuHOu44j1GiTwrHKR7qKVv+wO
 XIpTRUkcHdbtG2B59vFBTrIdtN4MDQb0RAwnarCtde/WDJSa6GJtwFx/swX2ez7CIGWJ
 ysj2i232lZdGlBWBW39kkPpU/KYrW5YkVb7ZOrxaoor9Lm6XEvotcPtrPrFYWBkIg5bL
 6wR0pjmPamhkTh4oIYHSPHlezv2kMxW8f/IK17qSWjZmzQB4vhzbiaKYdmmuKHoaiqF3
 U5mw==
X-Gm-Message-State: AOAM530ZrE9yLfx8Pxx+7xDetnCTJNjIIh0ZHXdbCygvNTh4x16POIVX
 XKVg6uXeaLdyF6aGJsbpUfA=
X-Google-Smtp-Source: ABdhPJzKoC3hXw5jge+VadNKeezoyAgFUhqHsNPaznbGE+2CYzOLskBkKGcCwZoS96Y7ke8MvoAdyQ==
X-Received: by 2002:a17:906:8258:: with SMTP id
 f24mr2242609ejx.551.1601361155114; 
 Mon, 28 Sep 2020 23:32:35 -0700 (PDT)
Received: from localhost.localdomain
 (ipservice-092-219-207-039.092.219.pools.vodafone-ip.de. [92.219.207.39])
 by smtp.gmail.com with ESMTPSA id r8sm4730915edy.87.2020.09.28.23.32.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Sep 2020 23:32:34 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 4/8] staging: rtl8188eu: use ETH_ALEN
Date: Tue, 29 Sep 2020 08:28:43 +0200
Message-Id: <20200929062847.23985-4-straube.linux@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200929062847.23985-1-straube.linux@gmail.com>
References: <20200929062847.23985-1-straube.linux@gmail.com>
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

Use ETH_ALEN instead of hard coded array size.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/include/rtw_security.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/include/rtw_security.h b/drivers/staging/rtl8188eu/include/rtw_security.h
index bfa080d6a1a9..737f1da81f6b 100644
--- a/drivers/staging/rtl8188eu/include/rtw_security.h
+++ b/drivers/staging/rtl8188eu/include/rtw_security.h
@@ -82,7 +82,7 @@ union Keytype {
 
 struct rt_pmkid_list {
 	u8	bUsed;
-	u8	bssid[6];
+	u8	bssid[ETH_ALEN];
 	u8	PMKID[16];
 	u8	SsidBuf[33];
 	u8	*ssid_octet;
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
