Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 756485A1A2
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 19:01:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0ACA28829A;
	Fri, 28 Jun 2019 17:01:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SZI+06RLulbF; Fri, 28 Jun 2019 17:01:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 949F282476;
	Fri, 28 Jun 2019 17:01:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A70A21BF36D
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 17:01:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A3EF387E6D
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 17:01:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xohfdNXtPxTG for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 17:01:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 50DF982476
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 17:01:27 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id n2so2838538pgp.11
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 10:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=J2qU6wxItaN+5UOKiNyRuRQUOCoMmYGGmRV9X2UEAB0=;
 b=oyjcbN2lX1WBUwPMzm3jTHw1zIbFhqHIXzZCu18PpVhGMNLZPYKzd2T7h4Olcs5F8h
 OE2N+ycy0wVbbv2X9ysNoTR0+7uSlD+dJlqvLK0GI/mCoT4v5f5uO/7hQxAFRSLclecH
 nEfrVMtwdKtfLnrFT09wf4QAOCaAVPE3p8UobEQ7dG0Rh1F/KLjRDu1SSHucmiw+52i1
 D0SFzEJXe6TqExYmTgVPxxcLn8XKi8ctXt3sWCgxPHcymet84VENF4LOaC8/piXu2j1U
 NUT1Z1x8tvy3/vLS90LXigOiHo9xFU1Y9csh/fNie4Pe18jSgyXtGSQGLU0pFHGv9Pts
 OI2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=J2qU6wxItaN+5UOKiNyRuRQUOCoMmYGGmRV9X2UEAB0=;
 b=NHH3cmNE8HCRIVinvEP95XS7S+7Tib7bMtttcHPFvfO6qzP678LufBglpS+FGR/aZC
 AexNbrXtRwkhOZf2qs4YSocUonFGx5hiTf4yl4RONa/M0BVCwu0vl345shitjMRNZrm1
 GaYl9NtHce+n1fOcGNaSoWi4wKNri3ui62swvZNiJ4iVPRaORDX1m2im+O7Ov9OaGjVB
 a7RCdMhAYSUhq79o1ovKwqrBGnurTL6hcMHkgR79iAjcMwHcwohRf8uh0MW1/KvNTZNh
 SYcpM0APN8rlgF+ZDhmhTm74s2voJAd/CDqZ1PwK8R5EHkRobbpZ34INw8SoAiYTq5hR
 NyOQ==
X-Gm-Message-State: APjAAAWzZ5M9voIZo7yqQaM6pxieet8+TOKkZsLLLvKI/NcI+0g4HHt4
 l+bKlYWSN8sNc0n0buL8Qss=
X-Google-Smtp-Source: APXvYqx7NUoJjLJ7Ej3UT9NKouWUfnRQFNGJrRhWyW8A2GnpAkqx3LbI9H1vYjMcj1/6UC7Ez2lbBw==
X-Received: by 2002:a17:90a:6097:: with SMTP id
 z23mr14446976pji.75.1561741286876; 
 Fri, 28 Jun 2019 10:01:26 -0700 (PDT)
Received: from localhost.localdomain ([183.83.73.90])
 by smtp.gmail.com with ESMTPSA id 30sm2971033pjk.17.2019.06.28.10.01.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Jun 2019 10:01:26 -0700 (PDT)
From: Harsh Jain <harshjain32@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, harshjain32@gmail.com,
 harshjain.prof@gmail.com
Subject: [PATCH 1/2] staging:kpc2000:Fix symbol not declared warning
Date: Fri, 28 Jun 2019 22:30:45 +0530
Message-Id: <20190628170046.3219-2-harshjain32@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190628170046.3219-1-harshjain32@gmail.com>
References: <20190628170046.3219-1-harshjain32@gmail.com>
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: root <harshjain32@gmail.com>

It fixes "symbol was not declared. Should it be static?"
sparse warning.

Signed-off-by: Harsh Jain <harshjain32@gmail.com>
---
 drivers/staging/kpc2000/kpc_i2c/i2c_driver.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c b/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
index 0fb068b2408d..204f33d0dc69 100644
--- a/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
+++ b/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
@@ -614,7 +614,7 @@ static const struct i2c_algorithm smbus_algorithm = {
 /********************************
  *** Part 2 - Driver Handlers ***
  ********************************/
-int pi2c_probe(struct platform_device *pldev)
+static int pi2c_probe(struct platform_device *pldev)
 {
     int err;
     struct i2c_device *priv;
@@ -664,7 +664,7 @@ int pi2c_probe(struct platform_device *pldev)
     return 0;
 }
 
-int pi2c_remove(struct platform_device *pldev)
+static int pi2c_remove(struct platform_device *pldev)
 {
     struct i2c_device *lddev;
     dev_dbg(&pldev->dev, "pi2c_remove(pldev = %p '%s')\n", pldev, pldev->name);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
