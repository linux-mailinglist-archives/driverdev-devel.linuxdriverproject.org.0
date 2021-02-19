Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA5231F43E
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 04:42:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 40DD5606CD
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 03:42:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3Ex229NWb2-U for <lists+driverdev-devel@lfdr.de>;
	Fri, 19 Feb 2021 03:42:14 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 19BBC606D0; Fri, 19 Feb 2021 03:42:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2AD7260673;
	Fri, 19 Feb 2021 03:41:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DDB6B1BF9B2
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 03:41:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D9D19872D6
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 03:41:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gHO7bFIH0DsI for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 03:41:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 723C1872B2
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 03:41:46 +0000 (UTC)
Received: from fews2.riseup.net (fews2-pn.riseup.net [10.0.1.84])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 4DhcnZ5Ny0zFgPh;
 Thu, 18 Feb 2021 19:41:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
 t=1613706098; bh=onlPDPh+CMzihdO950TwRXvU1Wd+ycLugdfUSx65AoM=;
 h=From:To:Cc:Subject:Date:From;
 b=scyZcXI6QvgGolMNnkVCBUE6Bc3f5vIOqkRA3Ws1VqIwQTxpPoT3UpSnfHHYGFfqA
 xkDrJPlGnDi6iT13XT5GsGI5LX4G/yxmDTByFDMdKBRXK0LduLAYcP6f0CTHbTORHj
 xKFSkAM6Bc5dZ07oskw9sLBjNq6youDhFAgFLbPU=
X-Riseup-User-ID: 27878FF40E0A2A2210BD8C71A7C41EE05F9AD8BAE4950CB16B4F471D07FB40AF
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by fews2.riseup.net (Postfix) with ESMTPSA id 4DhcnK0y1Pz1yPN;
 Thu, 18 Feb 2021 19:41:25 -0800 (PST)
From: Sean Behan <codebam@riseup.net>
To: 
Subject: [PATCH] staging: emxx_udc: remove unused variable driver_desc
Date: Thu, 18 Feb 2021 22:41:07 -0500
Message-Id: <20210219034109.13036-1-codebam@riseup.net>
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
