Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF7A744E5
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 07:27:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EE9E5220C1;
	Thu, 25 Jul 2019 05:27:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LwpsIwF-6ZpG; Thu, 25 Jul 2019 05:27:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9F17122056;
	Thu, 25 Jul 2019 05:27:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D7B241BF2B7
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 05:27:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D43B687FB5
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 05:27:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H5Le0mAzLGPl for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 05:27:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 76CB888002
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 05:27:18 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id r7so22118449pfl.3
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 22:27:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8p/Sn53GwQi/N5oxjpUh/wX+FfXzZTPJbVnvW0a6hds=;
 b=VWimxvP2w8mZFtEt1AEezN+TvBnbzN3UgRpDf4V2VrmZuasyB7AnohHc3bV67IkYvk
 +7mDDIyVrAsMX1u0tK7b0sMy1INLsB6HzoUOH+WHwwey5k1SYMBKTxYvRRSGBiKIqYdw
 A3du9oEnd4ZVpDZa38Wh4lyrN4v9vpe/dg+46AGMTQcIr9tok58oxpliCm0pHjjxW8hS
 zhOKjKm+BW44AlTBOsOp/TFI5FP9xrEqlV3iLYxuMhukvbNkD9tkSCREWy+WObt9Dkj6
 sBjJ1JiAp1UQ7UcGbpwgwvjNzd8s0meLZp9emJSCfRFLJKYrHsFxoJSQ/v5HERGodzTa
 FOcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8p/Sn53GwQi/N5oxjpUh/wX+FfXzZTPJbVnvW0a6hds=;
 b=rtaPR4O5NT0jTgnu+X275ge5QDYHBxSvTmILRbvSNICk7ockPWlO5flxKBpAyCVmmG
 uxxYLUJACBn9wDttczcVDY/XBI2n8Z/fnQNiZ7jsXRl4c2vMwUppD9bw1e85UI+sglhf
 K+MLzDYkC7KCqKfvz48GEwUASv01udI16D+8JocTy8FN2nPpUlzw3wBGdnaSFCFb8Rsz
 vbmBVr5XMFI89I/xZa0ve9wOQpjENS77ea4N+FqjRV4d8xtuEO/GNy4lAgtm6Z+tC2y2
 de2AuXXvBEhGttuDxxoMUcs+edDc9ajUY7xk6Ev2u8i4iHS3LuEz9xaBfqxR3Y+kJvzF
 lwCg==
X-Gm-Message-State: APjAAAVCKfmnGlppDuN7mHtPFg+svdgfpjSD43QBFQ/pQnuUYBWmgUqq
 uyQkxVtLCqANR+badZdSnauy5D2h
X-Google-Smtp-Source: APXvYqwwpVkc2gNmvRr2o3DkpBBth6K6SwsPYincXPPW3B5BOlj4qflOmjMS61/vdSnNvycSyk5/aQ==
X-Received: by 2002:a63:b904:: with SMTP id z4mr83124581pge.388.1564032437685; 
 Wed, 24 Jul 2019 22:27:17 -0700 (PDT)
Received: from localhost.localdomain ([110.227.69.93])
 by smtp.gmail.com with ESMTPSA id w22sm51615877pfi.175.2019.07.24.22.27.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 22:27:17 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 9/9] staging: rtl8723bs: Remove unused function prototype
 ODM_SetAntenna()
Date: Thu, 25 Jul 2019 10:56:45 +0530
Message-Id: <20190725052645.2372-9-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190725052645.2372-1-nishkadg.linux@gmail.com>
References: <20190725052645.2372-1-nishkadg.linux@gmail.com>
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

Remove unused function prototype ODM_SetAntenna.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm.h b/drivers/staging/rtl8723bs/hal/odm.h
index 6ba77bb70889..fba3b9e1491b 100644
--- a/drivers/staging/rtl8723bs/hal/odm.h
+++ b/drivers/staging/rtl8723bs/hal/odm.h
@@ -1365,10 +1365,6 @@ extern  u32 TxScalingTable_Jaguar[TXSCALE_TABLE_SIZE];
 #define SWAW_STEP_PEAK		0
 #define SWAW_STEP_DETERMINE	1
 
-/* Remove DIG by yuchen */
-
-void ODM_SetAntenna(PDM_ODM_T pDM_Odm, u8 Antenna);
-
 /* Remove BB power saving by Yuchen */
 
 #define dm_CheckTXPowerTracking ODM_TXPowerTrackingCheck
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
