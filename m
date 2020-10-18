Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 22434291DD3
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Oct 2020 21:49:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 44DC822F05;
	Sun, 18 Oct 2020 19:49:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M9IkkDnrZCMF; Sun, 18 Oct 2020 19:48:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1D51522D24;
	Sun, 18 Oct 2020 19:48:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1C7DD1BF568
 for <devel@linuxdriverproject.org>; Sun, 18 Oct 2020 19:48:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 16CB286BAE
 for <devel@linuxdriverproject.org>; Sun, 18 Oct 2020 19:48:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yYTDtShX5cLU for <devel@linuxdriverproject.org>;
 Sun, 18 Oct 2020 19:48:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EBF1186BA8
 for <devel@driverdev.osuosl.org>; Sun, 18 Oct 2020 19:48:50 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id h2so3891379pll.11
 for <devel@driverdev.osuosl.org>; Sun, 18 Oct 2020 12:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=KVokCa1jQc0NKaYn5u6NnepNorEN9zYqxTNtARgDiTU=;
 b=QBg3OTib9A4b13+lT32wEyMXcPPRx4saCS+IbaCu2uzjuOxPnnnS2QeIijUPZ5SbDu
 VKgpLaujm2Ffse+v2i6t+N9qrWD+GB/ARjXLLUdfaTdrN1XWVRp5z2e3x99t7O1+/Zxn
 mGn1RDQ4G4DOKBT2Kf/V6x9Pa/BW/68aTbDRNEgfZHdr+HPvw2Vg5ADA5gCG3EavKxdF
 nd5FUAsNe/7xFWT+ER55fGmvnznCWH5blxe2VRghVupGJTvgGfXt/oprYicd9zI+xjih
 shah4NuOujroOhO79oLM4Vk8533npQraZwuF3dp6E/NfJ4WoOLYYsE6Alhip4sqD/SDi
 fc3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=KVokCa1jQc0NKaYn5u6NnepNorEN9zYqxTNtARgDiTU=;
 b=ApHYBuSogOJZLsZibEDGw8Xjcaq8XJALIocPNT04XVToUaTkC+8yH5Gnr0Rph0SzBU
 H7eV7QcleDlv498iIwElQod8K7ZtDfBe9JkvQceiPeAe7FwIXIoM5xFrqZ3K73PPtzd7
 RV1JGhkWzjKD6biS7E+r/hY9FKG7Y2cE0KVTGPzjnFIYPJIcHANLF2SOBQ5ulqdF0tRB
 Tds/ZWTff86Hi1ieC59nAiBfLLIViQGt9YHoD6G9UPoJOdnIcMkAs4Oro++2dwceSu34
 8UACU2jv/kiwE+cjy9ZIURgYjDR6EZqVaOywbhFd+Ntyl58WJpfKUGa1ZtUiEDC+MtGY
 8TpA==
X-Gm-Message-State: AOAM5320Q83f40x9eTt5+mtzbRUIXB5PTRs7iigc5jfHcb+nCqxvD95L
 7WWUYn5OPwZgA6MwU1tdQYw=
X-Google-Smtp-Source: ABdhPJz0s4YnqLuWm0Zm8vhCtNMVAk10N4D3thkBrXRQlGqAok8t/PWJCY4C8QU2LBoMyDQY5ZRNSA==
X-Received: by 2002:a17:902:23:b029:d5:b88a:c782 with SMTP id
 32-20020a1709020023b02900d5b88ac782mr13984226pla.5.1603050530568; 
 Sun, 18 Oct 2020 12:48:50 -0700 (PDT)
Received: from ubuntu204 ([103.108.75.206])
 by smtp.gmail.com with ESMTPSA id y11sm1086865pfn.184.2020.10.18.12.48.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 18 Oct 2020 12:48:50 -0700 (PDT)
Date: Mon, 19 Oct 2020 01:18:45 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 devel@driverdev.osuosl.org
Subject: [PATCH 1/2] staging: comedi: Simplify conditional evaluation
Message-ID: <0fbce7fd820c72b6dd6dc8964d4bdaf433e39540.1603050372.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: mh12gx2825@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Boolean comparison of the condition inside unittest function is
unnecessary and can be simplified by directly using the condition
outcome for evaluation. Issue reported by :
scripts/coccinelle/misc/boolinit.cocci

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/comedi/drivers/tests/ni_routes_test.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/comedi/drivers/tests/ni_routes_test.c b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
index eaefaf596a37..7db83cf5e4aa 100644
--- a/drivers/staging/comedi/drivers/tests/ni_routes_test.c
+++ b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
@@ -499,13 +499,13 @@ void test_route_register_is_valid(void)
 	const struct ni_route_tables *T = &private.routing_tables;
 
 	init_pci_fake();
-	unittest(route_register_is_valid(4, O(4), T) == false,
+	unittest(!route_register_is_valid(4, O(4), T),
 		 "check for bad source 4-->4\n");
-	unittest(route_register_is_valid(0, O(1), T) == true,
+	unittest(!route_register_is_valid(0, O(1), T),
 		 "find first source\n");
-	unittest(route_register_is_valid(4, O(6), T) == true,
+	unittest(!route_register_is_valid(4, O(6), T),
 		 "find middle source\n");
-	unittest(route_register_is_valid(9, O(8), T) == true,
+	unittest(!route_register_is_valid(9, O(8), T),
 		 "find last source");
 }
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
