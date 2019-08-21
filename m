Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A6096E21
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 02:19:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 73C9F23018;
	Wed, 21 Aug 2019 00:18:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NVw0nG5wKHOd; Wed, 21 Aug 2019 00:18:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6DA8D22C31;
	Wed, 21 Aug 2019 00:18:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AF58C1BF989
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 00:18:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A67E98862D
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 00:18:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FLcFSj+2NzWq for <devel@linuxdriverproject.org>;
 Wed, 21 Aug 2019 00:18:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1E3FA8861E
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 00:18:51 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id v12so177932pfn.10
 for <devel@driverdev.osuosl.org>; Tue, 20 Aug 2019 17:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=c3LQHcY3+YvhpAJ3SOOoCNwpGf42ZIdm9oft5Rg6R8E=;
 b=MH13mfy/rC2MWrFrghbk3ERrfOJ7Acc2V5PTmjiUJ2UNkoWSzaaCcQ+L1XS6wjV1NZ
 fnz/Qw3+jI0mJo5ZTwDo2D43ey6zMwlKjjFfvwWh95XuqfRYmFrLLfMos7MItV2S8S4r
 znUOap6+GdVm2fAzNACWW30Jy8d/tsw+kmVMyv6/B25kbodcxkaJo2wRykahpVFG8GUV
 dgOV2Ww4hpl5Ll8M+MI+YDNaYItpk3EPoFrpBOsm7F/Rsj+1E8WEStN6Mu2h0GQ82wrl
 9VzRMbOjLagbaCiurxsYGBiJDRP4OQ9MOCrslguAFBz+LQ5B8KmQZW2F1xZJapyuE3iy
 MMSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=c3LQHcY3+YvhpAJ3SOOoCNwpGf42ZIdm9oft5Rg6R8E=;
 b=IGfDFzWFCg29J/mYDXAGBSwhrX7sQnE4Igd1LJM8000Tl/Ex48wv43q/FzA5amclZX
 sSD6SeR6uKbeLTcsx5GxtKiY+S7YTwZT/RBqRQk/tpIQDv7aYPSfrEW0Hr4dDBVQxrtm
 cEhnZJBEblIEhJkDJy4chx6t9670cMPQtsWtC9a+zSkxtRrsQK+cZjiJHV8hm3HvICdt
 3yg4n9U/PhP2HslLUXNkgokhcPQYjakGy1rqav4nM3TMBZ/RPlUYxYRcDelvGzGG33bA
 BozJ3EbWbh5w2RUVz1QL4B7jcP+OvWDBGKkfgy0x43wOvsXo7VBAn95jCqSEiRcKRhke
 D73Q==
X-Gm-Message-State: APjAAAURb/AHurYYND7oKcYdZguG//VuQFwtlqPyOU6T18DQWxfWRiCk
 y8uCKXyV0HxV5JU6v4GkMzs=
X-Google-Smtp-Source: APXvYqwwan2OY/ZV7PXfeMhMGdEvRd4vEiJuNjIlg98ZfD/In7j14ai4ajqEPw9W14GV2GUgiaRNmg==
X-Received: by 2002:a17:90a:9202:: with SMTP id
 m2mr2663705pjo.16.1566346730545; 
 Tue, 20 Aug 2019 17:18:50 -0700 (PDT)
Received: from localhost.localdomain (wsip-184-188-36-2.sd.sd.cox.net.
 [184.188.36.2])
 by smtp.googlemail.com with ESMTPSA id g2sm18806323pfm.32.2019.08.20.17.18.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 20 Aug 2019 17:18:50 -0700 (PDT)
From: Caitlyn <caitlynannefinn@gmail.com>
To: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/2] staging/erofs/xattr.h: Fixed misaligned function
 arguments.
Date: Tue, 20 Aug 2019 20:18:19 -0400
Message-Id: <1566346700-28536-2-git-send-email-caitlynannefinn@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566346700-28536-1-git-send-email-caitlynannefinn@gmail.com>
References: <1566346700-28536-1-git-send-email-caitlynannefinn@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-erofs@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Caitlyn <caitlynannefinn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Indented some function arguments to fix checkpath warnings.

Signed-off-by: Caitlyn <caitlynannefinn@gmail.com>
---
 drivers/staging/erofs/xattr.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/erofs/xattr.h b/drivers/staging/erofs/xattr.h
index 35ba5ac..d86f5cd 100644
--- a/drivers/staging/erofs/xattr.h
+++ b/drivers/staging/erofs/xattr.h
@@ -74,14 +74,14 @@ int erofs_getxattr(struct inode *, int, const char *, void *, size_t);
 ssize_t erofs_listxattr(struct dentry *, char *, size_t);
 #else
 static int __maybe_unused erofs_getxattr(struct inode *inode, int index,
-	const char *name,
-	void *buffer, size_t buffer_size)
+					 const char *name, void *buffer,
+					 size_t buffer_size)
 {
 	return -ENOTSUPP;
 }
 
 static ssize_t __maybe_unused erofs_listxattr(struct dentry *dentry,
-	char *buffer, size_t buffer_size)
+					      char *buffer, size_t buffer_size)
 {
 	return -ENOTSUPP;
 }
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
