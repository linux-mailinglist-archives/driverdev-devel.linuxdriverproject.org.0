Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACC8257E4B
	for <lists+driverdev-devel@lfdr.de>; Mon, 31 Aug 2020 18:11:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6B93886F82;
	Mon, 31 Aug 2020 16:11:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QgtNWhkbAvrA; Mon, 31 Aug 2020 16:11:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E1F4686F7A;
	Mon, 31 Aug 2020 16:11:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7B4041BF2A3
 for <devel@linuxdriverproject.org>; Mon, 31 Aug 2020 16:11:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7708186F78
 for <devel@linuxdriverproject.org>; Mon, 31 Aug 2020 16:11:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vk7ucRX6sNaB for <devel@linuxdriverproject.org>;
 Mon, 31 Aug 2020 16:11:10 +0000 (UTC)
X-Greylist: delayed 00:06:39 by SQLgrey-1.7.6
Received: from mx4.wp.pl (mx4.wp.pl [212.77.101.12])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C546D86F77
 for <devel@driverdev.osuosl.org>; Mon, 31 Aug 2020 16:11:09 +0000 (UTC)
Received: (wp-smtpd smtp.wp.pl 6944 invoked from network);
 31 Aug 2020 18:04:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1598889865; bh=Wso2RTwzDw3uAYjb34dIRt37gGCLNnOWKMz9bQ3PYPY=;
 h=From:To:Cc:Subject;
 b=d3UfzPiWnYREinUtTS7/DhxIJrPfO/T7mFpQz549+xt2YNW2ndVRIIwSzBFt7H4/L
 pyX2vv/mEHLZh5uxrnCPIN1zgxn2gcIkpACIuLpJv+fCZZCcr7rRUs4e6zXVCuiQt2
 slH+1P4XoO8buUcBZn76z/c4flISxDtBXt0c1gYg=
Received: from 188.146.234.2.nat.umts.dynamic.t-mobile.pl (HELO localhost)
 (antoni.przybylik@wp.pl@[188.146.234.2])
 (envelope-sender <antoni.przybylik@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <gregkh@linuxfoundation.org>; 31 Aug 2020 18:04:25 +0200
From: antoniprzybylik <antoni.przybylik@wp.pl>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: gdm724x: fixed two macros by adding brackets
Date: Mon, 31 Aug 2020 18:03:32 +0200
Message-Id: <20200831160332.8507-1-antoni.przybylik@wp.pl>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-WP-DKIM-Status: good (id: wp.pl)                                      
X-WP-MailID: 72389e197ba179900ee91c9ac8f34ac3
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [oXN8]                               
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
 antoniprzybylik <antoni.przybylik@wp.pl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Added brackets to two macros.

Signed-off-by: Antoni Przybylik <antoni.przybylik@wp.pl>
---
 drivers/staging/gdm724x/gdm_tty.c   | 3 +--
 drivers/staging/gdm724x/netlink_k.c | 2 +-
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_tty.c b/drivers/staging/gdm724x/gdm_tty.c
index 6e813693a766..5cd94347bf78 100644
--- a/drivers/staging/gdm724x/gdm_tty.c
+++ b/drivers/staging/gdm724x/gdm_tty.c
@@ -27,7 +27,7 @@
 
 #define MUX_TX_MAX_SIZE 2048
 
-#define GDM_TTY_READY(gdm) (gdm && gdm->tty_dev && gdm->port.count)
+#define GDM_TTY_READY(gdm) ((gdm) && (gdm)->tty_dev && (gdm)->port.count)
 
 static struct tty_driver *gdm_driver[TTY_MAX_COUNT];
 static struct gdm *gdm_table[TTY_MAX_COUNT][GDM_TTY_MINOR];
@@ -323,4 +323,3 @@ void unregister_lte_tty_driver(void)
 		}
 	}
 }
-
diff --git a/drivers/staging/gdm724x/netlink_k.c b/drivers/staging/gdm724x/netlink_k.c
index 7902e52a699b..399b7b4b536f 100644
--- a/drivers/staging/gdm724x/netlink_k.c
+++ b/drivers/staging/gdm724x/netlink_k.c
@@ -20,7 +20,7 @@ static DEFINE_MUTEX(netlink_mutex);
 #define ND_NLMSG_DATA(nlh)	((void *)((char *)NLMSG_DATA(nlh) + \
 						  ND_IFINDEX_LEN))
 #define ND_NLMSG_S_LEN(len)	(len + ND_IFINDEX_LEN)
-#define ND_NLMSG_R_LEN(nlh)	(nlh->nlmsg_len - ND_IFINDEX_LEN)
+#define ND_NLMSG_R_LEN(nlh)	((nlh)->nlmsg_len - ND_IFINDEX_LEN)
 #define ND_NLMSG_IFIDX(nlh)	NLMSG_DATA(nlh)
 #define ND_MAX_MSG_LEN		(1024 * 32)
 
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
