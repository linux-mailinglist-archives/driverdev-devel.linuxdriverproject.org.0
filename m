Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E836DB78AD
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Sep 2019 13:49:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 80ABD214F6;
	Thu, 19 Sep 2019 11:49:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uvofQNOxml5F; Thu, 19 Sep 2019 11:49:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3B1BF2206E;
	Thu, 19 Sep 2019 11:49:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5ACE31BF2C7
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 11:49:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 577CE21FFB
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 11:49:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QpLwh35218LY for <devel@linuxdriverproject.org>;
 Thu, 19 Sep 2019 11:49:33 +0000 (UTC)
X-Greylist: delayed 00:09:35 by SQLgrey-1.7.6
Received: from mail2.protonmail.ch (mail2.protonmail.ch [185.70.40.22])
 by silver.osuosl.org (Postfix) with ESMTPS id 6934C214F6
 for <devel@driverdev.osuosl.org>; Thu, 19 Sep 2019 11:49:33 +0000 (UTC)
Date: Thu, 19 Sep 2019 11:39:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aurabindo.in;
 s=protonmail; t=1568893195;
 bh=P6KCUgwyggXktYCrQ9GHQnIhjLgRZDIyVhon5eQuAeg=;
 h=Date:To:From:Cc:Reply-To:Subject:Feedback-ID:From;
 b=VJjNIOqECPlxhzmMJZfJ5xOJyScZUcz43jWlbhS5blvtFKUWQlqinWgBFlNDfnEML
 Ch6HfZiEX2+oTG5E1SwlwCtewelbwzuzkYw9MCeuf664mJIzA95rNfJ9y8kQLCIazy
 iYrPzrYuF47KVxCRGjY+vv6G/bgF69VAgdV2wJZY=
To: gregkh@linuxfoundation.org
From: Aurabindo Jayamohanan <mail@aurabindo.in>
Subject: [PATCH] staging: board: use appropriate macro to initialize struct
Message-ID: <20190919113945.13700-1-mail@aurabindo.in>
Feedback-ID: D1Wwva8zb0UdpJtanaReRLGO3iCsewpGmDn8ZDKmpao-Gnxd2qXPmwwrSQ99r5Q15lmK-D8x6vKzqhUKCgzweA==:Ext:ProtonMail
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
Reply-To: Aurabindo Jayamohanan <mail@aurabindo.in>
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Make code more readable by using macros defined for initializing
struct resource

Signed-off-by: Aurabindo Jayamohanan <mail@aurabindo.in>
---
 drivers/staging/board/armadillo800eva.c | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/board/armadillo800eva.c b/drivers/staging/board/armadillo800eva.c
index 962cc0c79988..0225234dd7aa 100644
--- a/drivers/staging/board/armadillo800eva.c
+++ b/drivers/staging/board/armadillo800eva.c
@@ -50,16 +50,8 @@ static struct sh_mobile_lcdc_info lcdc0_info = {
 };
 
 static struct resource lcdc0_resources[] = {
-	[0] = {
-		.name	= "LCD0",
-		.start	= 0xfe940000,
-		.end	= 0xfe943fff,
-		.flags	= IORESOURCE_MEM,
-	},
-	[1] = {
-		.start	= 177 + 32,
-		.flags	= IORESOURCE_IRQ,
-	},
+	DEFINE_RES_MEM_NAMED(0xfe940000, 0x4000, "LCD0"),
+	DEFINE_RES_IRQ(177 + 32),
 };
 
 static struct platform_device lcdc0_device = {
-- 
2.23.0


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
