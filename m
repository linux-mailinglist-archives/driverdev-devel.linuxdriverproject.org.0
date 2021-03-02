Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF4532A41B
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Mar 2021 16:30:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B343A43177;
	Tue,  2 Mar 2021 15:30:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L2HlvoqW8Yiv; Tue,  2 Mar 2021 15:30:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 010574314F;
	Tue,  2 Mar 2021 15:30:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1962E1BF337
 for <devel@linuxdriverproject.org>; Tue,  2 Mar 2021 15:30:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 078556063A
 for <devel@linuxdriverproject.org>; Tue,  2 Mar 2021 15:30:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KB8PLeUbnDzf for <devel@linuxdriverproject.org>;
 Tue,  2 Mar 2021 15:30:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com
 [209.85.214.179])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 721FA605A5
 for <devel@driverdev.osuosl.org>; Tue,  2 Mar 2021 15:30:03 +0000 (UTC)
Received: by mail-pl1-f179.google.com with SMTP id p5so12236598plo.4
 for <devel@driverdev.osuosl.org>; Tue, 02 Mar 2021 07:30:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9EqguA/mJ/5XIJaGQevLoJ3cln+41TNxK2n6DJaVpO4=;
 b=jbaxDvE4/gD8R+3xgh0+pFKqrFtwPQHpBk/Yk361LrSppOx9t80Wj0URRIKwAWA7WL
 fAnQ8/Do/nFBmVDJ96Z1pWKPxDQTBAD9R2uXPdAifqsCOPdqq7YLuK4r7za5M81sQyoZ
 2qtmBsi5CF9yx0wpr+S4TN2aFalwQNWZS9PZwHnS+rt5qfBTenn8f6RXyn+rwXAdFM/u
 ulDDOLRsfQIXSNlTVv9LLh2ifej/2WN5G0BJAIbXCizaDn+Rzt4ubpFGtGrzHXM26JK7
 bWdP8CkO2wUZo5/JLe0pjBzwe4JL7ipIEDZhiDfjERRMH5WSMLfsgpnSiJrY4YPEpLBx
 hI2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9EqguA/mJ/5XIJaGQevLoJ3cln+41TNxK2n6DJaVpO4=;
 b=FbnvMylbAkr87TSWYqXOkauBxVCgsA+mUUKw3sSEOgaua5PQY/jWwZNBRFhBDg99yG
 uRntY5T7/OzJehjiRoIu2bg2N0LiZ68o6K63fxOgQEHTyKz8EdSt0SIczUFWklQeShEO
 FLjjIi0MlTQgSZxTSYFXq72CTFo1zGlOEBxb0j7D8vk1713vhsydMxWj0SwA5JE7fmAJ
 cVhfRo0lVfJTGeKoZXI/3qEkkw0DPhcBIjSgMc9MlV3loVu8HClH31FYQkXd42VYf8kO
 jmkWNfKTnx7IPhjOIyTd8HXlqy3jRhZC5stbZFA6KDJOZvrt8A70ARzbpX5g+kroKeg/
 IBxg==
X-Gm-Message-State: AOAM530jFT+qAuX2chTm8EC1L3hMlRprKr2SzWrLz672vb3GngHAazav
 DwGtvZK/rvg39PKvXWLvpU0=
X-Google-Smtp-Source: ABdhPJwWIv8yuaaq7RCoko+1zUz3RnLJ+4DY0SsEDNr8gFvwiDOdUG2DjapsUNakaF5t/qaYIsLfmQ==
X-Received: by 2002:a17:90a:d58a:: with SMTP id
 v10mr5062185pju.36.1614699002924; 
 Tue, 02 Mar 2021 07:30:02 -0800 (PST)
Received: from PerrinsPC.modem ([2001:8003:8431:d200:220b:84b2:a334:cbad])
 by smtp.gmail.com with ESMTPSA id n27sm2780543pgd.31.2021.03.02.07.29.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Mar 2021 07:30:02 -0800 (PST)
From: Perrin Smith <perrinjamessmith@gmail.com>
X-Google-Original-From: Perrin Smith <perrinjemessmith@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8192e: remove unnecessary break
Date: Tue,  2 Mar 2021 23:29:03 +0800
Message-Id: <20210302152903.2930-1-perrinjemessmith@gmail.com>
X-Mailer: git-send-email 2.26.2
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
Cc: devel@driverdev.osuosl.org, yashsri421@gmail.com, tiwai@suse.de,
 linux-kernel@vger.kernel.org, perrinjamessmith@gmail.com,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Perrin Smith <perrinjamessmith@gmail.com>

removed unnecessary break at end of while loop

Signed-off-by: Perrin Smith <perrinjamessmith@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_rx.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index b8ab34250e6a..2de6330b7737 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -460,8 +460,6 @@ static bool AddReorderEntry(struct rx_ts_record *pTS,
 			((struct rx_reorder_entry *)list_entry(pList->next,
 			struct rx_reorder_entry, List))->SeqNum))
 			return false;
-		else
-			break;
 	}
 	pReorderEntry->List.next = pList->next;
 	pReorderEntry->List.next->prev = &pReorderEntry->List;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
