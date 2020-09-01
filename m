Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CECA22597C7
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Sep 2020 18:18:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 49179870DF;
	Tue,  1 Sep 2020 16:18:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YRIrxkMcYX47; Tue,  1 Sep 2020 16:18:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B8FD4870D2;
	Tue,  1 Sep 2020 16:18:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BEF221BF82F
 for <devel@linuxdriverproject.org>; Tue,  1 Sep 2020 16:18:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BBC6884AC5
 for <devel@linuxdriverproject.org>; Tue,  1 Sep 2020 16:18:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dH5-mHeS8Osb for <devel@linuxdriverproject.org>;
 Tue,  1 Sep 2020 16:18:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx4.wp.pl (mx4.wp.pl [212.77.101.12])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DB20784947
 for <devel@driverdev.osuosl.org>; Tue,  1 Sep 2020 16:18:53 +0000 (UTC)
Received: (wp-smtpd smtp.wp.pl 3688 invoked from network);
 1 Sep 2020 18:18:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1598977130; bh=bRRXZ9zEebGS55d1yTbvxveQzuUz/SLo7FYLLNKiwCQ=;
 h=From:To:Cc:Subject;
 b=qRUydLAf/Ok/Rb1fL/kzJAmPy0MhUcxoRGGvUxViA5TLckKTfNaGIbQI0gyVT+g1S
 2qeq8KQoVgkwBfAjvGiEl4G8nTmbNlpPdWsM2Vb3jKTSDsetMUWIaR666RnDL6maMT
 XYa2WF1lzmbx4jDJOfGxBBsj9u+SksQ5avMLm+SU=
Received: from 188.146.109.197.nat.umts.dynamic.t-mobile.pl (HELO localhost)
 (antoni.przybylik@wp.pl@[188.146.109.197])
 (envelope-sender <antoni.przybylik@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <gregkh@linuxfoundation.org>; 1 Sep 2020 18:18:50 +0200
From: Antoni Przybylik <antoni.przybylik@wp.pl>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: gdm724x: gdm_tty: replaced macro with a function
Date: Tue,  1 Sep 2020 18:18:46 +0200
Message-Id: <20200901161846.111486-1-antoni.przybylik@wp.pl>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-WP-DKIM-Status: good (id: wp.pl)                                      
X-WP-MailID: 9251091d3f6526f767815a022d7d0293
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000002 [wREB]                               
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
index 6e813693a766..a7db0672e81d 100644
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
 
+static int gdm_tty_ready(gdm *gdm)
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
