Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC4C272036
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:21:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D66F120BF8;
	Mon, 21 Sep 2020 10:21:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3QD-VzCgmSE1; Mon, 21 Sep 2020 10:21:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9B61920526;
	Mon, 21 Sep 2020 10:20:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DBE111BF3F4
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:20:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D3CC68683C
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:20:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QT9l1bqGYj8n for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:20:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9C66686856
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:20:47 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id x23so11544504wmi.3
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=d+cq9oU9Ma9PInvC8Tn3Mmy1QNY/EmZQ8V6ofB5bAgs=;
 b=HuZV4z/aX5wQwktepBLxIaWp4Yua59yuPHG4i1pRHYu5zWrhN6JbZt6XBHolFvoph1
 AGJKWr3LxB2xHduo0DMKAlTMuLT6QQB4sxpj05Nk1jZcwHCqAXrMuTpLw6i7jmTww344
 M7YshZYYHApDueyyL+n+z1JwwFJnMqsEbbITkEQf+TrFw7ktx4RMPXlZI6U/3qKVjkVE
 +OlMHSBX4sOClJoqZimOJvv2dtYQOuj97gkYJ/TU60o4YbzlJVMOPL12pSJ6q3GiTdFp
 aaRh7jtdDmnsG4ffnrCfP+gZz9TfavAGqvD3EMR4TB+nd6REzA3wUQJKFtB1Mls2Q/9a
 lZSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=d+cq9oU9Ma9PInvC8Tn3Mmy1QNY/EmZQ8V6ofB5bAgs=;
 b=riSjbFImmEVu8Av/VNFlUrng8lKq30QPSrlpLcrNk0yGlY1+kWmOpGAoltJZjRvBx8
 MbG4VpZpxbUXFyg518luphWqqHCbEL8B88MO5klv1nMA5dwYB6GqeF4mCSCenpHmBuaH
 O5wncA4gY07OExf8OAopg/UdmV5sPqOteqyapQ/ipz/85sDY8zPVfOWJ9nMlGJ+zTNFD
 pFb9aRbcEu8tWts7q9QpQ7G0O5nIEoY4pe8GxtkOdTMNXwzFA3TJVSwmREgZR7W6NdPQ
 v1ABVlX/pJpFRTyEGBKiP2IF6+uScMBruN504AZH8cMWEopwr6vKzh7xQk1I0FTl8TCJ
 kjcg==
X-Gm-Message-State: AOAM531dUDgM84BGiWnlNjco9PgY7Q/0a1yrvdp/dCxKEl8fuLMYdlTs
 dSAlSnh4HExnYgDdbCmgxLm4Pw==
X-Google-Smtp-Source: ABdhPJzh07AdoC79L31ogzqdfpLSo8Vo99PgY8VHgWZwSZisNeA806uMbcHsomMmjB2Z+5Zfy8pl9A==
X-Received: by 2002:a1c:4381:: with SMTP id
 q123mr28356129wma.108.1600683646253; 
 Mon, 21 Sep 2020 03:20:46 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.20.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:20:45 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 14/49] staging: media: zoran: use VFL_TYPE_VIDEO
Date: Mon, 21 Sep 2020 10:19:49 +0000
Message-Id: <1600683624-5863-15-git-send-email-clabbe@baylibre.com>
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

The VFL_TYPE_GRABBER type was removed, so let's use the new type.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_card.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index 02af426cf94e..34841c12c224 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -957,7 +957,7 @@ static int zr36057_init(struct zoran *zr)
 	 * another day.
 	 */
 	zr->video_dev->vfl_dir = VFL_DIR_M2M;
-	err = video_register_device(zr->video_dev, VFL_TYPE_GRABBER, video_nr[zr->id]);
+	err = video_register_device(zr->video_dev, VFL_TYPE_VIDEO, video_nr[zr->id]);
 	if (err < 0)
 		goto exit_free;
 	video_set_drvdata(zr->video_dev, zr);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
