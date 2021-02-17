Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D624731DB63
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 15:24:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7DEF36F5F7
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 14:24:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JM02RYX2g59p for <lists+driverdev-devel@lfdr.de>;
	Wed, 17 Feb 2021 14:24:55 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 5610B6F537; Wed, 17 Feb 2021 14:24:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C73CB6F4BB;
	Wed, 17 Feb 2021 14:24:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0E9FA1BF3A0
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 14:24:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0AD616F4B8
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 14:24:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SwCy0Z1ZmDFw for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 14:24:28 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 4ED066F4CF; Wed, 17 Feb 2021 14:24:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 43D576F4B8
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 14:24:27 +0000 (UTC)
Received: from fews2.riseup.net (fews2-pn.riseup.net [10.0.1.84])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 4Dgg8B5g07zFsdg;
 Wed, 17 Feb 2021 06:24:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
 t=1613571866; bh=IvnMCcmHCehGjNcRNbIEXbEAqemDFdZA+8ZJfN+1v/4=;
 h=From:To:Cc:Subject:Date:From;
 b=oa67nUtDN1Dm8+cAmsXGdRoSLrI8fUwq6FE4ZSJ/dmlg36BJjdKmQLEqEpaAjpYo8
 +bLt55VkNwndf6mIz2RnsXY2ua0Q1KiUgVWvB239Bep9Z2jPX9p6uTYPfFEaTzYf63
 PNEcqXULwy19U/hP7ghbWqbmo9SloNQBaeV+cD2Q=
X-Riseup-User-ID: 63C4401FEF5013B3DFBAE15EC29B9EB16668EE0B6C5B9DA2BBE993DAA83FB869
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by fews2.riseup.net (Postfix) with ESMTPSA id 4Dgg894VZcz20Rp;
 Wed, 17 Feb 2021 06:24:25 -0800 (PST)
From: Sean Behan <codebam@riseup.net>
To: 
Subject: [PATCH] staging: emxx_udc: remove unused variable driver_desc
Date: Wed, 17 Feb 2021 09:24:17 -0500
Message-Id: <20210217142420.7350-1-codebam@riseup.net>
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

When building with W=1, there is a warning that this variable is unused.

It is not used so remove it to fix the warning.

Thanks to nathan@kernel.org for helping me submit my first patch.

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
