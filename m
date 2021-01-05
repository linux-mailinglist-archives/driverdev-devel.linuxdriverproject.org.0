Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 357002EAFE2
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Jan 2021 17:20:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 878DF227AD;
	Tue,  5 Jan 2021 16:20:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WiBSHpRJA25U; Tue,  5 Jan 2021 16:20:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AAC4C22708;
	Tue,  5 Jan 2021 16:20:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E287F1BF5A6
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 16:20:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C14D522621
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 16:20:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E0-rbOxiXEd0 for <devel@linuxdriverproject.org>;
 Tue,  5 Jan 2021 16:20:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by silver.osuosl.org (Postfix) with ESMTPS id 35657203CF
 for <devel@driverdev.osuosl.org>; Tue,  5 Jan 2021 16:20:43 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id t16so36742758wra.3
 for <devel@driverdev.osuosl.org>; Tue, 05 Jan 2021 08:20:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=31WFzOSKmhxLpwB1rhJjCKmLgA51L1dzh5S2ypQ2fbA=;
 b=oVwoUPH0zFhrsWDYXv3FK0nym+VJOpUOX6S3lqL+MgyxSgopOsuTb4dCX+d64QjSZ3
 eiucYsrbG8xP7joxz1UaPbUAKXVXXNxDK0jb+mBkcQor5fRkhZZqq04uLmH5K/TID4Tj
 f3O+xd/EEi5vnctLFkJdtyL/PmazRAN1iial6Xt0gY0tlZJ/LlSS32iNYFFLNDEyYM5d
 iQNsjNbpdbF1bMap46zXDvhHhCvBZ4QoFLaAb0lusFnm90RIu1XUJ6thtPbT9mUJIhUC
 xh+SWaxrp4HuYlcvg3kfX3IS908WUn7w3TmRtY8CK3eJooXlkuzyitbZF6GSXuFMQPSc
 acTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=31WFzOSKmhxLpwB1rhJjCKmLgA51L1dzh5S2ypQ2fbA=;
 b=r72p0DgaWyy7u/JrmOCdxw3kDUT58hB4kZkhiQmJu7eDtViJ+VRIzW9OGJ7Br7Z9RY
 LkRXON31PH67pH2c2jcu2GoktcpVYbmL8Ww0th8D4LjbDQUSweJXNVwckFrcpgZwIbTq
 /pKhKRZ5PKYOyxldltM0jeKOKXh4FFHJnjfF98PywUN342WsYuPP3idFLSA/YzaBJWW4
 uvmg7pxKdXFsChHLaA4z+1xJ2Fud8jlOjuq1q0Nrj6LUC/50622ly7yCZCnEwQ845N8l
 dy7NfMW301H8QMZ6NlGiRnXklR2/eFYM3gB0bcKh24q74P72xXoGEBbmpo9tn9yV2Wzu
 rBpQ==
X-Gm-Message-State: AOAM5338KiXCjRb3TO+dBT4jHUdE9ZyDywfouHuNCmSZxrnbtHxAevSb
 07Y3GMMYSI19pB2/4nR3+S4V9A==
X-Google-Smtp-Source: ABdhPJzY39igqV3VJCJtIiuRebqqId1DxcdoUxPlf7vThovnNfWjEMZLXqTNUGEgODC9wrP0xZAogw==
X-Received: by 2002:adf:a3c3:: with SMTP id m3mr346384wrb.105.1609863641916;
 Tue, 05 Jan 2021 08:20:41 -0800 (PST)
Received: from buildbot.pitowers.org ([2a00:1098:3142:14:ae1f:6bff:fedd:de54])
 by smtp.gmail.com with ESMTPSA id r82sm6654wma.18.2021.01.05.08.20.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Jan 2021 08:20:41 -0800 (PST)
From: Phil Elwell <phil@raspberrypi.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Arnd Bergmann <arnd@arndb.de>, Dan Carpenter <dan.carpenter@oracle.com>,
 Stefan Wahren <stefan.wahren@i2se.com>,
 bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org
Subject: [PATCH v2 1/3] staging: vchiq: Fix bulk userdata handling
Date: Tue,  5 Jan 2021 16:20:28 +0000
Message-Id: <20210105162030.1415213-2-phil@raspberrypi.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210105162030.1415213-1-phil@raspberrypi.com>
References: <20210105162030.1415213-1-phil@raspberrypi.com>
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
caller is not returned to them as expected, but instead it is replaced
with a NULL. This lack of a suitable context may cause the application
to crash or otherwise malfunction.

Fixes: 4184da4f316a ("staging: vchiq: fix __user annotations")

Signed-off-by: Phil Elwell <phil@raspberrypi.com>
Tested-by: Stefan Wahren <stefan.wahren@i2se.com>
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
