Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 876F557F91
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 11:46:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 74761221A9;
	Thu, 27 Jun 2019 09:46:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ikY5rk0jEC+a; Thu, 27 Jun 2019 09:46:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3FD3020035;
	Thu, 27 Jun 2019 09:46:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9E1601BF349
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 09:46:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 95D74861F0
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 09:46:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oYlOrjZkXEbL for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 09:46:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EC7BC861C9
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 09:46:43 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id p184so950776pfp.7
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 02:46:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=uMmVaqGs6Qzw1v02Xne45iZzGkIbUBWZpJMKSMkhWCo=;
 b=s7enxB+IExQARnhO0Qax0ABS2Hi6if5hn8MT8/E9KB4L+I8bWQEYmgRCgrbAoBA5PZ
 8/ENKEDKnCFRMDJPKphqSHG+Wfb1srI7LDWUfcv6SyGcIXuW8r2byhT6R6LW9/QW1XbK
 S0VmYxJGA0bCxTFxrItDMEye/uFBR95uyHbq+8RdjXlNQXxAchyFRzfFp/oE7VylKZ8c
 tFAk/jv0V6dgRI+BVy7G2ud84jqP71+C82mrfD2usIBsg18ed01xUNkA6hPsjB4vdynO
 kDiQAFpPoFdGLnJnIbB+Ggy8V7qb0Zemn76gL1DZ8OyLIGB4rJoFFGGqAQkga9fz1wuB
 WQWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=uMmVaqGs6Qzw1v02Xne45iZzGkIbUBWZpJMKSMkhWCo=;
 b=htLvPusx6NOjsk852l8AfucYwfK7upM+XBFz2rJbGEomQ5qmSzwUC+JGOZANtryisQ
 INNiC7NFXRN2GvJ3m/wfOi7wtChopnVCbG6254jseRyh8Gh8lfb5isc4fkyTjcVgc9wL
 wsPsTg3PH1TYrHZarem7hIEXCxvOAxwnVls5IQViNxQkY2Wa3VD+YBSFZhuPu8/6lv8z
 XgyG4PWZY+Ji1hQopWEpql0MTc2fU8PUP+FSDHgAgqbHoEpeST6E8ymnaDEhxb6Uutzl
 EKrsj7eL7nNRb9Onkb5syXdUGRPKbfSjHtO/IdSO0hfRn4kKN2bN/uiNfBdXJNVX31fw
 LM2A==
X-Gm-Message-State: APjAAAXSJn8I2LX26rzmT9MbrkGtBF737wHEl+n5ApdEOV2s1t8y4HP8
 3V6loIcMOBpJOYCzOGydzyY=
X-Google-Smtp-Source: APXvYqzV988AIws0jlsYMBuVHSS5AnNS0myfaZDDR3n7w9cPoWvRFgrEcd3t71Hz1fqgEMUY3UzZ0w==
X-Received: by 2002:a63:f746:: with SMTP id f6mr2945161pgk.56.1561628803496;
 Thu, 27 Jun 2019 02:46:43 -0700 (PDT)
Received: from huyue2.ccdomain.com ([218.189.10.173])
 by smtp.gmail.com with ESMTPSA id 64sm4653324pfe.128.2019.06.27.02.46.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 02:46:42 -0700 (PDT)
From: Yue Hu <zbestahu@gmail.com>
To: gaoxiang25@huawei.com,
	yuchao0@huawei.com,
	gregkh@linuxfoundation.org
Subject: [PATCH RESEND v2] staging: erofs: return the error value if
 fill_inline_data() fails
Date: Thu, 27 Jun 2019 17:46:15 +0800
Message-Id: <20190627094615.2224-1-zbestahu@gmail.com>
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
Reviewed-by: Gao Xiang <gaoxiang25@huawei.com>
Reviewed-by: Chao Yu <yuchao0@huawei.com>
---
no change

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
