Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 390EF59222
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 05:45:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9B86F84821;
	Fri, 28 Jun 2019 03:45:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0U7U__bqYFUc; Fri, 28 Jun 2019 03:45:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6FBF38363E;
	Fri, 28 Jun 2019 03:45:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A8611BF30F
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 03:45:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 07C7F8363E
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 03:45:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QAvJ_KKcZVpC for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 03:45:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C15B880EB7
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 03:45:07 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id a93so2438024pla.7
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 20:45:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=KXeTyYem+OqmfXAB9jLbUiQJPmVsVcB9d5ZOaBgKddE=;
 b=texMjThj9ELOsjSLEq9Y653PtH5SuvN1GG5Y4WjBzQ78DmK8vothKCoDarMC/zabdf
 dOx030cYIzc2IAzYObguAgEwet0sMRx14n3TP0n0+MNWPt5RHK6rrxHbh6XcVYO1rEVP
 DEUVrqxC1J13RZ3/9TWHkAHH+H4YTqjlMVaweakNMu2a9f5z/XGDci/PJiQkZBgrKGyh
 6NDYgauYnoWeIRAl79kkIBELWXk2PqWWLlBtvxyeJkj/4GI9anNqNBhwRP2gLP9G+xuE
 ZnkeLoPywR6luGzYn0SGkGMvfKGXJk7XdVD2taqRfYJM/ermdOONmkpTjndt+g10z4Wf
 i4sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=KXeTyYem+OqmfXAB9jLbUiQJPmVsVcB9d5ZOaBgKddE=;
 b=pwwd+rHwGol59DQ4xF3E107tb9ZnPKxVtIecsjr6cBGbrNEAjZ8mFLvT17+fT5DXmZ
 OhqU+hfReUBpoIqVSSt6v3er3rTWdY415uVSB0QxogCXmmhz4hOeEJgSNThXOdGl/H25
 5lWnDcSKmOnqnB2Fv/u8qeNk0D5v8FafZUNkMrpJoycAo3+DEGJnRgJlZ6xODnnIAd9B
 C/H8dd6r1fZn5v0x3fJeTlSbWoY0EcZ/RrqUynWv3WmZudcaF4RsM6xqOakfJWwIyViE
 K8yvXwlACqsCWIRmuAxD5cJh53MPx9XrXRLr0kSebTtLjUT2T3iswnLYzZEhpjOOil9+
 xSvA==
X-Gm-Message-State: APjAAAU0yL4qdXm7Ao5xsSzypESLAZ4UukyWi0Aub1G0humliBv+LOnh
 t2WvRLSzo2/MJ6/5lUXlCDk=
X-Google-Smtp-Source: APXvYqziLzLlQJalN1m0zwRWAZgf0EFjLz1Ds/0ZjyAtyiCKJGWj0KUtdxBH5Eh1IDYaR6xlQFjF5w==
X-Received: by 2002:a17:902:aa83:: with SMTP id
 d3mr8633526plr.74.1561693507494; 
 Thu, 27 Jun 2019 20:45:07 -0700 (PDT)
Received: from huyue2.ccdomain.com ([218.189.10.173])
 by smtp.gmail.com with ESMTPSA id c69sm629715pje.6.2019.06.27.20.45.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 20:45:06 -0700 (PDT)
From: Yue Hu <zbestahu@gmail.com>
To: gaoxiang25@huawei.com,
	yuchao0@huawei.com,
	gregkh@linuxfoundation.org
Subject: [PATCH] staging: erofs: don't check special inode layout
Date: Fri, 28 Jun 2019 11:42:34 +0800
Message-Id: <20190628034234.8832-1-zbestahu@gmail.com>
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

Currently, we will check if inode layout is compression or inline if
the inode is special in fill_inode(). Also set ->i_mapping->a_ops for
it. That is pointless since the both modes won't be set for special
inode when creating EROFS filesystem image. So, let's avoid it.

Signed-off-by: Yue Hu <huyue2@yulong.com>
---
 drivers/staging/erofs/inode.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/erofs/inode.c b/drivers/staging/erofs/inode.c
index 1433f25..2fe0f6d 100644
--- a/drivers/staging/erofs/inode.c
+++ b/drivers/staging/erofs/inode.c
@@ -205,6 +205,7 @@ static int fill_inode(struct inode *inode, int isdir)
 			S_ISFIFO(inode->i_mode) || S_ISSOCK(inode->i_mode)) {
 			inode->i_op = &erofs_generic_iops;
 			init_special_inode(inode, inode->i_mode, inode->i_rdev);
+			goto out_unlock;
 		} else {
 			err = -EIO;
 			goto out_unlock;
-- 
1.9.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
