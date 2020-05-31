Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4AE1E9618
	for <lists+driverdev-devel@lfdr.de>; Sun, 31 May 2020 09:15:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 248A020369;
	Sun, 31 May 2020 07:15:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xHsOWZZ4v++y; Sun, 31 May 2020 07:15:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F07EF2037A;
	Sun, 31 May 2020 07:15:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6A4AC1BF3E1
 for <devel@linuxdriverproject.org>; Sun, 31 May 2020 07:15:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 644AD86FFF
 for <devel@linuxdriverproject.org>; Sun, 31 May 2020 07:15:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p3G1h7cR94Mx for <devel@linuxdriverproject.org>;
 Sun, 31 May 2020 07:15:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D101786E69
 for <devel@driverdev.osuosl.org>; Sun, 31 May 2020 07:15:12 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id 185so2035633pgb.10
 for <devel@driverdev.osuosl.org>; Sun, 31 May 2020 00:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Ux7WUcgWZimk6zm8mqRWJU5+TgqCpZUYOAeG6vLMXrg=;
 b=qTsNxywe68ZI/fz9ywvs8SvNYEGP6hCyiYMHw4H/up9vXWrOr9BO57k/U0oQrZHXFE
 hl7jg0BxW4qfz3g6fF1GheNAKv9Fx7O648M0mIxWBAtFS77HzFjQudfRCv6P+F/aM6tF
 qENHSb+XztaNpHjDD0/vFzIO/nN1MpOlPhk7+sbn5e1dpOA0Dg/XXBUfOsSGZb+dN0kC
 xIOoG3RcP7lKSjmcmBSuYP+eul7MrkOr7XYa3XZ/UIk3K4u7cnIsOYxzS+yhwCKcUq7b
 ZmvScUTVTdPn/431M+mlzNaqvip4u/C1qlK0aeUHHSX+DUNg3oJFwqsBVqJ2ys7xJakp
 JI7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Ux7WUcgWZimk6zm8mqRWJU5+TgqCpZUYOAeG6vLMXrg=;
 b=f7tz0yndyOmzqkVZRpxdLbaya/oBG93rhkzN6htfnt1fL934AopDgCysu6Fc/nTZ/e
 /fbsxJBexQUOENICWxXeEnpdfkbFQ27SgIfc6cERjrb7zhfVX+abhNOIKwkdnlDqkPFi
 2qYT6Ji8v3ql3zIiyZqb7TFTDEeUuUvi1HjZ/emRM/Qo1zeX4aENGW56QfSFAdl8rWqq
 4nEBthsOJxUsW29tBXC0IivWjrcqNpcr9wJ++C85Ef0EzmYuAcqYRfAsgxlzTpKp84rN
 WAsZBn7REMlvcftidF43dyXvUXRDR699NhZky7a5ALlEV2Ljphri5xTOd0JR5H52r5dg
 /G2w==
X-Gm-Message-State: AOAM5310I1P/iOIjVrcUCj+BXK0aZwOIVaExYCspPmgTCUiJEajaJ+Ou
 cIqNAim3IviZFQ6E3vC9IhI=
X-Google-Smtp-Source: ABdhPJx1j6Ob8NR+KMVwnkpfmsxyNVDmQks6gE8lWHM4X0A71Zoh/5T0aKRIqSr+NIWhJeOqfgGeAw==
X-Received: by 2002:a63:c109:: with SMTP id w9mr8591855pgf.203.1590909312419; 
 Sun, 31 May 2020 00:15:12 -0700 (PDT)
Received: from jordon-HP-15-Notebook-PC.domain.name ([122.182.225.191])
 by smtp.gmail.com with ESMTPSA id m2sm3925943pjk.52.2020.05.31.00.15.09
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 31 May 2020 00:15:11 -0700 (PDT)
From: Souptick Joarder <jrdr.linux@gmail.com>
To: rspringer@google.com, toddpoynor@google.com, benchan@chromium.org,
 gregkh@linuxfoundation.org
Subject: [PATCH] staging: gasket: Convert get_user_pages*() -->
 pin_user_pages*()
Date: Sun, 31 May 2020 12:53:11 +0530
Message-Id: <1590909791-3871-1-git-send-email-jrdr.linux@gmail.com>
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
 linux-kernel@vger.kernel.org, Dan Carpenter <dan.carpenter@oracle.com>,
 Souptick Joarder <jrdr.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In 2019, we introduced pin_user_pages*() and now we are converting
get_user_pages*() to the new API as appropriate. [1] & [2] could
be referred for more information.

[1] Documentation/core-api/pin_user_pages.rst

[2] "Explicit pinning of user-space pages":
	https://lwn.net/Articles/807108/

Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
Cc: John Hubbard <jhubbard@nvidia.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>

---
Hi,

I'm compile tested this, but unable to run-time test, so any testing
help is much appriciated.

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
