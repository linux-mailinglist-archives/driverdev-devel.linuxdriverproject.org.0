Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4092790F0
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 20:41:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DBF9F86E69;
	Fri, 25 Sep 2020 18:41:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bcLSPR6k+nz5; Fri, 25 Sep 2020 18:41:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 099C486D2C;
	Fri, 25 Sep 2020 18:41:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 44AC61BF330
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:41:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3648E2E17F
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:41:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mZ6tZeb5iV47 for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 18:41:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 966392E17B
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 18:41:47 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id r9so3963642ioa.2
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 11:41:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8DXOPb+jTf2cbBsna6JXYcV55+pAg5o8NJIMoaN+E0U=;
 b=iZMatHbTlnWwQFUCuHa2FnrmdgaH1hw1G64umh+eTwQ3LxWGm4FIWkdEDQhrHe0vRr
 ld335C/3baqnKmy9YEtq6FvnYGE+J0jgiXYugyouEM+SeJpY0IMp9rNOKkRR+aX5wguP
 j8Fu8GzkXN8qGF3GZ/8TJv5ILyMiMuMmXgnFM8NusvtVJEbaAbtr2YjEkRwGB/l58mMt
 fLWEJfFMeYs8xDzzHrRq1vr2gMBM74yQenbMF77ILelwbKA2oZlFw5S2onbz/YBu5uh5
 9ZHtEQmSCxHVBpQf70OeC3rmiSTdi0zjc8hIxYHsQy4Z96VGzCFSg/wX3K0bt3gwY75O
 c0Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8DXOPb+jTf2cbBsna6JXYcV55+pAg5o8NJIMoaN+E0U=;
 b=uf37eM0iRrQ/hqU+VwJTTb1V4ZrdQNXeAuiDcSjhR6bG2ZVAgvpTjrxYGL/XqamtBb
 fcK+xZagmK1ag2wVsfFQ5t3pwhB5cw/JD5k4z1za2dMwnbjd/e7wZyFd+LpLkk0e2tAU
 RgAJN1f//cfQ3HEju2iphuzUCEU7uO6fJhBcjo8yYJ87Ll+szf910ocdQovvlLvOdYnT
 wZUCRRsa8MfT4ZtGTBx6Vc2TR8Xy1wEmWOVjDhzNL413YQ6FhyiwFhn6Vj5moppLpVbm
 hHcEtiaF7VddJTvXbl4Gc59RRn7Fu4lvYgIrvpM8TnCYNWgnkbGzTvkST77TYZ68+Z+I
 KKfg==
X-Gm-Message-State: AOAM532Uhf4ecrqUX4D4BLbsO63mrstJZWLtPM70KftGd0C2frfDHehC
 qUT7+Nq9fCuzV4HsIcevhjd3F2vDv/vkEw==
X-Google-Smtp-Source: ABdhPJzI64IKVpL7ohgfGdyE+8dxaqUZw0OqzvbyRMs6pZcfZOFhDoqXfHbhNr2wU0FhdlrgrAWxlQ==
X-Received: by 2002:a63:c74e:: with SMTP id v14mr248177pgg.186.1601058901799; 
 Fri, 25 Sep 2020 11:35:01 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.34.56
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:35:00 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 38/47] staging: media: zoran: device support only
 32bit DMA address
Date: Fri, 25 Sep 2020 18:30:48 +0000
Message-Id: <1601058657-14042-39-git-send-email-clabbe@baylibre.com>
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

The zoran device only supports 32bit DMA address.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_card.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index dbdb1c4b0515..0a193283eefc 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -1111,6 +1111,12 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
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
