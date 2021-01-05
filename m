Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B2B2EAFE4
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Jan 2021 17:21:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DDC1586A4C;
	Tue,  5 Jan 2021 16:21:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fyrgR8gu4MBc; Tue,  5 Jan 2021 16:21:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 051618694B;
	Tue,  5 Jan 2021 16:21:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6B4B91BF5A6
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 16:21:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 683E686957
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 16:21:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h2M0KGytIInH for <devel@linuxdriverproject.org>;
 Tue,  5 Jan 2021 16:21:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
 [209.85.128.48])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1D15A8694B
 for <devel@driverdev.osuosl.org>; Tue,  5 Jan 2021 16:21:17 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id r4so78294wmh.5
 for <devel@driverdev.osuosl.org>; Tue, 05 Jan 2021 08:21:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NX9GgUhvrdFINxLCVAgA1k2tN4aNPfLwDkftpmTakS4=;
 b=DHjLS8IzLeEntGuAA9wXm1+luX3XSq9lobGlMYt7iBi9Qp+p7MfB5jmYIjD1vvB/KR
 SBBKZe6YT/jr3MA2evkNYq1lxxfOgBFioOWFDSUIAsN3ksjsLwaCwigVC7UhosecFosE
 VZ3/o1CyAEY3yCfD3CyuudgTqDncB2vOGKON2gnLWvSS+rzvacwEhMCM2WdGesj/u9vs
 ZxlYlfRXUbGuoy/LbzxZA05hdzMa8kUSvNVDhvD1Unp4ZblxV/yoDKdbvRUnYg+tSTso
 6Tlr6tHyowr5W7coUDdWVhMumnNz0tazEbSntWa/HcTg711kh7WWboia42hU4xInLcVp
 FDHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NX9GgUhvrdFINxLCVAgA1k2tN4aNPfLwDkftpmTakS4=;
 b=P8t3bk1uUteEOkTZo2St4670WzbzKehNLVZSdNqEtOms7e5hJixBaz3vYpQ6fBfctW
 o80eEVZ+fiZFZjn8rU6HKw7wrBTlTvluvVsgI3g2Rm9xK3nWvCUl+l3f0SNK6xk38bhD
 epSahtex8IosyD/UAdwCyIMAHpWUEnzem5W4e3hhiLZnS9UCnxbLo7E0Ete5AnuAlQ2z
 urdylqxVBk6AkyvYArH3oEG01CgsdWkPx1Nh39D55fDhpxbQONPPCgEB0euoSfY0SLCg
 DbYAp9M97/i4xdn/jFVX2qzT2DVdm/mtcRvN7/8pqI7rYELz9FIR3X5OMQfoimX0v+ZA
 50lg==
X-Gm-Message-State: AOAM533TZ4H+TwamYJDbh+PBP+OFce7XyhfsfD22Lo+g0dYB+1za1Iwe
 IhXBlHmwX7Q5qx4r8+bUhxC4mA==
X-Google-Smtp-Source: ABdhPJxeQeNlXlsMq20TUsc4rPZnAT1HbVfOQWK/vG6xY2/s75TU8LKviTj0s3Y811fzpLHq42i5OA==
X-Received: by 2002:a1c:4107:: with SMTP id o7mr27511wma.69.1609863675416;
 Tue, 05 Jan 2021 08:21:15 -0800 (PST)
Received: from buildbot.pitowers.org ([2a00:1098:3142:14:ae1f:6bff:fedd:de54])
 by smtp.gmail.com with ESMTPSA id r82sm6654wma.18.2021.01.05.08.21.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Jan 2021 08:21:14 -0800 (PST)
From: Phil Elwell <phil@raspberrypi.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Arnd Bergmann <arnd@arndb.de>, Dan Carpenter <dan.carpenter@oracle.com>,
 Stefan Wahren <stefan.wahren@i2se.com>,
 bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org
Subject: [PATCH v2 2/3] staging: vchiq: Fix bulk transfers on 64-bit builds
Date: Tue,  5 Jan 2021 16:20:29 +0000
Message-Id: <20210105162030.1415213-3-phil@raspberrypi.com>
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
