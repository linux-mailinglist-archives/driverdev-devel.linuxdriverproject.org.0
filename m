Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B31C320BDF
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 17:56:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A7C26F525
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 16:56:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iulHcRT9wJhT for <lists+driverdev-devel@lfdr.de>;
	Sun, 21 Feb 2021 16:56:00 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 77A3C6F4B4; Sun, 21 Feb 2021 16:56:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 096036ECA6;
	Sun, 21 Feb 2021 16:55:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5B62B1BF29E
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 16:55:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 57BCB8709E
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 16:55:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UCzSt99GkbN1 for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 16:55:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com
 [209.85.216.51])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 810298709D
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 16:55:31 +0000 (UTC)
Received: by mail-pj1-f51.google.com with SMTP id s23so3913507pji.1
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 08:55:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TxLEcBDcYYILUa2C/hQiAA9t0RBtkVX/Sk351cYtXMc=;
 b=Ukd2Ew+Bf1mihEfVjpSed2YfDivIw4gmw64++ecbGcve9pQvuc2JYSSwgV1PaUdkCV
 IeWt5rNqFvXZauQt7lE3B8viC+0USwG/u/eSGKwg1ADh3I2uwGTFac7H/P/IFinc8t2U
 sj/3SrWHyfaAHGb7GF41dVcVi/URAldbdocKyuyzmsjG+qeqHf0JziqT/8Ol5jpOjW0O
 dIHNFpVPzeCsApONp/+usLfjGQtaz/UjDP610IHL8HP4o0HxOCbv4xCCKguTl9CLiQGZ
 AF+1houY8fvGqHxrrKAcBYMNgZu6LnHcxDRf2S+IDGYxWLkR+sfCtW4mtnWHdGmppKYT
 WOoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TxLEcBDcYYILUa2C/hQiAA9t0RBtkVX/Sk351cYtXMc=;
 b=fj18aUntyQuVX+TQBxuRl5o2IU59O6kd2Vse9y6Gn6Y+lBg+tnPhzTyQoiZ7GNeBuz
 XNgXG5K7ryVAU18s4ja0z9WujH/5ltGs9ljKD4cxFmuaCzp/5zmJCkpQ/u6IhUmSyP36
 hBGC83W1HKm7t07bjuNI8/pvF/fd2xFuYFyJYbOObvkYxrADabKwkXHcVLOeHyMlO8yI
 OZdQ4ImurnyrQc0/QSc1G3IPD+PMHIXKSKkTaSQaX+oV+11CTcposI3wTVDRQ01+rwTa
 EdpnIifMPyR5xcXkUxno9EzBMvX6rPz8e0QVrEAlQQIdQphlB3cSrF3XLFEAeoXlc8Gm
 uCrA==
X-Gm-Message-State: AOAM532Qj4RTSwJWQQdP+TVgqNfcItCpp455papS4u4epfERL4uwoQ/h
 sN8/xwC+BMJbwZkOIGVJM8c=
X-Google-Smtp-Source: ABdhPJwnGaSqQxwFCMF1wnOMukq0CpSBjqWYe74ly3niwpn5ZL/JGgtx6EDfBpSTOXv18Amg9oA1Dw==
X-Received: by 2002:a17:902:7448:b029:e3:b56e:6db2 with SMTP id
 e8-20020a1709027448b02900e3b56e6db2mr14775831plt.0.1613926530950; 
 Sun, 21 Feb 2021 08:55:30 -0800 (PST)
Received: from localhost.localdomain ([49.36.150.103])
 by smtp.gmail.com with ESMTPSA id w13sm18412324pjg.0.2021.02.21.08.55.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 08:55:30 -0800 (PST)
From: Amrit Khera <amritkhera98@gmail.com>
To: gregkh@linuxfoundation.org, lee.jones@linaro.org, arnd@arndb.de,
 johannes@sipsolutions.net, kuba@kernel.org, mail@anirudhrb.com,
 memxor@gmail.com, rdunlap@infradead.org
Subject: [PATCH v2] staging: wimax: Fix block comment style issue in stack.c
Date: Sun, 21 Feb 2021 22:07:59 +0530
Message-Id: <20210221163758.2996-1-amritkhera98@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org, Amrit Khera <amritkhera98@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This change fixes a checkpatch warning for "Block comments
use * on subsequent lines".

Signed-off-by: Amrit Khera <amritkhera98@gmail.com>
---
 Changes in v2:
 - Removed the comment entirely, as suggested by Greg KH <gregkh@linuxfoundation.org>

 drivers/staging/wimax/stack.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/staging/wimax/stack.c b/drivers/staging/wimax/stack.c
index ace24a6dfd2d..345a022810ef 100644
--- a/drivers/staging/wimax/stack.c
+++ b/drivers/staging/wimax/stack.c
@@ -57,17 +57,7 @@ MODULE_PARM_DESC(debug,
 
 /*
  * Authoritative source for the RE_STATE_CHANGE attribute policy
- *
- * We don't really use it here, but /me likes to keep the definition
- * close to where the data is generated.
  */
-/*
-static const struct nla_policy wimax_gnl_re_status_change[WIMAX_GNL_ATTR_MAX + 1] = {
-	[WIMAX_GNL_STCH_STATE_OLD] = { .type = NLA_U8 },
-	[WIMAX_GNL_STCH_STATE_NEW] = { .type = NLA_U8 },
-};
-*/
-
 
 /*
  * Allocate a Report State Change message
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
