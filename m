Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 313C41E4FAB
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 22:54:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B286288A8B;
	Wed, 27 May 2020 20:54:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jykw6R9PvFoX; Wed, 27 May 2020 20:54:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 34313888BF;
	Wed, 27 May 2020 20:54:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EEF9A1BF591
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 20:54:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EB6BB87F7F
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 20:54:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P3S-983opkXG for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 20:54:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2A8BE87F6A
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 20:54:40 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id a13so10646036pls.8
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 13:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=0PiLFUHjJ3TV2xcfUTcBbUSBMI/CnZK15s/joy4TG+Y=;
 b=gY23dNqiZtCL+lz80go6c7oVIXjBIhyhcV2JSOZV4pqRf79boVoadZBc4SIKj2+Xu1
 k1Ns6Qh3ueAFxQuC4HWqhwfJ57/Qnx78BDrFrwFdXQZg/uC14VrdMJ5bfoLlXq4lc4BV
 CjAvdb2YYuf9B7aArvsqJE2RQBEQTwx2WMbWx2Gc64mnUFfirkcnl6sR8T/Udl08Xpo7
 yz03yC4GNLHTD1/+l4dcQNRXyGHw79LAHLoLCMxtFjDfq/kJD16FL3skM2ujZtZLKMOT
 GV0DKUO6KtSTxzNts1+hVNYkeijJDhV9/a0t+v1iL3rFILT4FiEdxTkpfezgnJNO5ANv
 wn9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=0PiLFUHjJ3TV2xcfUTcBbUSBMI/CnZK15s/joy4TG+Y=;
 b=otvW04CD5ioivdUNAI5iHGgRbGq7ZIXu8miby9ktXKpapP0WlJ2UnbXhX1zTeiR06u
 gY6hDy/qlxeABeTTmpnB83009X3ae3b4ubBgrASXqc4ys7a0dJYcrJp0dCjmOIWEKbfr
 TJuyjkD4p1ekd2mCx1TqMfm4K7+RN35WdXuJBDkI7sO6TWCI2D+o9h5GgWL3pEdezWSd
 w6nzksU9OuVgsfyICemy1mEIkM/zfJRZP8xEb8CC2NMcAJJgFo02wVKg/CTTTy0oKa++
 3L0Jd8mI/gDeB1T42BiXTUyXY2ZhaVNSjODZGzLDJ+dRCdLkDMheHyQF5BEfZG5lhj0T
 jNfQ==
X-Gm-Message-State: AOAM530p4MqWXn7R4CyRjs2PmJlBuzE3YpO57tjxMwIZaLjVoNFTG3Rb
 btJnkQbF3/esjeJH0PVyd1c=
X-Google-Smtp-Source: ABdhPJwV8OJTbrEJlcXxHa5WpihgHyU1h/uvcIml2IOtVxTmnKMbONosMFdkhG4t36EX7+JYvOXFWA==
X-Received: by 2002:a17:902:b203:: with SMTP id
 t3mr213803plr.129.1590612879611; 
 Wed, 27 May 2020 13:54:39 -0700 (PDT)
Received: from jordon-HP-15-Notebook-PC.domain.name ([122.171.201.5])
 by smtp.gmail.com with ESMTPSA id x12sm2895477pfo.72.2020.05.27.13.54.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 27 May 2020 13:54:38 -0700 (PDT)
From: Souptick Joarder <jrdr.linux@gmail.com>
To: rspringer@google.com, toddpoynor@google.com, benchan@chromium.org,
 gregkh@linuxfoundation.org
Subject: [PATCH] staging: gasket: Convert get_user_pages*() -->
 pin_user_pages*()
Date: Thu, 28 May 2020 02:32:42 +0530
Message-Id: <1590613362-27495-1-git-send-email-jrdr.linux@gmail.com>
X-Mailer: git-send-email 1.9.1
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
Cc: devel@driverdev.osuosl.org, John Hubbard <jhubbard@nvidia.com>,
 linux-kernel@vger.kernel.org, Souptick Joarder <jrdr.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This code was using get_user_pages_fast(), in a "Case 2" scenario
(DMA/RDMA), using the categorization from [1]. That means that it's
time to convert the get_user_pages_fast() + put_page() calls to
pin_user_pages_fast() + unpin_user_page() calls.

There is some helpful background in [2]: basically, this is a small
part of fixing a long-standing disconnect between pinning pages, and
file systems' use of those pages.

[1] Documentation/core-api/pin_user_pages.rst

[2] "Explicit pinning of user-space pages":
	https://lwn.net/Articles/807108/

Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
Cc: John Hubbard <jhubbard@nvidia.com>

Hi,

I'm compile tested this, but unable to run-time test, so any testing
help is much appriciated.
---
 drivers/staging/gasket/gasket_page_table.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/gasket/gasket_page_table.c b/drivers/staging/gasket/gasket_page_table.c
index f6d7157..d712ad4 100644
--- a/drivers/staging/gasket/gasket_page_table.c
+++ b/drivers/staging/gasket/gasket_page_table.c
@@ -449,7 +449,7 @@ static bool gasket_release_page(struct page *page)
 
 	if (!PageReserved(page))
 		SetPageDirty(page);
-	put_page(page);
+	unpin_user_page(page);
 
 	return true;
 }
@@ -486,12 +486,12 @@ static int gasket_perform_mapping(struct gasket_page_table *pg_tbl,
 			ptes[i].dma_addr = pg_tbl->coherent_pages[0].paddr +
 					   off + i * PAGE_SIZE;
 		} else {
-			ret = get_user_pages_fast(page_addr - offset, 1,
+			ret = pin_user_pages_fast(page_addr - offset, 1,
 						  FOLL_WRITE, &page);
 
 			if (ret <= 0) {
 				dev_err(pg_tbl->device,
-					"get user pages failed for addr=0x%lx, offset=0x%lx [ret=%d]\n",
+					"pin user pages failed for addr=0x%lx, offset=0x%lx [ret=%d]\n",
 					page_addr, offset, ret);
 				return ret ? ret : -ENOMEM;
 			}
-- 
1.9.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
