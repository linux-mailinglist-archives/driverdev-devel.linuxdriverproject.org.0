Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F317155F81
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 05:30:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 341CC85F5E;
	Wed, 26 Jun 2019 03:30:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fM0ssfh6Ndo1; Wed, 26 Jun 2019 03:30:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AF19F85F53;
	Wed, 26 Jun 2019 03:30:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D51801BF35B
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 03:30:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D1CE120448
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 03:30:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UGgxEm03wvoq for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 03:30:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id EF1CC20110
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 03:30:53 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id p10so487668pgn.1
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 20:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=XEppC4gbVPEQZR2Kaz9anVmct3U9E6CQXzdvNSwq1Ug=;
 b=BvDQGUVtDtNQ7wVRM4ZcJUkLAAGKMIKZ0UDtl2Oh+1gZu1ofLLAx+tszz7+XgiyBi0
 0TYiU7s8/ypL/n+Ujtg8347fmHKFXF4CMa5LUdBN3DZq8XBOs34RJWe0H7p7nrB5/qaK
 9Xnq1WiqUHrRCZe8TNKBvYAGok5miHwxEoFvT4KZxkYRzbgSHTef7an/9WqazjeExLz3
 9uYc7E4INcSqiwzXCEfysccdK3IT+RGtD1wC/P2Qf65k4YRZzOEeSDToSpQ8lE0YJPED
 gw5sjcUAyMq0BXzlgiDtbRNkk0wFV+Y5NaWZlKfjIHSBiGWhgDEP3BQiL+BjI8VXa1pI
 TatQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=XEppC4gbVPEQZR2Kaz9anVmct3U9E6CQXzdvNSwq1Ug=;
 b=lm2aryH0RRZtcPWDOjBR80RX41ackBFebkZGY61TRlIhIVNmiUsJodRnNhEuGQ2xhB
 4L4MQ1Q1ouoyYyq35nTQ7427Z5b3c7ys+q3bvXDyRJrVEJwzHce6Ag4i6vYRYbGH0Z6I
 Y6farQLJtXSYNytN0sYxDpJOr8otBRbGaR963d9heL1/T2vNNIKYirc6QrgivBRoBmXV
 qZ/TfV95nZOPc63qaXpUY8mVE75C8JSxGXQY5vfjaNZQRzdVfTSb6jRJTS681DXP5jMR
 0vrnMiB4p/vfX+FN8fRqo+O5swUfqqp5vg8p4w6K/nUfNRgmJzv8/HqitSCd4k9Vyrnd
 OrGg==
X-Gm-Message-State: APjAAAXdbweEMfxMS+Ner9Is9yuUgZ9JXFoUlixJtYrxs86XS1+h5Rmb
 TPjB6BHUhzwx2/ooMAl5oCc=
X-Google-Smtp-Source: APXvYqzgXOaBd0m6wSY+5AEmeAN7rUcjZ0f2dRq9xOhDTJHdBtUUM+yHvKK/xbj+X4pwJYOReCeAKQ==
X-Received: by 2002:a63:4e5f:: with SMTP id o31mr536783pgl.49.1561519853560;
 Tue, 25 Jun 2019 20:30:53 -0700 (PDT)
Received: from huyue2.ccdomain.com ([218.189.10.173])
 by smtp.gmail.com with ESMTPSA id t2sm16053325pgo.61.2019.06.25.20.30.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 20:30:52 -0700 (PDT)
From: Yue Hu <zbestahu@gmail.com>
To: gaoxiang25@huawei.com,
	yuchao0@huawei.com,
	gregkh@linuxfoundation.org
Subject: [PATCH RESEND] staging: erofs: return the error value if
 fill_inline_data() fails
Date: Wed, 26 Jun 2019 11:30:38 +0800
Message-Id: <20190626033038.9456-1-zbestahu@gmail.com>
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

We should consider the error returned by fill_inline_data() when filling
last page in fill_inode(). If not getting inode will be successful even
though last page is bad. That is illogical. Also change -EAGAIN to 0 in
fill_inline_data() to stand for successful filling.

Signed-off-by: Yue Hu <huyue2@yulong.com>
---
 drivers/staging/erofs/inode.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/erofs/inode.c b/drivers/staging/erofs/inode.c
index d6e1e16..1433f25 100644
--- a/drivers/staging/erofs/inode.c
+++ b/drivers/staging/erofs/inode.c
@@ -156,7 +156,7 @@ static int fill_inline_data(struct inode *inode, void *data,
 		inode->i_link = lnk;
 		set_inode_fast_symlink(inode);
 	}
-	return -EAGAIN;
+	return 0;
 }
 
 static int fill_inode(struct inode *inode, int isdir)
@@ -223,7 +223,7 @@ static int fill_inode(struct inode *inode, int isdir)
 		inode->i_mapping->a_ops = &erofs_raw_access_aops;
 
 		/* fill last page if inline data is available */
-		fill_inline_data(inode, data, ofs);
+		err = fill_inline_data(inode, data, ofs);
 	}
 
 out_unlock:
-- 
1.9.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
