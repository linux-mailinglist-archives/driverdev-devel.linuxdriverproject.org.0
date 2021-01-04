Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B89112E9511
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Jan 2021 13:41:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A7925870E8;
	Mon,  4 Jan 2021 12:41:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DofGHTFMHayH; Mon,  4 Jan 2021 12:41:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 150C8870C4;
	Mon,  4 Jan 2021 12:41:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6C80E1BF355
 for <devel@linuxdriverproject.org>; Mon,  4 Jan 2021 12:41:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 671D4870C4
 for <devel@linuxdriverproject.org>; Mon,  4 Jan 2021 12:41:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uwQdQhH4lRKy for <devel@linuxdriverproject.org>;
 Mon,  4 Jan 2021 12:41:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 73B51870A8
 for <devel@driverdev.osuosl.org>; Mon,  4 Jan 2021 12:41:24 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id d26so31971246wrb.12
 for <devel@driverdev.osuosl.org>; Mon, 04 Jan 2021 04:41:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NX9GgUhvrdFINxLCVAgA1k2tN4aNPfLwDkftpmTakS4=;
 b=cTovjni5LQCRAn6uHRuxGVYwlk3KeVos6rIAlDhRBydP7rVzrt2MVmqKQ9VhP7TEhT
 4kD+aDA9dWY36k+ujzmAJ4DdZ+BjpQ2bg0kfVhqjdrKYClArK0+AnPg33bIDmHqXGAN9
 WEarYd2R/gOPj3MuqOgtWaRJcOrdE/mfdiZjRIgd0Eou1MskM23TbAMogOdrFaRmTQy5
 SsSDuX6EbZNEoFWAaTsEo+tDj446O9+gm7/P7n3c59u5xmJdm3dmJhFu7+/8TktZhTbR
 KXJL7EcAw4yczqVIKHyf1tzxH0gQXiwhh/1LoxrUEmKiiH7Mi5LVuPFYh7rJNXxTVGSn
 +zTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NX9GgUhvrdFINxLCVAgA1k2tN4aNPfLwDkftpmTakS4=;
 b=ORE118/fSmkoERbfBOwdJrByZmulibplj78jQgHFuXQHkrqRk+ndNua0ZyVdO8N/eS
 oj1QgpcHS9RO4pHNQrEIluwC34f9Bb73SFlXF2JIQH3BTFIc0sgCCAjOXDYnZouYzxSw
 3yz0v7NIB//hCUNDe2vzEcZ5D6jNCwjqUP46vx0jW0dBuRv3p/kE3Gj4Dhjut64OoQn4
 TmmvmKgSXrAsw1uR1rs3QA0GG1d7/fsjOIIWEf8E3r9w/+cfJt4fCaxVYQl5obaMuKF5
 S1ZyN42wNrkpkPCF1BFRayOO1iZuFrykSb/UCB4jE8u9a7ZuywsgAFbFsnV0czBoUUn/
 s02w==
X-Gm-Message-State: AOAM532RRTmb4/FkDlpmP0rhQLqRtm0Qea2KNFFasv/B3YqYGHP4lB68
 WUHumrOvXwSK844HR6XXOy/8BX2SbrBu/Q==
X-Google-Smtp-Source: ABdhPJzCKAT3H5EG+58xo4rEm8YigOVsJHy9bx80PMJBNUq89UyAuaI0Pc85gv7qTARQeGyVXbnoRQ==
X-Received: by 2002:adf:8342:: with SMTP id 60mr80603401wrd.140.1609762195420; 
 Mon, 04 Jan 2021 04:09:55 -0800 (PST)
Received: from buildbot.pitowers.org ([2a00:1098:3142:14:ae1f:6bff:fedd:de54])
 by smtp.gmail.com with ESMTPSA id
 x66sm33692952wmg.26.2021.01.04.04.09.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Jan 2021 04:09:54 -0800 (PST)
From: Phil Elwell <phil@raspberrypi.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Arnd Bergmann <arnd@arndb.de>, Dan Carpenter <dan.carpenter@oracle.com>,
 bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org
Subject: [PATCH 2/2] staging: vchiq: Fix bulk transfers on 64-bit builds
Date: Mon,  4 Jan 2021 12:09:28 +0000
Message-Id: <20210104120929.294063-3-phil@raspberrypi.com>
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

The recent change to the bulk transfer compat function missed the fact
the relevant ioctl command is VCHIQ_IOC_QUEUE_BULK_TRANSMIT32, not
VCHIQ_IOC_QUEUE_BULK_TRANSMIT, as any attempt to send a bulk block
to the VPU would have shown.

Fixes: a4367cd2b231 ("staging: vchiq: convert compat bulk transfer")

Signed-off-by: Phil Elwell <phil@raspberrypi.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 2a8883673ba1..2ca5805b2fce 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -1717,7 +1717,7 @@ vchiq_compat_ioctl_queue_bulk(struct file *file,
 {
 	struct vchiq_queue_bulk_transfer32 args32;
 	struct vchiq_queue_bulk_transfer args;
-	enum vchiq_bulk_dir dir = (cmd == VCHIQ_IOC_QUEUE_BULK_TRANSMIT) ?
+	enum vchiq_bulk_dir dir = (cmd == VCHIQ_IOC_QUEUE_BULK_TRANSMIT32) ?
 				  VCHIQ_BULK_TRANSMIT : VCHIQ_BULK_RECEIVE;
 
 	if (copy_from_user(&args32, argp, sizeof(args32)))
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
