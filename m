Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7069C228
	for <lists+driverdev-devel@lfdr.de>; Sun, 25 Aug 2019 07:55:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EDFDF85DCA;
	Sun, 25 Aug 2019 05:55:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lt3rFBMt0a9S; Sun, 25 Aug 2019 05:55:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5AEB284EE4;
	Sun, 25 Aug 2019 05:55:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 039531BF5A7
 for <devel@linuxdriverproject.org>; Sun, 25 Aug 2019 05:54:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 00A7984E88
 for <devel@linuxdriverproject.org>; Sun, 25 Aug 2019 05:54:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j1v505IJjE8d for <devel@linuxdriverproject.org>;
 Sun, 25 Aug 2019 05:54:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9872484E74
 for <devel@driverdev.osuosl.org>; Sun, 25 Aug 2019 05:54:58 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 005772173E;
 Sun, 25 Aug 2019 05:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566712498;
 bh=NdaBtys0Xoqbyh7UBV+CzsxLktWj/rPrZ2icefpM21M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dxIZxPnsag9Fgeyj7KycYHUhKgOtNVy2XvFhs6ctdVZQS674vT0OMffS5p8kWhUIh
 5zvjtETsTYodao///2wQced4FnACJ/rMIjdq5AZiV8FOHvMdOc1FkVVtQVKJAMdWFr
 usDi3Bt+ZgH/0Iu5roZLXtovd0P96h5d6snkoy8E=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org, elder@kernel.org,
 johan@kernel.org
Subject: [PATCH 3/9] staging: greybus: hd: Fix up some alignment checkpatch
 issues
Date: Sun, 25 Aug 2019 07:54:23 +0200
Message-Id: <20190825055429.18547-4-gregkh@linuxfoundation.org>
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

Cc: Johan Hovold <johan@kernel.org>
Cc: Alex Elder <elder@kernel.org>
Cc: greybus-dev@lists.linaro.org
Cc: devel@driverdev.osuosl.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/greybus/hd.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/greybus/hd.c b/drivers/staging/greybus/hd.c
index 969f86697673..e2b9ab5f6ec2 100644
--- a/drivers/staging/greybus/hd.c
+++ b/drivers/staging/greybus/hd.c
@@ -31,7 +31,7 @@ int gb_hd_output(struct gb_host_device *hd, void *req, u16 size, u8 cmd,
 EXPORT_SYMBOL_GPL(gb_hd_output);
 
 static ssize_t bus_id_show(struct device *dev,
-				struct device_attribute *attr, char *buf)
+			   struct device_attribute *attr, char *buf)
 {
 	struct gb_host_device *hd = to_gb_host_device(dev);
 
@@ -70,7 +70,7 @@ EXPORT_SYMBOL_GPL(gb_hd_cport_release_reserved);
 
 /* Locking: Caller guarantees serialisation */
 int gb_hd_cport_allocate(struct gb_host_device *hd, int cport_id,
-				unsigned long flags)
+			 unsigned long flags)
 {
 	struct ida *id_map = &hd->cport_id_map;
 	int ida_start, ida_end;
@@ -122,9 +122,9 @@ struct device_type greybus_hd_type = {
 };
 
 struct gb_host_device *gb_hd_create(struct gb_hd_driver *driver,
-					struct device *parent,
-					size_t buffer_size_max,
-					size_t num_cports)
+				    struct device *parent,
+				    size_t buffer_size_max,
+				    size_t num_cports)
 {
 	struct gb_host_device *hd;
 	int ret;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
