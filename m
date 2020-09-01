Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 705C6259FD6
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Sep 2020 22:17:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CD08B2750D;
	Tue,  1 Sep 2020 20:17:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b55M2hQWMmX2; Tue,  1 Sep 2020 20:17:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4699E204B4;
	Tue,  1 Sep 2020 20:17:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BB8681BF284
 for <devel@linuxdriverproject.org>; Tue,  1 Sep 2020 20:16:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B7FE886F6F
 for <devel@linuxdriverproject.org>; Tue,  1 Sep 2020 20:16:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p4vznHi27GVZ for <devel@linuxdriverproject.org>;
 Tue,  1 Sep 2020 20:16:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx4.wp.pl (mx4.wp.pl [212.77.101.11])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0623D86F69
 for <devel@driverdev.osuosl.org>; Tue,  1 Sep 2020 20:16:56 +0000 (UTC)
Received: (wp-smtpd smtp.wp.pl 21030 invoked from network);
 1 Sep 2020 22:16:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1598991413; bh=VolP2AdWJDNHJUxzl2uH3Tf1xodNxV4v/c7KNG3s6dM=;
 h=From:To:Cc:Subject;
 b=MGUliN1VCS1LL2fiONrnIleoysVx67v0G6wvxQ0gZK6rZ9NfHeXyja5+YFH5sQAHq
 FOc3Tw/3w/d21nYMGzpW+UPDiwscf0dcKMms4oiddJWZcJIXtRs7j9b9eTgilBg+zk
 M6ksyD1h/ayE8jaQGCtcuL0/qAXmE/xXKzp9G4ds=
Received: from 188.146.102.178.nat.umts.dynamic.t-mobile.pl (HELO localhost)
 (antoni.przybylik@wp.pl@[188.146.102.178])
 (envelope-sender <antoni.przybylik@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <gregkh@linuxfoundation.org>; 1 Sep 2020 22:16:53 +0200
From: Antoni Przybylik <antoni.przybylik@wp.pl>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: gdm724x: gdm_tty: replaced macro with a function
Date: Tue,  1 Sep 2020 22:16:26 +0200
Message-Id: <20200901201626.75405-1-antoni.przybylik@wp.pl>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-WP-DKIM-Status: good (id: wp.pl)                                      
X-WP-MailID: 44cd1ac88d72e20bcf7ed632bb54e9df
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000002 [cXER]                               
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
 Antoni Przybylik <antoni.przybylik@wp.pl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This approach is more elegant and prevents some problems related to
macros such as operator precedence in expanded expression.

Signed-off-by: Antoni Przybylik <antoni.przybylik@wp.pl>
---
 drivers/staging/gdm724x/gdm_tty.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_tty.c b/drivers/staging/gdm724x/gdm_tty.c
index 6e813693a766..c19d82a6f25e 100644
--- a/drivers/staging/gdm724x/gdm_tty.c
+++ b/drivers/staging/gdm724x/gdm_tty.c
@@ -27,8 +27,6 @@
 
 #define MUX_TX_MAX_SIZE 2048
 
-#define GDM_TTY_READY(gdm) (gdm && gdm->tty_dev && gdm->port.count)
-
 static struct tty_driver *gdm_driver[TTY_MAX_COUNT];
 static struct gdm *gdm_table[TTY_MAX_COUNT][GDM_TTY_MINOR];
 static DEFINE_MUTEX(gdm_table_lock);
@@ -36,6 +34,11 @@ static DEFINE_MUTEX(gdm_table_lock);
 static const char *DRIVER_STRING[TTY_MAX_COUNT] = {"GCTATC", "GCTDM"};
 static char *DEVICE_STRING[TTY_MAX_COUNT] = {"GCT-ATC", "GCT-DM"};
 
+static int gdm_tty_ready(struct gdm *gdm)
+{
+	return (gdm && gdm->tty_dev && gdm->port.count);
+}
+
 static void gdm_port_destruct(struct tty_port *port)
 {
 	struct gdm *gdm = container_of(port, struct gdm, port);
@@ -119,7 +122,7 @@ static int gdm_tty_recv_complete(void *data,
 {
 	struct gdm *gdm = tty_dev->gdm[index];
 
-	if (!GDM_TTY_READY(gdm)) {
+	if (!gdm_tty_ready(gdm)) {
 		if (complete == RECV_PACKET_PROCESS_COMPLETE)
 			gdm->tty_dev->recv_func(gdm->tty_dev->priv_dev,
 						gdm_tty_recv_complete);
@@ -146,7 +149,7 @@ static void gdm_tty_send_complete(void *arg)
 {
 	struct gdm *gdm = arg;
 
-	if (!GDM_TTY_READY(gdm))
+	if (!gdm_tty_ready(gdm))
 		return;
 
 	tty_port_tty_wakeup(&gdm->port);
@@ -160,7 +163,7 @@ static int gdm_tty_write(struct tty_struct *tty, const unsigned char *buf,
 	int sent_len = 0;
 	int sending_len = 0;
 
-	if (!GDM_TTY_READY(gdm))
+	if (!gdm_tty_ready(gdm))
 		return -ENODEV;
 
 	if (!len)
@@ -187,7 +190,7 @@ static int gdm_tty_write_room(struct tty_struct *tty)
 {
 	struct gdm *gdm = tty->driver_data;
 
-	if (!GDM_TTY_READY(gdm))
+	if (!gdm_tty_ready(gdm))
 		return -ENODEV;
 
 	return WRITE_SIZE;
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
