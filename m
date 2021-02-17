Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA8731DB51
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 15:21:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DE66D86365;
	Wed, 17 Feb 2021 14:21:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id swlAMNeqNlr0; Wed, 17 Feb 2021 14:21:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 252CE8630A;
	Wed, 17 Feb 2021 14:21:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B47BD1BF3A0
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 14:21:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A2DAE6F4CF
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 14:21:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C6kJPvz1up2M for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 14:21:42 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 0799F6F4D7; Wed, 17 Feb 2021 14:21:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E1B4E6F4BA
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 14:21:40 +0000 (UTC)
Received: from fews1.riseup.net (fews1-pn.riseup.net [10.0.1.83])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 4Dgg4s0RpBzFq23;
 Wed, 17 Feb 2021 06:21:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
 t=1613571693; bh=u27Lmkch+nLAvkxu4mMmLX/k/KYjiLg3s+1a0hp5aaQ=;
 h=From:To:Cc:Subject:Date:From;
 b=l0imE2kCPxvZkf9syb4FzORAKYgtsQply9XrkYmI4StSmBX/ErJrxcZjSw8Xjj02/
 ICzs/pRDzwWRhi3/Y8NvRJWITWlED8wraFGr+Q4+GtjFKr8laxPr5U9HwWsEi5wZTw
 NKDmqStQZcvREtG0ZoTGyqj61NgRX0OOAGewT/MI=
X-Riseup-User-ID: D64CE3937C4F71BCD8F1ECFC31DB49ABD2AC12BB883715A829BDA0B93E3618FF
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by fews1.riseup.net (Postfix) with ESMTPSA id 4Dgg4m147lz5vNX;
 Wed, 17 Feb 2021 06:21:28 -0800 (PST)
From: Sean Behan <codebam@riseup.net>
To: 
Subject: [PATCH] staging: emxx_udc: remove unused variable driver_desc
Date: Wed, 17 Feb 2021 09:21:15 -0500
Message-Id: <20210217142118.7107-1-codebam@riseup.net>
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
Cc: devel@driverdev.osuosl.org, codebam@riseup.net,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 nathan@kernel.org, Kumar Kartikeya Dwivedi <memxor@gmail.com>,
 Colin Ian King <colin.king@canonical.com>, Alex Dewar <alex.dewar90@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

When building with W=1 (or however you found it), there is a warning
that this variable is unused.

It is not used so remove it to fix the warning.

Signed-off-by: Sean Behan <codebam@riseup.net>
---
 drivers/staging/emxx_udc/emxx_udc.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index 3536c03ff523..741147a4f0fe 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -38,7 +38,6 @@ static struct gpio_desc *vbus_gpio;
 static int vbus_irq;
 
 static const char	driver_name[] = "emxx_udc";
-static const char	driver_desc[] = DRIVER_DESC;
 
 /*===========================================================================*/
 /* Prototype */
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
