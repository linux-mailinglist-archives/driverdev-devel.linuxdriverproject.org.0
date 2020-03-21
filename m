Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA9A18E191
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Mar 2020 14:36:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EC9BB87D39;
	Sat, 21 Mar 2020 13:36:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J6QZq-Cc8j0I; Sat, 21 Mar 2020 13:36:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DB7DB87BC2;
	Sat, 21 Mar 2020 13:36:32 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7F9AB1BF28C
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 13:36:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7CAB587402
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 13:36:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5V0eR9BmkGbZ
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 13:36:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 193FC873F3
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 13:36:29 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id t7so6149168wrw.12
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 06:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=S6pjToPD7iTuvdIQPBsLJdBfwWwZFjlTQFPaT5VIZyc=;
 b=Y1dnQ2m0PrmJQWtlnFtAgM/druIlkn1cYZXg2GarkRpaumU9tCIprPG61HOQ2q5A/+
 M7e7Qt+JscXddFh7/auZKIhcJaDdmttBHZlqxHujtc4U7Iws2vWO+Qr6ktLCpB9PUjWx
 3VSFALDyE5Td9JAerdeepaY0rtqIHu9HT8wKSJPn5Y8LJxPxcnqewJOgcpo5Ak0D8qO9
 6ipSs3fvcfEj1UGXHQFANkxwQfYEfddmLNnHcmtOeCJpWXeJ+kb8Tx0r730UlJJMfZES
 cvxeYqqvmSnPca/2gt/Gzt2Qu++Zih71sAsBuNnOHPO22zvfnPi/0fCWfEYpg2JRuy6V
 sngg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=S6pjToPD7iTuvdIQPBsLJdBfwWwZFjlTQFPaT5VIZyc=;
 b=P4SIG7O04kD6rjYsu0H6G+84md3pJiPowG9exBFbF/S9Q0Dkiy00ntR2ubDymCN1hP
 9yXsOKAi0w0uOcGJ3AzdEgTjT9vPoXnZuntcEvFe14O6k71I2oPknmPuVIQvUIgFyP02
 bi9PliX4wvi7UOZRbmiNmI6mO9KQrOIQvJxQvGU/+hx6Kr0SsNr+8lcyr8WkzX9SreP1
 2K+9598keTINX8V0cZH70Ro286sxqyXgcYxvvwrnerkcR/3geTJX8MfMiFUdesF38uUr
 XhgGGf6UsOuuXDK1sRpm8K7Fz+VfIoIs/4OgIWAlhqhsZ7KlEV4k6SZtUGYqaN8akzlt
 uRbA==
X-Gm-Message-State: ANhLgQ3H8ZnACit8IF+VkwS/ZygzQEI34hNbUNKaNlif/StlG6+qfLTP
 ktvo6kXSfU/XI9G/H/0z/bo=
X-Google-Smtp-Source: ADFU+vvKP7sxs85djIa1TT5WNY6xdsNBVAPcfoidNLBrWWNfGpUY/TX322qqxhL8X2ZPUw1dPrOJ6A==
X-Received: by 2002:adf:90cd:: with SMTP id i71mr17340688wri.63.1584797787432; 
 Sat, 21 Mar 2020 06:36:27 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id 195sm12676043wmb.8.2020.03.21.06.36.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 21 Mar 2020 06:36:26 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/4] staging: mt7621-pci: use builtin_platform_driver()
Date: Sat, 21 Mar 2020 14:36:21 +0100
Message-Id: <20200321133624.31388-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: neil@brown.name, driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Macro builtin_platform_driver can be used for builtin drivers
that don't do anything in driver init. So, use the macro
builtin_platform_driver and remove some boilerplate code.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 1a76968b70c3..b8065b777ff6 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -725,9 +725,4 @@ static struct platform_driver mt7621_pci_driver = {
 	},
 };
 
-static int __init mt7621_pci_init(void)
-{
-	return platform_driver_register(&mt7621_pci_driver);
-}
-
-module_init(mt7621_pci_init);
+builtin_platform_driver(mt7621_pci_driver);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
