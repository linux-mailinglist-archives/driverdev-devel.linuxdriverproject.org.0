Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8530C55F7E
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 05:29:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CC87A86819;
	Wed, 26 Jun 2019 03:29:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tiy0DjcmBNua; Wed, 26 Jun 2019 03:29:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 68B09867FF;
	Wed, 26 Jun 2019 03:29:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0D71D1BF35B
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 03:29:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0229986742
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 03:29:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8ytC7iQzic1b for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 03:29:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7EF8286767
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 03:29:14 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id c85so539484pfc.1
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 20:29:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=3Bk3HSDpfvFkfZOSH4U92ucBAW0uikex4TEJcoU8cZg=;
 b=F39j0DFbpORjG7U99JjjGnvYO8DvfbbYS/uHEhc53PXtyhGTgmUdMcYhoA4AQvABgI
 EsmUj0eatmyCEidyKK/IaBJQnS6bz4pr089jcIExUOc4vkqY7f+WvswvZK6RYzizXSR9
 O8t/0J3Fv9ndpNEg6teipkCTCOF9MZyfhN3bnBJK9yVyhkdLnPm4fPGtXsPqgKOUM0Tr
 c3pnzLcqMBoqM/bJfcmosPZvLgIE4B+N25nSTAfwFOFFjp00Uo7Tpi9bJsvcBzWpUXCb
 uFmdn5H5Uj8MQjikkkzeEwSByJMZRFiEJj30QQ/DWAgmmmPhvqrhkny1zE03XFxPoBkS
 xGzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=3Bk3HSDpfvFkfZOSH4U92ucBAW0uikex4TEJcoU8cZg=;
 b=i2IDe80/bLGUglZb8WVvI1EMghof9biGHGdW0ZjLjID7Ky2i+w+cY8fKU35sFrja4i
 wVx0SlVJJBTJRY/xf2+0MG0lMFXGD0BHqPMkr7KuCqUFa1ymapZsR4B+lZCqXmzpceAb
 IAk8Y9SyK76yKyVc9W+btroMwhPDeYhdGuDX07DAVtLyRyOdp8wwlMF0ImM8IcFskwXI
 pl/D1SRgSolvU0eDJeKSwwGN1h8g3KER3kbx1XL+RROjR/POHcmQscgwGOOsrRGXM2PM
 X5lh+HDANF0dVNmxXdGXK/I8pPQFqRrM6y2iGK32YVwJyxE0u3ADCkDa2xJKpY6IxFph
 Wh6A==
X-Gm-Message-State: APjAAAXMoeNlMhDm0Qj0+IYGfT2PDHuVJauPfN7+9v3s95NQf8ismPPc
 AR/4psCblapucobpO9OR/OQ=
X-Google-Smtp-Source: APXvYqyi4Bt3ir6rU+TWNnN36A9pN8xg7s2JYPqJdArgPXkkE4o/jlC79rPGT33ctNm4inqrk9UVDA==
X-Received: by 2002:a17:90a:20a2:: with SMTP id
 f31mr1696212pjg.90.1561519754149; 
 Tue, 25 Jun 2019 20:29:14 -0700 (PDT)
Received: from huyue2.ccdomain.com ([218.189.10.173])
 by smtp.gmail.com with ESMTPSA id l2sm14563306pgs.33.2019.06.25.20.29.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 20:29:13 -0700 (PDT)
From: Yue Hu <zbestahu@gmail.com>
To: gaoxiang25@huawei.com,
	yuchao0@huawei.com,
	gregkh@linuxfoundation.org
Subject: [PATCH RESEND] staging: erofs: remove unsupported ->datamode check in
 fill_inline_data()
Date: Wed, 26 Jun 2019 11:28:31 +0800
Message-Id: <20190626032831.7252-1-zbestahu@gmail.com>
X-Mailer: git-send-email 2.17.1.windows.2
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
Cc: devel@driverdev.osuosl.org, huyue2@yulong.com, linux-erofs@lists.ozlabs.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Yue Hu <huyue2@yulong.com>

Already check if ->datamode is supported in read_inode(), no need to check
again in the next fill_inline_data() only called by fill_inode().

Signed-off-by: Yue Hu <huyue2@yulong.com>
---
 drivers/staging/erofs/inode.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/erofs/inode.c b/drivers/staging/erofs/inode.c
index e51348f..d6e1e16 100644
--- a/drivers/staging/erofs/inode.c
+++ b/drivers/staging/erofs/inode.c
@@ -129,8 +129,6 @@ static int fill_inline_data(struct inode *inode, void *data,
 	struct erofs_sb_info *sbi = EROFS_I_SB(inode);
 	const int mode = vi->datamode;
 
-	DBG_BUGON(mode >= EROFS_INODE_LAYOUT_MAX);
-
 	/* should be inode inline C */
 	if (mode != EROFS_INODE_LAYOUT_INLINE)
 		return 0;
-- 
1.9.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
