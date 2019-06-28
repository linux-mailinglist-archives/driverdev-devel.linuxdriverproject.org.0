Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A535A245
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 19:27:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 11ADA8829D;
	Fri, 28 Jun 2019 17:27:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YtNPob0rv1YY; Fri, 28 Jun 2019 17:27:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9564586229;
	Fri, 28 Jun 2019 17:27:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 715B31BF844
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 17:27:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 67EB7203CE
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 17:27:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LGXxl4yGN6jM for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 17:27:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by silver.osuosl.org (Postfix) with ESMTPS id D86AD20024
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 17:27:52 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id k8so3606354plt.3
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 10:27:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=b2wN17zlaOXo1nFQxwOfGzjJA08eKhEWDSV+dVCibq0=;
 b=WsggN7ys/SUW8ke0djQCUW82tfxEw/UCjel87xrBD5nq5byykXD9pblR0QjtGhSG9k
 eC1SMy0BJetgEADjjtsdRskVqDg0jLst8re0oTTcDnzZUo8Y9zq83Zk5SUSxqLVx442o
 jKx2nsdFKtC/8WmsaRWdWYZ9puP62JacPrf1fhbvs5QsHtHtdqh8p6RdY/xEjit0pXXd
 wocdDCvSSPpCUaLd2u7hp479pyXfqlj0+9a99vD3nXgh7UELNL6XzCt3z50pJERqHIrr
 ZiQWUp3CsrE/NQ04tbURiOq8j/Z16WTl7kD8inuHxcXXt4WpSeg5K1YkxqpVC2oHS4r8
 Oiuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=b2wN17zlaOXo1nFQxwOfGzjJA08eKhEWDSV+dVCibq0=;
 b=C0UXaIGJqq5ZTb+c+1QnxN7IJ4Q+FFAGJJZLpN4mH/T9eFrZZvU9+1wzTqwYC2uZL4
 6PFVOMezsW7sbCtQbz4o1CSDSAi1XAgtXaE3BTHtWEeXXRckMch3mvxV464rLbaGuRTP
 221OswX55C36m4tI7f5CDRTH4p2sjVhfUKCXmLzuw0u2omEoG+45JuAWQZhCzS0u/QSB
 uW2/Gs9iKm2+LFr4+KS6edF/Y8Se4VuLgilbocLzsxrMZYhrN22U9D8lgWYaYBInxbgm
 Ysxh3j9gfMlZVBMR3DfHCs67vfdPpDFgi17U5Hpo7Fb1IiBOvSPmppo7aiGIwsL/Cw1s
 ngSw==
X-Gm-Message-State: APjAAAVv3u6RyvkmJN72Sco7YiqlpItqkW7v94tIkymhVvFXZZRf/YAC
 aXDpWHjrMmJG1XrkVyZTncQ=
X-Google-Smtp-Source: APXvYqwfYH+uqnVMzIEe7KSorliBUJGyOPlBJBtICxnUDGx5/BeL2WoO9U4iOWQc82skwTJkHl5Q8w==
X-Received: by 2002:a17:902:20c8:: with SMTP id
 v8mr12964478plg.284.1561742872456; 
 Fri, 28 Jun 2019 10:27:52 -0700 (PDT)
Received: from localhost.localdomain ([183.83.73.90])
 by smtp.gmail.com with ESMTPSA id k19sm2070490pgl.42.2019.06.28.10.27.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Jun 2019 10:27:52 -0700 (PDT)
From: Harsh Jain <harshjain32@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, harshjain32@gmail.com,
 harshjain.prof@gmail.com
Subject: [PATCH 1/2] staging:kpc2000:Fix symbol not declared warning
Date: Fri, 28 Jun 2019 22:57:23 +0530
Message-Id: <20190628172724.2689-2-harshjain32@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190628172724.2689-1-harshjain32@gmail.com>
References: <20190628172724.2689-1-harshjain32@gmail.com>
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
