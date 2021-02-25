Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7EB8324D7E
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Feb 2021 11:04:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3EBDD43227;
	Thu, 25 Feb 2021 10:04:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id swl4PHmQjlZ1; Thu, 25 Feb 2021 10:04:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5499B4322A;
	Thu, 25 Feb 2021 10:04:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EE2241BF475
 for <devel@linuxdriverproject.org>; Thu, 25 Feb 2021 10:04:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EAD3C6F680
 for <devel@linuxdriverproject.org>; Thu, 25 Feb 2021 10:04:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id frXnmEtfDf28 for <devel@linuxdriverproject.org>;
 Thu, 25 Feb 2021 10:04:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
 [209.85.208.41])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 45B4F6F652
 for <devel@driverdev.osuosl.org>; Thu, 25 Feb 2021 10:04:11 +0000 (UTC)
Received: by mail-ed1-f41.google.com with SMTP id l12so6074706edt.3
 for <devel@driverdev.osuosl.org>; Thu, 25 Feb 2021 02:04:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=frJ+WzF1K1wG/yxdonqGNnv/EoSLYxyDv9oAC401akQ=;
 b=slA0VDZIniRrGjVJ0k6Dqb9Dm0qtlTkyMFUR3LrPJdAgI8YABddEG5lPY/GaNhM2OQ
 rR0xjB2dx0MbRAAWmehoL/46OyLxkLmFPJOqTWdckiR10S2dMzgPfxCWDt6sT96No9PK
 ZNwLh44wh5LW4EYzK9bZ9jv0xV84qIOcwH/WsSm0u+08qg6uxuY5T7GZ+iz9bs0b4sji
 lBNmLmnGiCyvbLtwzOBQUh4V/HLJcc0tr5ezUaKApemybWqPa9dKfC1NDzZw0OFedYfR
 a7gPLMlH7NxPyWZHdO/zv8vTaqIr4BrQqbqiTdiYzCXxcGrlOlbGFgLNf++heac1bMeq
 /5Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=frJ+WzF1K1wG/yxdonqGNnv/EoSLYxyDv9oAC401akQ=;
 b=OKZCDD8RMztheVwf28x69FzJrsth1+eWF5H5WG/Cg6xSo4TYCPUuKV4rNG2J9Juxn8
 9/tRPQ5cVHpaLB/3lKbmZoTGMC/o37461Z49S4mreCGV6VpyvC8yeIAb1uHUia++sPAJ
 WcJqdgY/XtTZWNNBvLEikq1e9DUpb5hCxVfvdGOsou2xkywGeIu5xFG0CpcJDHJtDzBR
 2QlNA90H68xWG/Tr6OC4fTlELIJh7OXumtumhburC6ToBQ9Z/IPt/kVO4oWOdBH4pc9F
 JwEbuMr+qle6g+QVWwEdE4lv6XsvPQgqdmhSt3+qSdWbjCzmKHf22PqVHHBzoaF7Yo/N
 8sTg==
X-Gm-Message-State: AOAM5333I68E9JCffSnDmOkmaiXQPZYPSjN0BdPX7ySCSzPtA1r6JTXr
 GDqezeaaGK8KUBx9P15zzws=
X-Google-Smtp-Source: ABdhPJwI3ZfJ/u0ynttp+nqwCvgC8NQrVCW5DuPTeCY818h+x5DO3jMpq5ap2PmfutUh/rRLoz2lFQ==
X-Received: by 2002:a05:6402:ce:: with SMTP id
 i14mr2070306edu.42.1614247449309; 
 Thu, 25 Feb 2021 02:04:09 -0800 (PST)
Received: from ubuntudesktop.lan (205.158.32.217.dyn.plus.net.
 [217.32.158.205])
 by smtp.gmail.com with ESMTPSA id l6sm3298111edn.82.2021.02.25.02.04.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Feb 2021 02:04:08 -0800 (PST)
From: Lee Gibson <leegib@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8192u: minor coding style fix
Date: Thu, 25 Feb 2021 10:03:51 +0000
Message-Id: <20210225100351.12199-1-leegib@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Lee Gibson <leegib@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes this checkpatch warning
WARNING: Comparisons should place the constant on the right side of the test

Signed-off-by: Lee Gibson <leegib@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_wx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8192U_wx.c b/drivers/staging/rtl8192u/r8192U_wx.c
index d853586705fc..175bb8b15389 100644
--- a/drivers/staging/rtl8192u/r8192U_wx.c
+++ b/drivers/staging/rtl8192u/r8192U_wx.c
@@ -726,7 +726,7 @@ static int r8192_wx_set_enc_ext(struct net_device *dev,
 			idx--;
 		group = ext->ext_flags & IW_ENCODE_EXT_GROUP_KEY;
 
-		if ((!group) || (IW_MODE_ADHOC == ieee->iw_mode) || (alg ==  KEY_TYPE_WEP40)) {
+		if ((!group) || (ieee->iw_mode == IW_MODE_ADHOC) || (alg ==  KEY_TYPE_WEP40)) {
 			if ((ext->key_len == 13) && (alg == KEY_TYPE_WEP40))
 				alg = KEY_TYPE_WEP104;
 			ieee->pairwise_key_type = alg;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
