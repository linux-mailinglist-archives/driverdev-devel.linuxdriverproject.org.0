Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4412C26393
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 14:15:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E36FB87D8E;
	Wed, 22 May 2019 12:15:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PqeuYO5L8M4d; Wed, 22 May 2019 12:15:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8B16D85B55;
	Wed, 22 May 2019 12:15:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3C5D21BF2BB
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 12:14:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 30B1F2FC70
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 12:14:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GNkCJLVE9tQ3 for <devel@linuxdriverproject.org>;
 Wed, 22 May 2019 12:14:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 9EC882F989
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 12:14:55 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id p18so1297880qkk.0
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 05:14:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=H3+FUMVAtUNqd7joLB2Rr4otnxHNV1reLiziKgDKNcc=;
 b=X642QNn8QYxNHPLxyuUwWX3jFVIOC5grd48XSK+K2rm7nsZA0NKHsdh62xKTAegUcR
 yLyKdKFRWnUt/5giHEV4Io6UUxfweTlMVGGzP8BHkIymEEj1GsjeT3S0K9OrO6GwoLan
 BewYEaRcyb5MP6HEzfaKRcPUTb/7fsHV3gbKS9F0no9G+ZtWWBnfuZFR/eoKT+eECmK9
 Z3/3u5EUwlurgr8nuuCVJW2CMuj/unUTmlp9lwaA8zOKpxP9SU461XckYuvbcJ8DMPGz
 1sS848+UBa76icY11pQXbNYTDCKeWpj9+dD2M0gjVRmM3xR9+efEy0lJ+Ba/Q6pw8xLZ
 LaHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H3+FUMVAtUNqd7joLB2Rr4otnxHNV1reLiziKgDKNcc=;
 b=sh/yx6DaQeaCFQhv6Y/zVJPEjapNY0shIYf6gV3srKEUQJtFOi/fYdPNnLnprwpZa0
 bCnpKJvw52qP0z/SLnVtg9wzANKEKWN2Y+71oywJmRbv4p1zrT52Y7uRnBZzc7kh+LQH
 jHhQIq79cKQECVO+JvCY/AIkZFJvvffECFgsewj6WX/PhsJFLimu6m1cjRMETcp1TKkL
 sBZIdJ3zW/YvSKTn06B03EoegQAMjTg99BJQ1srAowX+eVxjHSV6/RaWdcDg/HyYLQkb
 tnzWiOnEb1zHxXGkPqVODIs+4cpMdifQ6kqyJSuQ+/HTaEUKKcj/rcSo+N3rgHpXOCnp
 MRyA==
X-Gm-Message-State: APjAAAW94tERdi9k2XI6IWk9TVpvgNBWOpCuR02C2vHoapqBW71SSgaS
 rdEFYBTOjbCpEBfSFJcC1gc=
X-Google-Smtp-Source: APXvYqzspNuecP6vjoKbVMlN1a+zmX6h3pOPqfRPbLQDm3gQyKx3/jQ5yCNmmGbrmJNg10WzZ1Utuw==
X-Received: by 2002:a37:7002:: with SMTP id l2mr68984568qkc.227.1558527294809; 
 Wed, 22 May 2019 05:14:54 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.dc.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id w2sm8742070qto.19.2019.05.22.05.14.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 05:14:54 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 6/6] staging: kpc2000: kpc_i2c: add static qual to local
 symbols in kpc_i2c.c
Date: Wed, 22 May 2019 12:14:02 +0000
Message-Id: <ca1e25c5b0387b54541cf686ceb6b7146c1c76da.1558526487.git.gneukum1@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1558526487.git.gneukum1@gmail.com>
References: <cover.1558526487.git.gneukum1@gmail.com>
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
Cc: Geordan Neukum <gneukum1@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

kpc_i2c.c declares:
  - two functions
    - pi2c_probe()
    - pi2c_remove()
  - one struct
    - i2c_plat_driver_i
which are local to the file, yet missing the static qualifier. Add the
static qualifier to these symbols.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_i2c.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
index f9259c06b605..97e738349ba2 100644
--- a/drivers/staging/kpc2000/kpc2000_i2c.c
+++ b/drivers/staging/kpc2000/kpc2000_i2c.c
@@ -579,7 +579,7 @@ static const struct i2c_algorithm smbus_algorithm = {
 /********************************
  *** Part 2 - Driver Handlers ***
  ********************************/
-int pi2c_probe(struct platform_device *pldev)
+static int pi2c_probe(struct platform_device *pldev)
 {
 	int err;
 	struct i2c_device *priv;
@@ -626,7 +626,7 @@ int pi2c_probe(struct platform_device *pldev)
 	return 0;
 }
 
-int pi2c_remove(struct platform_device *pldev)
+static int pi2c_remove(struct platform_device *pldev)
 {
 	struct i2c_device *lddev;
 
@@ -644,7 +644,7 @@ int pi2c_remove(struct platform_device *pldev)
 	return 0;
 }
 
-struct platform_driver i2c_plat_driver_i = {
+static struct platform_driver i2c_plat_driver_i = {
 	.probe      = pi2c_probe,
 	.remove     = pi2c_remove,
 	.driver     = {
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
