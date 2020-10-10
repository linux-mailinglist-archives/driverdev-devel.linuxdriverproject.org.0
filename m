Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F346928A128
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Oct 2020 20:30:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BFADA877EA;
	Sat, 10 Oct 2020 18:30:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mCq5ZvMuzin8; Sat, 10 Oct 2020 18:30:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2FE3C877B3;
	Sat, 10 Oct 2020 18:30:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4371C1BF5D7
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 18:30:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3FF1C86EDC
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 18:30:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pQrGjLnS_6rH for <devel@linuxdriverproject.org>;
 Sat, 10 Oct 2020 18:30:13 +0000 (UTC)
X-Greylist: delayed 01:11:22 by SQLgrey-1.7.6
Received: from mail.teknik.io (mail.teknik.io [5.79.72.163])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 217F086ED1
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 18:30:12 +0000 (UTC)
dkim-signature: v=1; a=rsa-sha256; d=teknik.io; s=dkim;
 c=relaxed/relaxed; q=dns/txt;
 h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Transfer-Encoding; 
 bh=9J/Xx1xk+63xPy4JqmRp6MYQEE6DY0yvVWSnsb8siCo=;
 b=IjFQpjEg3uUx11+IOqUqaX638+ha4ghGwGOyALNxRKZM9+SWusUG4Mb8ONH7qd2WREFylM/7TxjOMhXD7ytcgj1Q/Ja1y0IWeLyv4SWBpJ+3ndtJxKAaTyIg806mJnFj4Kakj+GCziiQyCjmPdqpCv5cnozH5txhCy3p2eqO5V24tKxfoqGm3mIkIiIec4NLH3MkiYp65UrhkvX6DpzDB3EmiuFAwRZGFdKm4cI/4hfLqWow//BFPRR8KZ
 8161UuLMviahmKnnILOwMO8awXyx+Y9Z5MrQU4Ol1sq4NPdae9GwOzNFLSQ34sz5LJMS5IF63aNvEbh3IwgrE8a/2PkA==
Received: from pop-os (89.239.213.172.dhcp.fibianet.dk [89.239.213.172])
 by mail.teknik.io with ESMTPSA
 (version=TLSv1.2 cipher=ECDHE-ECDSA-AES256-GCM-SHA384 bits=256)
 ; Sat, 10 Oct 2020 10:08:25 -0700
From: Vasily Utkin <vautkin@teknik.io>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: comedi: ni_mio_common: Fix newline after dereference
 operator
Date: Sat, 10 Oct 2020 19:07:22 +0200
Message-Id: <20201010170721.98595-1-vautkin@teknik.io>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Vasily Utkin <vautkin@teknik.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix newline after dereference operator detected by checkpatch.

Signed-off-by: Vasily Utkin <vautkin@teknik.io>
---
 drivers/staging/comedi/drivers/ni_mio_common.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
index 9266e13f6271..4f80a4991f95 100644
--- a/drivers/staging/comedi/drivers/ni_mio_common.c
+++ b/drivers/staging/comedi/drivers/ni_mio_common.c
@@ -723,8 +723,7 @@ static void ni_release_gpct_mite_channel(struct comedi_device *dev,
 
 		ni_set_bitfield(dev, NI_E_DMA_G0_G1_SEL_REG,
 				NI_E_DMA_G0_G1_SEL_MASK(gpct_index), 0);
-		ni_tio_set_mite_channel(&devpriv->
-					counter_dev->counters[gpct_index],
+		ni_tio_set_mite_channel(&devpriv->counter_dev->counters[gpct_index],
 					NULL);
 		mite_release_channel(mite_chan);
 	}
-- 
2.25.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
