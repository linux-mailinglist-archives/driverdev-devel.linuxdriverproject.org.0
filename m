Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF32266A2F
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Sep 2020 23:41:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0719487638;
	Fri, 11 Sep 2020 21:41:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JlxWGFrc5Ogg; Fri, 11 Sep 2020 21:41:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CBC998751D;
	Fri, 11 Sep 2020 21:41:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 711C01BF2F8
 for <devel@linuxdriverproject.org>; Fri, 11 Sep 2020 21:41:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6DCA78751D
 for <devel@linuxdriverproject.org>; Fri, 11 Sep 2020 21:41:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5ENqJW-Jev13 for <devel@linuxdriverproject.org>;
 Fri, 11 Sep 2020 21:41:26 +0000 (UTC)
X-Greylist: delayed 00:06:50 by SQLgrey-1.7.6
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D565587514
 for <devel@driverdev.osuosl.org>; Fri, 11 Sep 2020 21:41:26 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 1AC44460;
 Fri, 11 Sep 2020 17:34:36 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Fri, 11 Sep 2020 17:34:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dottedmag.net;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=GPhHRSsn+3Oj+ViN5tVn5ER8NU
 9iRGk63bQkhOZrY/g=; b=OHSE/9QcYxMHuvRrsMtPlmOn7hu3M5q5ZAsSdnYP0h
 mvesFivRo87Y/7wIPJ6P/u30gUxoQRe6gVi8+ZAc2hFE3nIToGT0cHsAfcux5ARw
 a/o9thgSSn5HRwKNzg9TXNw0YBmnygkrhKESb17/6fxCXpqJ43pRMsKCJ8eX3bfN
 u2Tzxjg8D0WkMB2oz9RBpReWOjmFzGCRZnnXKjzUJpTOgFfLoH9LKJRDfAezk0Pc
 qq08IEVoDh5dv6tF52iWx9MhgaOZmsy5p97mOS0MLtjaHJeK9LSnkGDbpXE0Xzwz
 UCrcDyviQva1iGHiZ1V3aGw/s1uXdUQjqVCbJAcaz3yg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=GPhHRSsn+3Oj+ViN5
 tVn5ER8NU9iRGk63bQkhOZrY/g=; b=YZ2DL1PbmAkNk2R0lteqeUP2oaWJZUoeb
 +8DL0b0Cq+SD/UISmgjkHCb0RW22SQy1cGsEJASmqH1hqCwoISXHoiZTBtXsldbU
 WEjqYYi3KacVAsJnYFGowKsM5lWiMTnDcEOcbVnET5VoNRw1YWd1ekT2t8PFw+Lz
 odKCZz215CVfq9kNJjCc5J/t8FQxWZu5ciNDYuZgmusCE5mFkqcsnTV5lzIKGpLG
 B2hU05vsAU745pU+PKvAwE8c1eAcKKN2TIp31GaqFJma9dM/KoB8ev64QQK07jLg
 mEpzc97m2DZ3pkU46NrAxv86sGdnNB67e4YqYCjmvoge418xc7DFA==
X-ME-Sender: <xms:a-1bX0hwKiDSVAX_DjmT6KIJa0ojFrgNL4TyRyLL4TmMfqVbXQbDOA>
 <xme:a-1bX9CaSA0Pi_lY69L0bLon7SAVZLcNYbkpYDs6jztEfisRr1cstg3eNPKr-Qdl1
 g5NyroMDNiTs-Mw9w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedrudehledgudeihecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefoihhkhhgrihhlucfiuhhsrghrohhvuceoughothhtvggumhgr
 ghesughothhtvggumhgrghdrnhgvtheqnecuggftrfgrthhtvghrnhepkedvueejieffhe
 egleelfeduueejgffftefftefhtedtvefhieevgfeljefhffeknecukfhppeelvddrvdeh
 uddrfeegrddvvdeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
 hfrhhomhepughothhtvggumhgrghesughothhtvggumhgrghdrnhgvth
X-ME-Proxy: <xmx:a-1bX8EiIfLrCLuvvU8BaNVu-ZB9MG8BAwLpmShA_ACQb1fk2HPp-g>
 <xmx:a-1bX1SeJIpPXjUpn-IOUJPkZbIlKD-jii6Bo-x6FVd0LjZGUqXMMw>
 <xmx:a-1bXxymisEtdd-JRqwn8fHg71pl_p6L6yUj7dMDdHKsf7MOlRYHCA>
 <xmx:a-1bXyqgibZxDtqyZMtXGGLoNCNde5dExRI7la-8GWoylztAAzmU_g>
Received: from newton.malta.dottedmag.net (c34-228.i07-9.onvol.net
 [92.251.34.228])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1A5B53064682;
 Fri, 11 Sep 2020 17:34:35 -0400 (EDT)
Received: by newton.malta.dottedmag.net (Postfix, from userid 501)
 id 84DB73D38F45; Fri, 11 Sep 2020 23:34:32 +0200 (CEST)
From: Mikhail Gusarov <dottedmag@dottedmag.net>
To: gregkh@linuxfoundation.org, alex.dewar90@gmail.com,
 devel@driverdev.osuosl.org
Subject: [PATCH] staging: emxx_udc: Remove misplaced debugging aid
Date: Fri, 11 Sep 2020 23:33:51 +0200
Message-Id: <20200911213350.15914-1-dottedmag@dottedmag.net>
X-Mailer: git-send-email 2.28.0
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
Cc: Mikhail Gusarov <dottedmag@dottedmag.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

emxx_udc.h contained a #if 0 block with debugging macros. These should
be supplied via command line or Kconfig.

Fixes checkstyle's
WARNING: Consider removing the code enclosed by this #if 0 and its #endif

Signed-off-by: Mikhail Gusarov <dottedmag@dottedmag.net>
---
 drivers/staging/emxx_udc/emxx_udc.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
index 45f076e5fdb0..bca614d69aca 100644
--- a/drivers/staging/emxx_udc/emxx_udc.h
+++ b/drivers/staging/emxx_udc/emxx_udc.h
@@ -9,11 +9,6 @@
 #define _LINUX_EMXX_H
 
 /*---------------------------------------------------------------------------*/
-/*----------------- Default undef */
-#if 0
-#define DEBUG
-#define UDC_DEBUG_DUMP
-#endif
 
 /*----------------- Default define */
 #define	USE_DMA	1
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
