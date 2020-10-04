Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 624572827BB
	for <lists+driverdev-devel@lfdr.de>; Sun,  4 Oct 2020 03:18:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5C49F8700C;
	Sun,  4 Oct 2020 01:18:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cB8bBw5biBfq; Sun,  4 Oct 2020 01:18:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 85ECF86FF2;
	Sun,  4 Oct 2020 01:18:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 06C8A1BF5A9
 for <devel@linuxdriverproject.org>; Sun,  4 Oct 2020 01:18:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EA68220002
 for <devel@linuxdriverproject.org>; Sun,  4 Oct 2020 01:17:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MJ8EdSZ-Xc1K for <devel@linuxdriverproject.org>;
 Sun,  4 Oct 2020 01:17:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f193.google.com (mail-il1-f193.google.com
 [209.85.166.193])
 by silver.osuosl.org (Postfix) with ESMTPS id A1D56200E5
 for <devel@driverdev.osuosl.org>; Sun,  4 Oct 2020 01:17:58 +0000 (UTC)
Received: by mail-il1-f193.google.com with SMTP id c5so4167718ilr.9
 for <devel@driverdev.osuosl.org>; Sat, 03 Oct 2020 18:17:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=v53ACvOg2NKq5fjSF/YlpjrOJIK+ze5t32HmCDN949k=;
 b=n91n+BFaU86BAtNuaMySrlHjfNT6WLFdC6btjyfyvj7w9xllGOfaTQ10bdk3dMvDd1
 UIetCZ00dBH1/B8Cl8CzGInYjuBITsRkBgHdiXzxRss/lhgLkQlD/pPGX/NOMJQyfoLr
 wLka24vdt7AFG2KhvZBrb7VxIiKGSx5dJEOL0kQwuUazViOptNkDbqAJ3SKjqf70BVrt
 DoowuFiwhaXRzfA4rFOGpQhHdS4Oo2Z/NwUuXhd9hvKsDa7DhzAaA1BHuKrzxLm/hMTQ
 RPk5B8SrKW6vMXooDl9CjmaxDM2R+K+t9f45wIF157lWHgk81a8p33r5zDmbpgjs9Whr
 WD1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=v53ACvOg2NKq5fjSF/YlpjrOJIK+ze5t32HmCDN949k=;
 b=DMM03KGv9VTLlIkgaICJYoXDPFGkAlsdNWQAxwKny/ktgTKp9LVM5s6IF16umZ18rO
 G9ZeRhlszXyuvU/CKLrPpG/JZTWMX2dnXI96MCgHT6yfUdDe1RyuwRtJlnIGOZWnVwnI
 4u5uUDnf3QV+iRC/qi8Y/qsg3z+e1yXpBVOVJQG+L3tmPkRbVP9UpkVAdYEwM8vvuWhh
 N51IabW/QR5zyN5tQyqVNdO8AX5UH02dvsEoC0sLN2KVEHJajiozTMITgC/KCjdOxS6m
 fxkp5FHfrRW3QDdivz4e/1oij7weKEG6P7QRRH19tI7DtKiVvBS+EJiSgwbajl/zqq2A
 0meg==
X-Gm-Message-State: AOAM530QAlsHUVg+ma5+G8063eDk0ZiUzZR5b7Ij7Mmn+hhjFtjQTDl/
 nNN1QnhOMdC2+s0XlEouaxc=
X-Google-Smtp-Source: ABdhPJxeAuy6zwgnL2BAFHv4JR0l+IAQbvWyhtMSFa1EeYYn61Gu32pAFthz8U+jS2dHiL7On5p1Vg==
X-Received: by 2002:a92:c50d:: with SMTP id r13mr7052415ilg.264.1601774278072; 
 Sat, 03 Oct 2020 18:17:58 -0700 (PDT)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id t64sm3575194ild.10.2020.10.03.18.17.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 03 Oct 2020 18:17:57 -0700 (PDT)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/8] staging: rtl8723bs: replace _RND4 with round_up()
Date: Sat,  3 Oct 2020 20:17:37 -0500
Message-Id: <20201004011743.10750-2-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201004011743.10750-1-ross.schm.dev@gmail.com>
References: <20201004011743.10750-1-ross.schm.dev@gmail.com>
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
 Ross Schmidt <ross.schm.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use round_up instead of inline _RND4.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c          |  2 +-
 drivers/staging/rtl8723bs/hal/sdio_ops.c          |  2 +-
 drivers/staging/rtl8723bs/include/osdep_service.h | 11 -----------
 3 files changed, 2 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index bd18d1803e27..047ec5167f86 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -469,7 +469,7 @@ int rtw_cmd_thread(void *context)
 
 		pcmdpriv->cmd_issued_cnt++;
 
-		pcmd->cmdsz = _RND4((pcmd->cmdsz));/* _RND4 */
+		pcmd->cmdsz = round_up((pcmd->cmdsz), 4);
 
 		memcpy(pcmdbuf, pcmd->parmbuf, pcmd->cmdsz);
 
diff --git a/drivers/staging/rtl8723bs/hal/sdio_ops.c b/drivers/staging/rtl8723bs/hal/sdio_ops.c
index 544d5a093229..465f51b99d39 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_ops.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_ops.c
@@ -474,7 +474,7 @@ static u32 sdio_write_port(
 		return _FAIL;
 	}
 
-	cnt = _RND4(cnt);
+	cnt = round_up(cnt, 4);
 	HalSdioGetCmdAddr8723BSdio(adapter, addr, cnt >> 2, &addr);
 
 	if (cnt > psdio->block_transfer_len)
diff --git a/drivers/staging/rtl8723bs/include/osdep_service.h b/drivers/staging/rtl8723bs/include/osdep_service.h
index ea3f4f3c86d2..8f0e5cbf485b 100644
--- a/drivers/staging/rtl8723bs/include/osdep_service.h
+++ b/drivers/staging/rtl8723bs/include/osdep_service.h
@@ -132,17 +132,6 @@ static inline int rtw_bug_check(void *parg1, void *parg2, void *parg3, void *par
 
 #define _RND(sz, r) ((((sz)+((r)-1))/(r))*(r))
 
-static inline u32 _RND4(u32 sz)
-{
-
-	u32 val;
-
-	val = ((sz >> 2) + ((sz & 3) ? 1 : 0)) << 2;
-
-	return val;
-
-}
-
 static inline u32 _RND8(u32 sz)
 {
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
