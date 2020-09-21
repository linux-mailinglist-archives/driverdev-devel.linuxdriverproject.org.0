Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C5658272038
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:21:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6E248868CA;
	Mon, 21 Sep 2020 10:21:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ufDgf0kARWif; Mon, 21 Sep 2020 10:21:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1FDC886819;
	Mon, 21 Sep 2020 10:21:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 806311BF962
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7C84685EA5
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A4lRU92yvRbv for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:21:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E8C3E85FD5
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:21:04 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id x14so12097222wrl.12
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=fZV35x1Iz2E43SPidCPc9QQFeH1eHhufPHV6/Pg1brc=;
 b=tduwWF0NtI3cn20DkNi9IESemUfiGeLBLMBfv0DPvHLkobph7WNzojhd59us8p09ZB
 zjK7P5nC4xgxT5ywKK7G3V0K6G2nDZfWvqGsMTmwT4XFLRcwBvTs5NEXzr3+oq9aJePj
 PThFY0Zyv9HP4Oaf/fb00JGfj19WkQXnS0Y/NP2m4PtU9gs6d9GJLawogoqLfUZw7hVb
 fEi5SS4XNtT83PnqsbU/q5pXWnjUzvq5euMg+rdyB1fqMzq1DEFnkfA7+uVg5yOvDPjL
 ER6SBAHKGXt5Qi++YmjJ3KlbprPmuQKQPaZ5mz+QFiGVDQxfpL0+FBN5TiogzU7bZ7ta
 vzpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=fZV35x1Iz2E43SPidCPc9QQFeH1eHhufPHV6/Pg1brc=;
 b=X5xiUolJZuF4XC/c/wBunkVl46E3ShqYmtrE78ez6vDKxSyqeqRrElJyku72w6lxQU
 9JfO+mhbFGlP/c/ySC1QfhI06SPY0JtWs0SzU+QVmKeD/sZ9CzW8e/9W6ja5iVw6y5yy
 9U4Ca3QnVPM/SKcfkVosuG23anph6xqXQivNNw0DmZWNk7tv/6z9bKlarsMFYDTVTUvS
 +cIuwTSjJGsbT+5Fg0qAzfjS3rQIzq7RfnFuoh8ci4wc2geZW8UhwBv91SZndgF0pUsk
 KJdCqVTFg4U7qkeX0tQenNCWYPr1ZCmhSeB6kGXrQO4ZBza72JelgDiLSQ2Qu8UP/Tf5
 WSdw==
X-Gm-Message-State: AOAM532Um7k7yvD8zjKrTwM6DfQzd138b6zxwFYYrFZvOcEap0m4lQPn
 l09R9F+sr3LXPUX3Icl2TiA6Xg==
X-Google-Smtp-Source: ABdhPJzkPKV30xQ7dnOo7B95UCRnoif+Ufxh0naKl1mhkBaiRw4uyZ9JrUV/tYWZKK0s6aP/1XkYSQ==
X-Received: by 2002:adf:9405:: with SMTP id 5mr28243515wrq.51.1600683663492;
 Mon, 21 Sep 2020 03:21:03 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.21.02
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:21:02 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 33/49] staging: media: zoran: add stat_com buffer
Date: Mon, 21 Sep 2020 10:20:08 +0000
Message-Id: <1600683624-5863-34-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1600683624-5863-1-git-send-email-clabbe@baylibre.com>
References: <1600683624-5863-1-git-send-email-clabbe@baylibre.com>
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
 drivers/staging/media/zoran/zoran_card.c | 11 ++++++++++-
 2 files changed, 12 insertions(+), 1 deletion(-)

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
index 36305aaabd7d..b841f532e6bb 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -944,6 +944,12 @@ static int zr36057_init(struct zoran *zr)
 	for (j = 0; j < BUZ_NUM_STAT_COM; j++)
 		zr->stat_com[j] = cpu_to_le32(1); /* mark as unavailable to zr36057 */
 
+	zr->stat_comb = dma_alloc_coherent(&zr->pci_dev->dev, BUZ_NUM_STAT_COM * sizeof(u32) * 2, &zr->p_scb, GFP_KERNEL);
+	if (!zr->stat_comb) {
+		err = -ENOMEM;
+		goto exit_statcom;
+	}
+
 	/* Now add the template and register the device unit. */
 	*zr->video_dev = zoran_template;
 	zr->video_dev->v4l2_dev = &zr->v4l2_dev;
@@ -957,7 +963,7 @@ static int zr36057_init(struct zoran *zr)
 	zr->video_dev->vfl_dir = VFL_DIR_M2M;
 	err = video_register_device(zr->video_dev, VFL_TYPE_VIDEO, video_nr[zr->id]);
 	if (err < 0)
-		goto exit_statcom;
+		goto exit_statcomb;
 	video_set_drvdata(zr->video_dev, zr);
 
 	zoran_init_hardware(zr);
@@ -972,6 +978,8 @@ static int zr36057_init(struct zoran *zr)
 	zr->initialized = 1;
 	return 0;
 
+exit_statcomb:
+	dma_free_coherent(&zr->pci_dev->dev, BUZ_NUM_STAT_COM * sizeof(u32) * 2, zr->stat_comb, zr->p_scb);
 exit_statcom:
 	dma_free_coherent(&zr->pci_dev->dev, BUZ_NUM_STAT_COM * sizeof(u32), zr->stat_com, zr->p_sc);
 exit_video:
@@ -1003,6 +1011,7 @@ static void zoran_remove(struct pci_dev *pdev)
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
