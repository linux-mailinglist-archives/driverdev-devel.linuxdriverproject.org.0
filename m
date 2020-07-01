Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B18C7210E21
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Jul 2020 16:55:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1C55A89415;
	Wed,  1 Jul 2020 14:55:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DhoJgrsg7q8n; Wed,  1 Jul 2020 14:55:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D1AB3890E0;
	Wed,  1 Jul 2020 14:55:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E812E1BF32B
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 14:55:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BC9B726798
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 14:55:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3QAzCuSrZ3Nd for <devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 14:55:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 96EE626730
 for <devel@driverdev.osuosl.org>; Wed,  1 Jul 2020 14:55:28 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id u185so9075519pfu.1
 for <devel@driverdev.osuosl.org>; Wed, 01 Jul 2020 07:55:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KwS0U3wkRWjqeFU6cmJ2Tga5ln6uuM49Bbda6HKBXmc=;
 b=PIh8cTNCf6N9+aDs88nBOGP0uMZvFU+a+UdEQjOgUv0PkE8df8Er3LCZR8xbBhvZly
 QiYImNoN6h9jAaa1g9p2WajZR+ax7Bn1VZSHUqXsn3ndFLgzwhVZalrkoqKnN4llwL1k
 gDshYBM1Xu1t16rce5ZEXKlK9swJIMJMMEr1/u8kKmE3QFgsTkPiAF8QADO3i74F1zWc
 zUSFHxJLGSAakxKwOOUwZq+XDp8rsTMu6JSJHb7Vy6naXMVgx/fPNXCMffpjPh/BhEnA
 p7pxro7oPXtPx0t1rTlkAHvy0p6Hudrwa+3Jv9kJ0GIATnxh+JVz7sBkruDxrc/Vv4iP
 OJPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KwS0U3wkRWjqeFU6cmJ2Tga5ln6uuM49Bbda6HKBXmc=;
 b=rfJtQHwKX6V+G6fhvNSWo/HoLIaIJ6uJfK83CwaXoHCeWJzJcwG9aHrrkSJjN+cPN0
 kbyCrwgwR/dfWLXiAkZKyjiJuornCbDttwAqbvZRGjUECqQ7NcxqQG40ksMQw8zSai+u
 86ijKD/3FAcCE1FNCAG/GtPKoo6O6thehonlmIGlVFf8yCDKmU+exBDdm9V224yMyIXP
 AocvoqaJNuTyDj2Jebl6E8wrlq/DMS+1QyPWS3eNLTRcJLIxizlWTtgWUyIDht293/Ty
 uajsrRDKEwtbr283vGsCZuM/yv7tkXC3p8kGREIb+oTSYKqvkVQImspQbPqeSo15Ciq3
 i6Mg==
X-Gm-Message-State: AOAM532yGkMsvXgSmBsyszTp8tok4LlsG8wo9I/N58OtTa9UArGMi1Oo
 NBOqnQgDRcqLGyZS0BDY5oY=
X-Google-Smtp-Source: ABdhPJwYoENA8gQ4mtFH5RzePHCtQD1Z/Qi9qE1QPH1/CEQ+ToA/uJwiGDUWDFUlwtFwORb8UsSung==
X-Received: by 2002:aa7:90c8:: with SMTP id k8mr7205258pfk.5.1593615327982;
 Wed, 01 Jul 2020 07:55:27 -0700 (PDT)
Received: from localhost.localdomain ([125.62.107.222])
 by smtp.googlemail.com with ESMTPSA id kx3sm5442630pjb.32.2020.07.01.07.55.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jul 2020 07:55:27 -0700 (PDT)
From: Puranjay Mohan <puranjay12@gmail.com>
To: Larry.Finger@lwfinger.net
Subject: [PATCH] Drivers: rtl8188eu: core: Fix coding style issue
Date: Wed,  1 Jul 2020 20:24:57 +0530
Message-Id: <20200701145457.9562-1-puranjay12@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 Puranjay Mohan <puranjay12@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use %s and  __func__ in place of function names.
This solves following checkpatch.pl warning
WARNING: Prefer using '"%s...", __func__' to using 'rtw_do_join', this function's name, in a string

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ioctl_set.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c b/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
index 7bb26c362b10..9cc77ab4fd6b 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
@@ -25,7 +25,7 @@ u8 rtw_do_join(struct adapter *padapter)
 	phead = get_list_head(queue);
 	plist = phead->next;
 
-	RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, ("\n rtw_do_join: phead = %p; plist = %p\n\n\n", phead, plist));
+	RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, ("\n %s: phead = %p; plist = %p\n\n\n", __func__, phead, plist));
 
 	pmlmepriv->cur_network.join_res = -2;
 
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
