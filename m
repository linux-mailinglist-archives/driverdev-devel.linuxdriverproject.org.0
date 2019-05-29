Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FD22DEC0
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 May 2019 15:44:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DDB1286C12;
	Wed, 29 May 2019 13:44:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kVwgPgSM-C+Y; Wed, 29 May 2019 13:44:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6BE138489F;
	Wed, 29 May 2019 13:44:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 87B7C1BF2F5
 for <devel@linuxdriverproject.org>; Wed, 29 May 2019 13:44:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 84FB222D44
 for <devel@linuxdriverproject.org>; Wed, 29 May 2019 13:44:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A41GyfApOjxq for <devel@linuxdriverproject.org>;
 Wed, 29 May 2019 13:44:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by silver.osuosl.org (Postfix) with ESMTPS id E5E0A22610
 for <devel@driverdev.osuosl.org>; Wed, 29 May 2019 13:44:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Sender:Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5CAxTTfm7ufTvE2adOFPyuvrXvgAeycfcowCWQxk/EA=; b=eJPmz8MhUkO+IJNUAxWN+yhsK
 rrH7AaXVVTE+7ltePTmjQ84QBAYcwPw+SaqQEY/SIYGavnZ0ibXRLkjU9rn+22vgNf4lXjSih7bJd
 +e1hDAF6xph/U68eK7fv1PVRFx0vUczdfhc3zAZL9cit1jInBhALCa6mLAfAo+hJwwzA69jZiq0Hb
 XL+NDFfFjLxeLZICUqWx7qSRisFNs8MGG44eexbCF9ikZtYEzQsKypGPaZg6yWmES0vuog50ksvuZ
 NYvqm9PV1HdW0z9jZHBvIEcjsE1CRWVKNPG8oj9bf2LM/B3QQNcaHUzQv8MwUiIxn/q9+tjgmkap+
 cCCSCzrgQ==;
Received: from 177.132.232.81.dynamic.adsl.gvt.net.br ([177.132.232.81]
 helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVysm-0003Db-Tl; Wed, 29 May 2019 13:44:44 +0000
Received: from mchehab by bombadil.infradead.org with local (Exim 4.92)
 (envelope-from <mchehab@bombadil.infradead.org>)
 id 1hVysj-0006Ue-Kl; Wed, 29 May 2019 09:44:41 -0400
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: 
Subject: [PATCH] media: staging: allegro: cleanup two warnings
Date: Wed, 29 May 2019 09:44:37 -0400
Message-Id: <5a433fccafc73e1361f65c4423b0099bbd18f67f.1559137474.git.mchehab+samsung@kernel.org>
X-Mailer: git-send-email 2.21.0
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@infradead.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Sparse complains about two issues when building with i386
and COMPILE_TEST:

	drivers/staging/media/allegro-dvt/allegro-core.c:1849:36: warning: constant 0xffffffff00000000UL is so big it is unsigned long long
	drivers/staging/media/allegro-dvt/allegro-core.c:865:24: error: incompatible types in comparison expression (different type sizes)

Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 drivers/staging/media/allegro-dvt/allegro-core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/allegro-dvt/allegro-core.c b/drivers/staging/media/allegro-dvt/allegro-core.c
index d007d1778f0e..20b38b737869 100644
--- a/drivers/staging/media/allegro-dvt/allegro-core.c
+++ b/drivers/staging/media/allegro-dvt/allegro-core.c
@@ -863,7 +863,7 @@ static ssize_t allegro_mbox_read(struct allegro_dev *dev,
 	 * Skip the header, as was already read to get the size of the body.
 	 */
 	body_no_wrap = min((size_t)header->length,
-			   (mbox->size - (head + sizeof(*header))));
+			   (size_t)(mbox->size - (head + sizeof(*header))));
 	regmap_bulk_read(dev->sram, mbox->data + head + sizeof(*header),
 			 dst + sizeof(*header), body_no_wrap / 4);
 	regmap_bulk_read(dev->sram, mbox->data,
@@ -1846,7 +1846,7 @@ static void allegro_copy_fw_codec(struct allegro_dev *dev,
 		     lower_32_bits(icache_offset));
 
 	dcache_offset =
-	    (dev->firmware.paddr & 0xffffffff00000000UL) - MCU_CACHE_OFFSET;
+	    (dev->firmware.paddr & 0xffffffff00000000ULL) - MCU_CACHE_OFFSET;
 	v4l2_dbg(2, debug, &dev->v4l2_dev,
 		 "dcache_offset: msb = 0x%x, lsb = 0x%x\n",
 		 upper_32_bits(dcache_offset), lower_32_bits(dcache_offset));
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
