Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D3689C22E
	for <lists+driverdev-devel@lfdr.de>; Sun, 25 Aug 2019 07:55:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 15019204E5;
	Sun, 25 Aug 2019 05:55:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FVXl+l3ZACy8; Sun, 25 Aug 2019 05:55:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 795B6204DC;
	Sun, 25 Aug 2019 05:55:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D7B901BF956
 for <devel@linuxdriverproject.org>; Sun, 25 Aug 2019 05:55:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D4F8585DF1
 for <devel@linuxdriverproject.org>; Sun, 25 Aug 2019 05:55:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dyBMfy4Y0b3O for <devel@linuxdriverproject.org>;
 Sun, 25 Aug 2019 05:55:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2EEB385DFC
 for <devel@driverdev.osuosl.org>; Sun, 25 Aug 2019 05:55:09 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8B9352173E;
 Sun, 25 Aug 2019 05:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566712509;
 bh=Aa5tlO6MtJvUzYgM9FFUC3GIcckVnGylV0rhrPhlqOc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=xGE8rSjfWXzHLKnKOydAEA3qP3w4cwqGjQP3PSTli25pmypzQ6ibm6tBFSW6zEbEK
 EP6aAruqxF+xuqWoZV3fd4pAW9twqHjJdvSXE7pIiTmT23dIdQbNtz60yChhMG8w+A
 swPgIg+2t/t5VkmOVn2p0+/JHixnehAAR21lo3cA=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org, elder@kernel.org,
 johan@kernel.org
Subject: [PATCH 6/9] staging: greybus: loopback: Fix up some alignment
 checkpatch issues
Date: Sun, 25 Aug 2019 07:54:26 +0200
Message-Id: <20190825055429.18547-7-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190825055429.18547-1-gregkh@linuxfoundation.org>
References: <20190825055429.18547-1-gregkh@linuxfoundation.org>
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Some function prototypes do not match the expected alignment formatting
so fix that up so that checkpatch is happy.

Cc: "Bryan O'Donoghue" <pure.logic@nexus-software.ie>
Cc: Johan Hovold <johan@kernel.org>
Cc: Alex Elder <elder@kernel.org>
Cc: greybus-dev@lists.linaro.org
Cc: devel@driverdev.osuosl.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/greybus/loopback.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/loopback.c b/drivers/staging/greybus/loopback.c
index 48d85ebe404a..b0ab0eed5c18 100644
--- a/drivers/staging/greybus/loopback.c
+++ b/drivers/staging/greybus/loopback.c
@@ -882,7 +882,7 @@ static int gb_loopback_fn(void *data)
 				gb->type = 0;
 				gb->send_count = 0;
 				sysfs_notify(&gb->dev->kobj,  NULL,
-						"iteration_count");
+					     "iteration_count");
 				dev_dbg(&bundle->dev, "load test complete\n");
 			} else {
 				dev_dbg(&bundle->dev,
@@ -1054,7 +1054,7 @@ static int gb_loopback_probe(struct gb_bundle *bundle,
 
 	/* Allocate kfifo */
 	if (kfifo_alloc(&gb->kfifo_lat, kfifo_depth * sizeof(u32),
-			  GFP_KERNEL)) {
+			GFP_KERNEL)) {
 		retval = -ENOMEM;
 		goto out_conn;
 	}
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
