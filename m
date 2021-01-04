Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D8F2E9498
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Jan 2021 13:15:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4925720774;
	Mon,  4 Jan 2021 12:15:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AJa-iai8mgUq; Mon,  4 Jan 2021 12:15:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3C93520764;
	Mon,  4 Jan 2021 12:15:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0EAB61BF355
 for <devel@linuxdriverproject.org>; Mon,  4 Jan 2021 12:15:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0AA9E20407
 for <devel@linuxdriverproject.org>; Mon,  4 Jan 2021 12:15:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jeO8DDVkgrnA for <devel@linuxdriverproject.org>;
 Mon,  4 Jan 2021 12:15:48 +0000 (UTC)
X-Greylist: delayed 00:05:56 by SQLgrey-1.7.6
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by silver.osuosl.org (Postfix) with ESMTPS id EA292203EC
 for <devel@driverdev.osuosl.org>; Mon,  4 Jan 2021 12:15:47 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id i9so31957711wrc.4
 for <devel@driverdev.osuosl.org>; Mon, 04 Jan 2021 04:15:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LdYMZkS95/eUCPYzKGKS+r7Qt7k4YYv/NUk3PW6Pl6M=;
 b=t3xs7tGmZGwD0IqGuTOyXMg6xsE/FT5Xymf4MjL59gc+Wy8qfxalVk5KsmxNrOgAIF
 ubqZqYvYBklV4iyLAo7aIRZWU87vTqfB6wrpOXwrcHhCyaIscgqB5FVkx6kEjGq29lzp
 4OgOnZXi3qRhEZVBBthDx20n8b9Kpl+Ntz8DmgFde2MfRERNSR3B8dmfw5ZxTafU4TOO
 Nd/rNKpoXl85O+BS7CPZ8/qe5vfxT1DM5iY8VCOGTZkMzYMlYBld9ydxRW4DgB+jJzHW
 WF/F9Bdw3HLC9Z/Oe62oiDExi2lmKdx5q804Pxm9a2svmnM451PTu2x/42aPDATuiwQz
 +xLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LdYMZkS95/eUCPYzKGKS+r7Qt7k4YYv/NUk3PW6Pl6M=;
 b=MgEi+FQXhUs0hhTuACraUrsDwblgmLRLECSedtKhKkOIckbAG7pK3rRK30t+VFN9yF
 e/URiwoCEP4KO7l6Tmq+y6WH5OWYZLcsrGysWT3wl+T7tQwBzBLIucWctEzEbz97W1wP
 2LY1S3AWiwbyLK/I0Ab4+kX0vhuLNTxRLYePHkJSTKgqv+NSuqJRdVQgQ9+91o6r71WB
 sC52t20bsZV2/k5lH2VnUc++05WwPNf7KJIivKCrglJpMpOEtXDifoCSj5MJsQimC1Fo
 1a0UYt6EggQ/1WyzayBkcHI5yjwGmQMUijhws9dtFQ9npHmIKEV+nCGm4BJKcCH1/puk
 53Gg==
X-Gm-Message-State: AOAM5331rSUFAQu8O2TM0TO1ZkIoBkbG4rnhcNj1fxsxv9qiT2nOoPGV
 gqmhFjPAogspmmed9YoxjWkVzafn4DS0Qw==
X-Google-Smtp-Source: ABdhPJzAVVIXj5IF0S29oZ1G6emiMhBnQp4oWbVSCI6mCtHw7LpxJ6WZ9eO9o7Ar3gWSlA4KfLU4Dg==
X-Received: by 2002:adf:f891:: with SMTP id u17mr80838377wrp.253.1609762192439; 
 Mon, 04 Jan 2021 04:09:52 -0800 (PST)
Received: from buildbot.pitowers.org ([2a00:1098:3142:14:ae1f:6bff:fedd:de54])
 by smtp.gmail.com with ESMTPSA id
 x66sm33692952wmg.26.2021.01.04.04.09.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Jan 2021 04:09:51 -0800 (PST)
From: Phil Elwell <phil@raspberrypi.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Arnd Bergmann <arnd@arndb.de>, Dan Carpenter <dan.carpenter@oracle.com>,
 bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org
Subject: [PATCH 1/2] staging: vchiq: Fix bulk userdata handling
Date: Mon,  4 Jan 2021 12:09:27 +0000
Message-Id: <20210104120929.294063-2-phil@raspberrypi.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210104120929.294063-1-phil@raspberrypi.com>
References: <20210104120929.294063-1-phil@raspberrypi.com>
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
Cc: Phil Elwell <phil@raspberrypi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The addition of the local 'userdata' pointer to
vchiq_irq_queue_bulk_tx_rx omitted the case where neither BLOCKING nor
WAITING modes are used, in which case the value provided by the
caller is replaced with a NULL.

Fixes: 4184da4f316a ("staging: vchiq: fix __user annotations")

Signed-off-by: Phil Elwell <phil@raspberrypi.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index f500a7043805..2a8883673ba1 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -958,7 +958,7 @@ static int vchiq_irq_queue_bulk_tx_rx(struct vchiq_instance *instance,
 	struct vchiq_service *service;
 	struct bulk_waiter_node *waiter = NULL;
 	bool found = false;
-	void *userdata = NULL;
+	void *userdata;
 	int status = 0;
 	int ret;
 
@@ -997,6 +997,8 @@ static int vchiq_irq_queue_bulk_tx_rx(struct vchiq_instance *instance,
 			"found bulk_waiter %pK for pid %d", waiter,
 			current->pid);
 		userdata = &waiter->bulk_waiter;
+	} else {
+		userdata = args->userdata;
 	}
 
 	/*
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
