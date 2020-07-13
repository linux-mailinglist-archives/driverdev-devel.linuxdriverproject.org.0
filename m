Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DC71921D05B
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Jul 2020 09:22:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C71EB24400;
	Mon, 13 Jul 2020 07:22:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kpwS0JJkLjSp; Mon, 13 Jul 2020 07:22:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B42722002A;
	Mon, 13 Jul 2020 07:22:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B589B1BF344
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 07:22:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A83AE20415
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 07:22:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BkknR0lTa7UJ for <devel@linuxdriverproject.org>;
 Mon, 13 Jul 2020 07:22:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id C02652002A
 for <devel@driverdev.osuosl.org>; Mon, 13 Jul 2020 07:22:52 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id u5so5623498pfn.7
 for <devel@driverdev.osuosl.org>; Mon, 13 Jul 2020 00:22:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=ek3hOAU51MorgAYYNSHv5t2bQW5itsnExdz3EPoDeyk=;
 b=C0PYldk8dZezqouTVrRZ018RuoGciSKR0fZ2eXkh611mLLpJ5nOc4T5aruIxONgAak
 CraIrSmID6UqWt+gurnTG8wsM27DBj8akTE8zaDFVcS1pztM5dFng8/l8iDhABrAfEWC
 X7Kq+BkSgk2Cjk1D8/sH5rb5TZzZlV/a1PQaSn+QDsMAiSLeQG+QHzqGkPPhhBGhP2VI
 f9oKz2MljC6FJ6EXo9QaHUso3cBR3qBWeMkszAuvwql90fJMVVdLlAUljfqtKhoW2r2i
 S5fHOU3supaud1SRJt0tzY++hXJR9ZuFGTFD16IXrBqxTmbJaU20LpyTzKKwr6IxRE26
 iH2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ek3hOAU51MorgAYYNSHv5t2bQW5itsnExdz3EPoDeyk=;
 b=qRhFsGaaPy3XUDJpD+lBawu4lJ9zmq0lidfb5hC21wytOy2zUkcqv6fV+gOX1nJYYb
 b68/KxYd/9NOU3dMVA8vYMZEL09LZZ5vGGaD60B0szATf1ZubEwTyLk2ZodAighKHlAL
 PQO7Li34SDvLZ0A//W93R/QA42MuldSOBQ7DalmpLhsZIU9DdPvE/94X9pd1R97Is6Me
 PvarYlcoKUZSu77IQS2FYqRXZPNmRQUYvkxlt1V10ThS3KYlAANR8o1ESUs/bCS4YHm0
 6ZRgMIUev1yJe7IDYont0g4L9qBnp2/+8NinS/M4icTehbAtfZIT32oygDtggTXqJLto
 zcDA==
X-Gm-Message-State: AOAM532NxFX89QDBOr3kwn8DUjI9+HRr2qK7WaI9yrQjNyieFcsuRMDo
 x/gY9aTR0nQaZbXYOlV8lRc=
X-Google-Smtp-Source: ABdhPJyPm4JwA+d74QboOp30GD9lyRMqj+MPUVgAA9tF3zwFpO1b3v+QJxTnLOtU84/23OMxInRnjw==
X-Received: by 2002:a63:5a54:: with SMTP id k20mr66661537pgm.226.1594624972273; 
 Mon, 13 Jul 2020 00:22:52 -0700 (PDT)
Received: from localhost.localdomain ([103.225.58.132])
 by smtp.googlemail.com with ESMTPSA id q13sm14345074pjc.21.2020.07.13.00.22.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jul 2020 00:22:51 -0700 (PDT)
From: Baidyanath Kundu <kundubaidya99@gmail.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] Staging: vc04_services: Fix code indent error
Date: Mon, 13 Jul 2020 12:52:24 +0530
Message-Id: <20200713072224.7648-1-kundubaidya99@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, Baidyanath Kundu <kundubaidya99@gmail.com>,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the checkpatch.pl error:

ERROR: code indent should use tabs where possible

Signed-off-by: Baidyanath Kundu <kundubaidya99@gmail.com>
---
 .../staging/vc04_services/vchiq-mmal/mmal-vchiq.c  | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index a075cd63da7f..86c00b68f099 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -294,13 +294,13 @@ static void buffer_to_host_work_cb(struct work_struct *work)
 	/* queue the bulk submission */
 	vchiq_use_service(instance->service_handle);
 	ret = vchiq_bulk_receive(instance->service_handle,
-				 msg_context->u.bulk.buffer->buffer,
-			         /* Actual receive needs to be a multiple
-			          * of 4 bytes
-			          */
-			         (len + 3) & ~3,
-			         msg_context,
-			         VCHIQ_BULK_MODE_CALLBACK);
+				msg_context->u.bulk.buffer->buffer,
+				/* Actual receive needs to be a multiple
+				 * of 4 bytes
+				 */
+				(len + 3) & ~3,
+				msg_context,
+				VCHIQ_BULK_MODE_CALLBACK);
 
 	vchiq_release_service(instance->service_handle);
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
