Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBBB01F238C
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jun 2020 01:15:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4DFF888457;
	Mon,  8 Jun 2020 23:15:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nD-5UrkqQZeI; Mon,  8 Jun 2020 23:15:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AE05988390;
	Mon,  8 Jun 2020 23:15:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D1F771BF381
 for <devel@linuxdriverproject.org>; Mon,  8 Jun 2020 23:15:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CEFBB84EEB
 for <devel@linuxdriverproject.org>; Mon,  8 Jun 2020 23:15:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZihfCV5mZnAp for <devel@linuxdriverproject.org>;
 Mon,  8 Jun 2020 23:15:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5289184993
 for <devel@driverdev.osuosl.org>; Mon,  8 Jun 2020 23:15:35 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 42C9720820;
 Mon,  8 Jun 2020 23:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591658135;
 bh=0KMVBazzO/udkctSIz3PZmnLDrZNTnpCBWpljnxyuvQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=SMX8nJQG/UPU/DcZg1lSJPJKBrtM0m6RsAA7KbgWTG1h4DAIB31X3Xeca0sMgbFnt
 EB8qmVU2BAsxeCdTSgl/UJcHB8ki5R+fWDbaVjE7G3M3+aauf4bT7WL4JNzRsT4rX2
 RbMauJXHl87sEhcuGgmkLbH3IWVBgDNyBk9/g7UY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 169/606] staging: iio: ad2s1210: Fix SPI reading
Date: Mon,  8 Jun 2020 19:04:54 -0400
Message-Id: <20200608231211.3363633-169-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608231211.3363633-1-sashal@kernel.org>
References: <20200608231211.3363633-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
Cc: devel@driverdev.osuosl.org, Dragos Bogdan <dragos.bogdan@analog.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Stable@vger.kernel.org,
 linux-iio@vger.kernel.org, Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Alexandru Ardelean <alexandru.ardelean@analog.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Dragos Bogdan <dragos.bogdan@analog.com>

commit 5e4f99a6b788047b0b8a7496c2e0c8f372f6edf2 upstream.

If the serial interface is used, the 8-bit address should be latched using
the rising edge of the WR/FSYNC signal.

This basically means that a CS change is required between the first byte
sent, and the second one.
This change splits the single-transfer transfer of 2 bytes into 2 transfers
with a single byte, and CS change in-between.

Note fixes tag is not accurate, but reflects a point beyond which there
are too many refactors to make backporting straight forward.

Fixes: b19e9ad5e2cb ("staging:iio:resolver:ad2s1210 general driver cleanup.")
Signed-off-by: Dragos Bogdan <dragos.bogdan@analog.com>
Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
Cc: <Stable@vger.kernel.org>
Signed-off-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/iio/resolver/ad2s1210.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index 4b25a3a314ed..ed404355ea4c 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -130,17 +130,24 @@ static int ad2s1210_config_write(struct ad2s1210_state *st, u8 data)
 static int ad2s1210_config_read(struct ad2s1210_state *st,
 				unsigned char address)
 {
-	struct spi_transfer xfer = {
-		.len = 2,
-		.rx_buf = st->rx,
-		.tx_buf = st->tx,
+	struct spi_transfer xfers[] = {
+		{
+			.len = 1,
+			.rx_buf = &st->rx[0],
+			.tx_buf = &st->tx[0],
+			.cs_change = 1,
+		}, {
+			.len = 1,
+			.rx_buf = &st->rx[1],
+			.tx_buf = &st->tx[1],
+		},
 	};
 	int ret = 0;
 
 	ad2s1210_set_mode(MOD_CONFIG, st);
 	st->tx[0] = address | AD2S1210_MSB_IS_HIGH;
 	st->tx[1] = AD2S1210_REG_FAULT;
-	ret = spi_sync_transfer(st->sdev, &xfer, 1);
+	ret = spi_sync_transfer(st->sdev, xfers, 2);
 	if (ret < 0)
 		return ret;
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
