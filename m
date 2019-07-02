Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDEE5C783
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jul 2019 04:58:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 15A0385DF8;
	Tue,  2 Jul 2019 02:58:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U69aySSJkA1U; Tue,  2 Jul 2019 02:58:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 75C63849BE;
	Tue,  2 Jul 2019 02:58:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4A3AF1BF3BC
 for <devel@linuxdriverproject.org>; Tue,  2 Jul 2019 02:58:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BF5DF878EA
 for <devel@linuxdriverproject.org>; Tue,  2 Jul 2019 02:58:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5njHQihJoomo for <devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 02:58:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 85E7D8763F
 for <devel@driverdev.osuosl.org>; Tue,  2 Jul 2019 02:58:45 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id 19so7517357pfa.4
 for <devel@driverdev.osuosl.org>; Mon, 01 Jul 2019 19:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=/7tczepEzqTlmdybJcXMyIiLXAAIYH2wxpVMMpPnygI=;
 b=YeKCuuufxt1rPwf9tFm3JoYgmAoX8/7P77uCZJXLc34ku8ooPUW6fm90JBYOr7fonU
 Ec9Th7cAjR+DQOigpd7hJnJmSLu0cOtx1uyOAuNSPE/JBg0hDPhlena8qQNlhW0TW+cf
 jV0gQMltaEN3EWijsKA5MjLkCYgimin7zrHkZN7HipFBIKEQ4mZW7pvVbdTOcf/q4Zcy
 +8zftBaFi4ny41YIfIp7UGh1JQVwoGDoxA3fyhln1QGOlx+2NFWYYuGKFCwdV8m+e/ZR
 b9pPgJIHL86/YaD5/NNB42cjlsBPYnTfenXY+14o15yMX4F8QW1FwEjn/6cKy0UdB5M7
 E5yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=/7tczepEzqTlmdybJcXMyIiLXAAIYH2wxpVMMpPnygI=;
 b=lI74AqHLrXgBLJXYWYd7lJMcHAOfBlz6OPGw4dTNBgiS7r8q8xgdAhSOaeiO+N1mhM
 WEZx8oeXUI9gZQsC/lcfAM64XBCoJNA1WPVbZ/usfFEElTKATLGwXc4TGruIqh+wgusX
 tEJooKUkgLBxRbJ8cHxud5Cc+HXyfYVAHop8tNRKTN8cSobzqXhuLi1txP7jcFymt/oZ
 ntwS3EPqtxq9wrYjeFYQeBU/94G6sSHmwJlhLA+C79FQlNK4wbOPabxUCNOTazOwkLWL
 1SZ4Erzh2JbJLgE2Pb01l6Ncb0o4ij8mberWItD1hZzZN3RfL3b4JxQqwuo/IdMD4+42
 JE6g==
X-Gm-Message-State: APjAAAU0T+0pI71LbKVWDkCxBl38DzZGzx2O2F0s4bK1P3fiw/CnVdW1
 sOIV/KWbECittWX7Qj9Rv88=
X-Google-Smtp-Source: APXvYqxwIeo9k12FDWXw1KWHtI7qKb4pB//KHdHVifTgoV2Vgw9mYCBFEQh08tMtoqU0COrGYsUgzw==
X-Received: by 2002:a63:6fcf:: with SMTP id
 k198mr15007946pgc.276.1562036325159; 
 Mon, 01 Jul 2019 19:58:45 -0700 (PDT)
Received: from huyue2.ccdomain.com ([218.189.10.173])
 by smtp.gmail.com with ESMTPSA id r198sm14506893pfc.149.2019.07.01.19.58.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Jul 2019 19:58:44 -0700 (PDT)
From: Yue Hu <zbestahu@gmail.com>
To: gaoxiang25@huawei.com,
	yuchao0@huawei.com,
	gregkh@linuxfoundation.org
Subject: [PATCH RESEND v3] staging: erofs: remove unsupported ->datamode check
 in fill_inline_data()
Date: Tue,  2 Jul 2019 10:56:01 +0800
Message-Id: <20190702025601.7976-1-zbestahu@gmail.com>
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
Reviewed-by: Gao Xiang <gaoxiang25@huawei.com>
Reviewed-by: Chao Yu <yuchao0@huawei.com>
---
no change

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
