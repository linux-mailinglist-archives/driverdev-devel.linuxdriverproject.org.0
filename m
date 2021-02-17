Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AA531D45A
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 05:00:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5929B87122;
	Wed, 17 Feb 2021 04:00:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NDWRVq1iI3yJ; Wed, 17 Feb 2021 04:00:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9319D870E6;
	Wed, 17 Feb 2021 04:00:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0AEF91BF400
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 04:00:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 07B5885F29
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 04:00:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id af9InauLSsH5 for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 04:00:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8FE9785F11
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 04:00:40 +0000 (UTC)
Received: from fews1.riseup.net (fews1-pn.riseup.net [10.0.1.83])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 4DgPHy6Z42zFmZ6;
 Tue, 16 Feb 2021 20:00:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
 t=1613534433; bh=FD3e/+jSIULzeMz09OgJLK0Zn/aDyCz7FT+cgyFWFec=;
 h=From:To:Cc:Subject:Date:From;
 b=Lt8yqxVXgonICxHN0bV2iPeyTRD/fePiYxitw3q//07uYZUbpDFOKurA+xHfSQS0p
 oL8i7tS9fANIZ+9B4pDW5nKYWevpbg7m0jW062Y0E0Mk1k04ne1LPNJkPsT4QeDQHG
 LjSJiag0Uejbm2CfA8QAtvZCWAh5QTjGMJI5GTzA=
X-Riseup-User-ID: 9DD0B2EC7AC93C4AE13A1398BA6F6FD14B020A67085F042A3413A2F8DCA6EBF9
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by fews1.riseup.net (Postfix) with ESMTPSA id 4DgPHm2Jmzz5vdK;
 Tue, 16 Feb 2021 20:00:04 -0800 (PST)
From: Sean Behan <codebam@riseup.net>
To: 
Subject: [PATCH] remove unused variable driver_desc
Date: Tue, 16 Feb 2021 22:59:51 -0500
Message-Id: <20210217035953.192959-1-codebam@riseup.net>
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
