Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0EA4AF93C
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Sep 2019 11:42:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D9C7087C17;
	Wed, 11 Sep 2019 09:42:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id thwYvd27RGNq; Wed, 11 Sep 2019 09:42:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0A70287603;
	Wed, 11 Sep 2019 09:42:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 06A421BF2A6
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 09:42:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F241220355
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 09:42:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TqvM6CF12LVg for <devel@linuxdriverproject.org>;
 Wed, 11 Sep 2019 09:42:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mxout017.mail.hostpoint.ch (mxout017.mail.hostpoint.ch
 [217.26.49.177])
 by silver.osuosl.org (Postfix) with ESMTPS id E4F331FC71
 for <devel@driverdev.osuosl.org>; Wed, 11 Sep 2019 09:42:23 +0000 (UTC)
Received: from [10.0.2.46] (helo=asmtp013.mail.hostpoint.ch)
 by mxout017.mail.hostpoint.ch with esmtp (Exim 4.92.2 (FreeBSD))
 (envelope-from <sandro@volery.com>)
 id 1i7z8n-0004OK-BK; Wed, 11 Sep 2019 11:42:21 +0200
Received: from [83.150.61.156] (helo=volery)
 by asmtp013.mail.hostpoint.ch with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2 (FreeBSD))
 (envelope-from <sandro@volery.com>)
 id 1i7z8n-0009dG-86; Wed, 11 Sep 2019 11:42:21 +0200
X-Authenticated-Sender-Id: sandro@volery.com
Date: Wed, 11 Sep 2019 11:42:19 +0200
From: Sandro Volery <sandro@volery.com>
To: valdis.kletnieks@vt.edu, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] Staging: exfat: Avoid use of strcpy
Message-ID: <20190911094219.GA22438@volery>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: linux@rasmusvillemoes.dk, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use strscpy instead of strcpy in exfat_core.c, and add a check
for length that will return already known FFS_INVALIDPATH.

Suggested-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Signed-off-by: Sandro Volery <sandro@volery.com>
---
v2: Implement length check and return in one
v1: Original Patch
 drivers/staging/exfat/exfat_core.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index da8c58149c35..4c40f1352848 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -2964,7 +2964,8 @@ s32 resolve_path(struct inode *inode, char *path, struct chain_t *p_dir,
 	if (strlen(path) >= (MAX_NAME_LENGTH * MAX_CHARSET_SIZE))
 		return FFS_INVALIDPATH;
 
-	strcpy(name_buf, path);
+	if (strscpy(name_buf, path, sizeof(name_buf)) < 0)
+		return FFS_INVALIDPATH;
 
 	nls_cstring_to_uniname(sb, p_uniname, name_buf, &lossy);
 	if (lossy)
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
