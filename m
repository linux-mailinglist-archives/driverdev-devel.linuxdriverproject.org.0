Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C819826E
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 20:12:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2558F8643D;
	Wed, 21 Aug 2019 18:12:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xZphI-l_eDRQ; Wed, 21 Aug 2019 18:12:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E672C851AA;
	Wed, 21 Aug 2019 18:12:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6AACB1BF417
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 18:12:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 68019203FC
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 18:12:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EzOvWcUK2iVs for <devel@linuxdriverproject.org>;
 Wed, 21 Aug 2019 18:12:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 778B9203F4
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 18:12:20 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id w10so1765309pgj.7
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 11:12:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=ggqd974gCpWCPzLLF2L1xsiqYnOd5O3DgGhiZnJEAO0=;
 b=tJh7JRVMEPZ4OOOXozjXJ9vpFbZbZXrj4yWcWNfGTIVSMxc/3yets1+Ht/+aocJkSp
 UJeve1dm4cSJ3Y9th16OYFxU4Z4itTa5jVAaMyoKa0YJIlUii+ox7uJpQ2XboAzLw3Kf
 ql3F1bihj/g2JHx7fokTc1ePtlkLuveY4rpCp2OkOt8fxoN+A8zaL2z2o7Sp2pmG3Ac4
 dcQ+ZrVOf6/ohorxJwEatuLA4lar+CeOyNwFT+zxfK6Oui/lzlfOobKpE1/s3E7dbXj2
 eIIEqlqGTUOa0IxUhZ4YdwXMyOXqgffdGYDa486esARgjxTTOcc2/EzZC234ysByt2FI
 gLNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=ggqd974gCpWCPzLLF2L1xsiqYnOd5O3DgGhiZnJEAO0=;
 b=WnGE5wZQbGJ10PYWhPmb+3YJgblA0pFfkbaGzLLkqL+wQ+oIEIolvBhw5LXlEU2ymF
 xh889iGX2zIllOHhfIHL8o04oitG+i6yaEoYh849R5MkyYl2AGiGRxDpFaGaqTegmgiQ
 +INi62SUcMXXbAtvRaSiV08vELpGGAbsMP6PakMsm8ey6M6ty/zLe614rDlp52Rdpb1y
 ZSaYgiT8XcKMjgrQRnGHnCZ8VqgX6InNm8vgfbXCXUrI86tB9oSJM+8EwmNDGwV//LLJ
 woKZbydi0dzDxyEb1QOwiioodMMDjZdmJuhz0NaKEjzUg27H9ofTs6eKQxx+4pLi1RQx
 1aLA==
X-Gm-Message-State: APjAAAWtKFZerF+wz2xgzrvCVauTvUIK6C83C+JeW411i5mAK5dn13T/
 YTWeD6mZC2DjsUBukTYsjok=
X-Google-Smtp-Source: APXvYqxGh49njT0N24zXnsoK253QBW6RrDonOT45H0ouC7deRYmlobL7T0rLU9oRKo/PQTrGi7dzvg==
X-Received: by 2002:aa7:90c9:: with SMTP id k9mr36003741pfk.171.1566411140037; 
 Wed, 21 Aug 2019 11:12:20 -0700 (PDT)
Received: from saurav ([123.201.163.53])
 by smtp.gmail.com with ESMTPSA id f14sm25384157pfn.53.2019.08.21.11.12.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 11:12:19 -0700 (PDT)
Date: Wed, 21 Aug 2019 23:42:14 +0530
From: Saurav Girepunje <saurav.girepunje@gmail.com>
To: gregkh@linuxfoundation.org;, nishkadg.linux@gmail.com;,
 hariprasad.kelam@gmail.com;, mamtashukla555@gmail.com;,
 shobhitkukreti@gmail.com;, benniciemanuel78@gmail.com;,
 puranjay12@gmail.com;, devel@driverdev.osuosl.org;,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rt;8723bs: os_dep: Drop condition with no effect
Message-ID: <20190821181208.GA10930@saurav>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: saurav.girepunje@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

As the "else if" and "else" branch body are identical the condition
has no effect. So drop the "else if" condition.

Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 90c2997256b7..36ea7256329a 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -215,8 +215,6 @@ static char *translate_scan(struct adapter *padapter,
 	} else if (ht_cap) {
 		if (mcs_rate&0x8000) { /* MCS15 */
 			max_rate = (bw_40MHz) ? ((short_GI)?300:270):((short_GI)?144:130);
-		} else if (mcs_rate&0x0080) { /* MCS7 */
-			max_rate = (bw_40MHz) ? ((short_GI)?150:135):((short_GI)?72:65);
 		} else { /* default MCS7 */
 			/* DBG_871X("wx_get_scan, mcs_rate_bitmap = 0x%x\n", mcs_rate); */
 			max_rate = (bw_40MHz) ? ((short_GI)?150:135):((short_GI)?72:65);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
