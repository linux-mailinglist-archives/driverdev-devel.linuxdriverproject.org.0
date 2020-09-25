Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B1227912D
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 20:54:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A942187655;
	Fri, 25 Sep 2020 18:54:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UicqFieUdHOP; Fri, 25 Sep 2020 18:54:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2834C875A4;
	Fri, 25 Sep 2020 18:54:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7ECE11BF330
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:54:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7BA9186D23
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:54:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6d8cC12pclB9 for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 18:54:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id ED72286D22
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 18:54:44 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id 26so3830117ois.5
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 11:54:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Mu/0FQjMJVfM9fUQVyncIBYRdlwubKZ9Y+KVohkSjQg=;
 b=DnFXQYBFVXbbd04Jl7J8lhM2CyKMvutu0uQxQybdPEl0ertUHJpaDA98FzUxTuB4rO
 BF/r6Q51tA7B0QVDIYJyLKN77l5JSHwZr4oEhmLv4gIaCrAZtqrCBFEP/LH8wD4MuUFL
 LVxP7kG/MrsHrCsPAqmZGFwS854M2VH09HEJvuEjQfhMKpxk5W0ichTtATYKtAAWS0E0
 a0eRgU26W8ybiHIoT8tAKCi4r5IhDwB+MI+Hdu2NdSmytjKkrwjvh/dFaBmAGHusebCM
 zsr2THKoUR9eP9yKtetN61yL9VGzNr9zU+8kuRrjw/3b1MQIXnIsKgDz5GnKdQ/PKrmJ
 OkVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Mu/0FQjMJVfM9fUQVyncIBYRdlwubKZ9Y+KVohkSjQg=;
 b=hAIgXBMn34wBlAFC35sKop4XiOULbJtVcRCeV6VRroTTxMObEo29NPVmzDG8f/pUY4
 CwXYCsw01obnxOO4Cy3NeStCJgf8b8MwH6iZxNMOMqHynqtt+z2zemK9H4x9B/ZdBnTO
 Fc5CjztBTs3JQ8hEKpgTSHZds7cqfByVWvlp0GRDo6px4uwEzHQeOPqHIoEOvI8ps02T
 xW/xnIe0W8xZ4UhjlC1IkykaEoTUlpXiPoOwSCrvO38rzA5Tp98Om5S0lfX9MRfKxFOR
 tm9271vl14R+ARLWFtKnxLZUapXVVKOx8qqpbtbFMvDuis7guTxQHNHkTNeSgzv3od/v
 vR4g==
X-Gm-Message-State: AOAM5305k0zwlY9RTL5T7RB4h45Yb3LcYO/IBOzONoUtRT1kD3mgQg9U
 zijgYeWoQoNYGIYiekILJlRb3y8SJfHxIQ==
X-Google-Smtp-Source: ABdhPJxhu7axivX74AqqlShaMLp3f7vw9dRngLPHb9SIgeC1+pypkhaNJLfB8RQRKTmMlQZYoKNDcQ==
X-Received: by 2002:a17:90a:f018:: with SMTP id
 bt24mr824508pjb.140.1601058866140; 
 Fri, 25 Sep 2020 11:34:26 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.34.20
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:34:25 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 32/47] staging: media: zoran: add stat_com buffer
Date: Fri, 25 Sep 2020 18:30:42 +0000
Message-Id: <1601058657-14042-33-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1601058657-14042-1-git-send-email-clabbe@baylibre.com>
References: <1601058657-14042-1-git-send-email-clabbe@baylibre.com>
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
Cc: devel@driverdev.osuosl.org, Corentin Labbe <clabbe@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch adds the allocation of the stat_com buffer which be used
later.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran.h      |  2 ++
 drivers/staging/media/zoran/zoran_card.c | 13 ++++++++++++-
 2 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/zoran/zoran.h b/drivers/staging/media/zoran/zoran.h
index 87ca324f6ec2..c73b7e7fd5e1 100644
--- a/drivers/staging/media/zoran/zoran.h
+++ b/drivers/staging/media/zoran/zoran.h
@@ -357,6 +357,8 @@ struct zoran {
 	wait_queue_head_t test_q;
 
 	dma_addr_t p_sc;
+	__le32 *stat_comb;
+	dma_addr_t p_scb;
 };
 
 static inline struct zoran *to_zoran(struct v4l2_device *v4l2_dev)
diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index 147bef1df33c..756705a34e2b 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -951,6 +951,14 @@ static int zr36057_init(struct zoran *zr)
 	for (j = 0; j < BUZ_NUM_STAT_COM; j++)
 		zr->stat_com[j] = cpu_to_le32(1); /* mark as unavailable to zr36057 */
 
+	zr->stat_comb = dma_alloc_coherent(&zr->pci_dev->dev,
+					   BUZ_NUM_STAT_COM * sizeof(u32) * 2,
+					   &zr->p_scb, GFP_KERNEL);
+	if (!zr->stat_comb) {
+		err = -ENOMEM;
+		goto exit_statcom;
+	}
+
 	/* Now add the template and register the device unit. */
 	*zr->video_dev = zoran_template;
 	zr->video_dev->v4l2_dev = &zr->v4l2_dev;
@@ -964,7 +972,7 @@ static int zr36057_init(struct zoran *zr)
 	zr->video_dev->vfl_dir = VFL_DIR_M2M;
 	err = video_register_device(zr->video_dev, VFL_TYPE_VIDEO, video_nr[zr->id]);
 	if (err < 0)
-		goto exit_statcom;
+		goto exit_statcomb;
 	video_set_drvdata(zr->video_dev, zr);
 
 	zoran_init_hardware(zr);
@@ -979,6 +987,8 @@ static int zr36057_init(struct zoran *zr)
 	zr->initialized = 1;
 	return 0;
 
+exit_statcomb:
+	dma_free_coherent(&zr->pci_dev->dev, BUZ_NUM_STAT_COM * sizeof(u32) * 2, zr->stat_comb, zr->p_scb);
 exit_statcom:
 	dma_free_coherent(&zr->pci_dev->dev, BUZ_NUM_STAT_COM * sizeof(u32), zr->stat_com, zr->p_sc);
 exit_video:
@@ -1010,6 +1020,7 @@ static void zoran_remove(struct pci_dev *pdev)
 	pci_free_irq(zr->pci_dev, 0, zr);
 	/* unmap and free memory */
 	dma_free_coherent(&zr->pci_dev->dev, BUZ_NUM_STAT_COM * sizeof(u32), zr->stat_com, zr->p_sc);
+	dma_free_coherent(&zr->pci_dev->dev, BUZ_NUM_STAT_COM * sizeof(u32) * 2, zr->stat_comb, zr->p_scb);
 	pci_release_regions(pdev);
 	pci_disable_device(zr->pci_dev);
 	video_unregister_device(zr->video_dev);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
