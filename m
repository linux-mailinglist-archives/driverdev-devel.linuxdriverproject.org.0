Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F225DB33
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Apr 2019 06:37:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AF45D230FE;
	Mon, 29 Apr 2019 04:37:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G8fDzeGDdjRp; Mon, 29 Apr 2019 04:37:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 37FEF230ED;
	Mon, 29 Apr 2019 04:37:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 28C8C1BF968
 for <devel@linuxdriverproject.org>; Mon, 29 Apr 2019 04:37:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2380F230ED
 for <devel@linuxdriverproject.org>; Mon, 29 Apr 2019 04:37:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 69oLc0wVHGGi for <devel@linuxdriverproject.org>;
 Mon, 29 Apr 2019 04:37:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 43E1922624
 for <devel@driverdev.osuosl.org>; Mon, 29 Apr 2019 04:37:05 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id e67so4674583pfe.10
 for <devel@driverdev.osuosl.org>; Sun, 28 Apr 2019 21:37:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=mHiHv3HQ9faFzIxO2B9sfS+vzSObRQj6POAIshoSRiQ=;
 b=B59Qf5x1z6kyQzoUOfXBNffjlJcAB6kCe1ckXWE+0kQ8oCocURaexoS67ewY8VO2o/
 GfoGS/IEEfQI4TU4vPihr+cK0t1IYhzAgcKean9X3QlQjvjqM3PCQCqJwnr1tAL18syO
 5AH/aGDB3kHIaKtFyAQuVXbP9IsBSB1Ey5W0OemA+sfc5fYK6MYpiq039kTS91elKJto
 Blb3X62hiTzZJFn0gdiXGLudasktCbkTfOapizovR4ioFxjxvB34xCIqjk5IOtoc44Fe
 nFKf85fipTL+MJ7qF1XqhZkv0TJ0B8D2/K9GdXbV6AdckgIuJduNa5Escx0smrSKpuRP
 rP3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=mHiHv3HQ9faFzIxO2B9sfS+vzSObRQj6POAIshoSRiQ=;
 b=cKQkmFzHXzrN7x/srzpgbQwRn6taaLC2245RhnWjO9k/4h4Ig9bn6msXLDhe4QONM8
 W5pDT3wyeWOX5y9fY8LIHlJRQ37l9259CUjFy4cIHmHETIg3wuts7hUJwhpQrnWOQ6LK
 sB+g+LEM0ecZDcPz2AGG83gGOIGXBG9V65gmkyPO3zw6NCcmI0TYKEMiwZUAFque2sU/
 4QFIStaGLewyEZ6Uti8a9WsdaDwTK8bMKL4bXtvfBvTZWoVc7UqL0baXB5OmpnXVTtPs
 n5o2Qi3kkwOq5dr4cM4+vY+jRww35gSQlox00eYC6qvWM8IdYWOxyhc/MZ3UGlODe7W4
 JjDQ==
X-Gm-Message-State: APjAAAVFGRoH/5s7ugA8Gb3oO8Ga1qleMcYTDYOflFvN8ksiffhkExWi
 vW/ihtOVs9rzOhcPngsZobc=
X-Google-Smtp-Source: APXvYqzCuRiLYvNfKIMHqlM0coS7XSbHyK/K9w1wTBIFs3Kv9F7w5UfbBev5TuuLLk7Hi2yonTKh5A==
X-Received: by 2002:aa7:943b:: with SMTP id y27mr59996451pfo.59.1556512624927; 
 Sun, 28 Apr 2019 21:37:04 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:12a5:ab58:559f:ec82:1c85:ce7])
 by smtp.gmail.com with ESMTPSA id
 g2sm54201297pfd.134.2019.04.28.21.37.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 21:37:04 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: core: Remove else after return statement.
Date: Mon, 29 Apr 2019 10:06:53 +0530
Message-Id: <20190429043653.28054-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, Julia.Lawall@lip6.fr,
 Vatsala Narang <vatsalanarang@gmail.com>, hadess@hadess.net,
 Larry.Finger@lwfinger.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove else after return statement as it is not useful. Issue found
using checkpatch.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index c6ae29b3e599..d4842ba64951 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -697,10 +697,9 @@ unsigned int OnProbeReq(struct adapter *padapter, union recv_frame *precv_frame)
 					psta->aid = 0;
 					DBG_871X("no room for more AIDs\n");
 					return _SUCCESS;
-				} else {
-					pstapriv->sta_aid[psta->aid - 1] = psta;
-					DBG_871X("allocate new AID = (%d)\n", psta->aid);
 				}
+				pstapriv->sta_aid[psta->aid - 1] = psta;
+				DBG_871X("allocate new AID = (%d)\n", psta->aid);
 			}
 
 			psta->qos_option = 1;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
