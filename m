Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E51272041
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:21:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D96E08600D;
	Mon, 21 Sep 2020 10:21:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gEQl0IzRgdgL; Mon, 21 Sep 2020 10:21:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1C637860C6;
	Mon, 21 Sep 2020 10:21:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 87A1D1BF3F4
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8429585FB0
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zJVWW1xliM4a for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:21:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 856C385EA5
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:21:11 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id z1so12138781wrt.3
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:21:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=X+rFpG4vvom05OvyshLNJdJ8kwgKGSpX9C8YhBuxe5o=;
 b=cNOdhewYGKl2YXjKJURDIdKsQu8ZURzvDXtycD++ZmmwaT+J5kQ3pbSlKC1ljvk1rb
 7c9mM7lwiacjgzmwvAgZqpm1kttbtMjT/I+1RArtwZZzP+BmSylpv0oayqX6TuxbD1AL
 YtAxB3UvYq7EPNfCtQPdFX+CqsLux1DiX9RG77Qg6/2jtASmro4jYFwhX5ZSnlwr8eJ3
 5rwMXXBdln8bHX4yjru65FoT9fcu0bCqi5LVbEND7/ih/YnZo4HF33N3w8aem5HtqdAd
 XH7qB8d4UKF8a5zjD2c4Zpu3TiAUisMPK5kiY48tVI0NvfXrE+ArvVK9tY0QmZ4spCa/
 M4Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=X+rFpG4vvom05OvyshLNJdJ8kwgKGSpX9C8YhBuxe5o=;
 b=qXwkrpgF/SB2dTXuKc3aW+vZrVZmsGpTWHkkoFH+0LJYjypliAE2RIdRVsP+aNJcbz
 nPi0OQdIuAo4H0EyLH56vpLuN5l5TXv+gRQgRAXmrQKwDzDkrHN7HYDj5Epj/kr+qE47
 vMVFja8983Ub/5NakKtxxWSi+GEZpzACRMV3L5e0U5m90Jk4TbpVJrIIZFuNiv5tEsN6
 aJORKM4Mvp8dbGb/K66Uv83Yi2CQ4X8T3II/rsq+42lQsXZzeakH6khDhBv9iKWs2Hps
 VDPrz1iFD7KzHZTxPr0N4tmDtQ+xiKPY5yKnaBsE1JHxAVRVp5vZKBzwdH2SwVRN9yfl
 JVDA==
X-Gm-Message-State: AOAM5322H7SJbP57YsdHUv9SjcbYWs31YPh2+t2rCQ84nDdw/Ce39jko
 KoYFhQoZLgXUEJuJlwm+i+aqwzi9eQwkDg==
X-Google-Smtp-Source: ABdhPJx5/I5MOZQ6v+bndDYnz6frgD0KgYbwoj30CpffrluyW6RiigjRwAq0J2375zGKyZudwb/chw==
X-Received: by 2002:a5d:60cc:: with SMTP id x12mr51120033wrt.84.1600683670104; 
 Mon, 21 Sep 2020 03:21:10 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.21.09
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:21:09 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 40/49] staging: media: zoran: device support only
 32bit DMA address
Date: Mon, 21 Sep 2020 10:20:15 +0000
Message-Id: <1600683624-5863-41-git-send-email-clabbe@baylibre.com>
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

The zoran device only supports 32bit DMA address.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_card.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index 864196e7acae..ab16a70a7451 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -1101,6 +1101,12 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	int card_num;
 	const char *codec_name, *vfe_name;
 	unsigned int nr;
+	int err;
+
+	err = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32));
+	if (err)
+		return -ENODEV;
+	vb2_dma_contig_set_max_seg_size(&pdev->dev, DMA_BIT_MASK(32));
 
 	nr = zoran_num++;
 	if (nr >= BUZ_MAX) {
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
