Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1450A257CAE
	for <lists+driverdev-devel@lfdr.de>; Mon, 31 Aug 2020 17:31:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 61FA287B96;
	Mon, 31 Aug 2020 15:31:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m8KDvV897MQs; Mon, 31 Aug 2020 15:31:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B8D35868F7;
	Mon, 31 Aug 2020 15:31:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7183B1BF41E
 for <devel@linuxdriverproject.org>; Mon, 31 Aug 2020 15:31:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6646120418
 for <devel@linuxdriverproject.org>; Mon, 31 Aug 2020 15:31:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3+35o4-VPG+l for <devel@linuxdriverproject.org>;
 Mon, 31 Aug 2020 15:31:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id B95CF20012
 for <devel@driverdev.osuosl.org>; Mon, 31 Aug 2020 15:31:21 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B98302083E;
 Mon, 31 Aug 2020 15:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598887881;
 bh=FTjms7RAStT6C6sTV5fyF/nplxmW+bXYc9VNgjwOUWA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=y2cqTzv0CYHZBRfa4mBEEBCPD5yubbs0BZvDRjLcAA6sohOd5gmaA66vI5YcrpuKe
 9BC9wMr/vuiov9+Xc4Vx9f9W4EFANWg7Y5pr7ord97spY3jJ7Kygjon1hgwT0qwBdG
 O+nXEzxSLgj/L046b5ZRYlWW1ctBYCfGVTF6YLmU=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 02/11] speakup: Fix wait_for_xmitr for ttyio case
Date: Mon, 31 Aug 2020 11:31:08 -0400
Message-Id: <20200831153117.1024537-2-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200831153117.1024537-1-sashal@kernel.org>
References: <20200831153117.1024537-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
Cc: Sasha Levin <sashal@kernel.org>,
 Samuel Thibault <samuel.thibault@ens-lyon.org>, devel@driverdev.osuosl.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Samuel Thibault <samuel.thibault@ens-lyon.org>

[ Upstream commit 2b86d9b8ec6efb86fc5ea44f2d49b1df17f699a1 ]

This was missed while introducing the tty-based serial access.

The only remaining use of wait_for_xmitr with tty-based access is in
spk_synth_is_alive_restart to check whether the synth can be restarted.
With tty-based this is up to the tty layer to cope with the buffering
etc. so we can just say yes.

Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>
Link: https://lore.kernel.org/r/20200804160637.x3iycau5izywbgzl@function
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/speakup/serialio.c  | 8 +++++---
 drivers/staging/speakup/spk_priv.h  | 1 -
 drivers/staging/speakup/spk_ttyio.c | 7 +++++++
 drivers/staging/speakup/spk_types.h | 1 +
 drivers/staging/speakup/synth.c     | 2 +-
 5 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/speakup/serialio.c b/drivers/staging/speakup/serialio.c
index 177a2988641c1..403b01d66367e 100644
--- a/drivers/staging/speakup/serialio.c
+++ b/drivers/staging/speakup/serialio.c
@@ -32,6 +32,7 @@ static void spk_serial_tiocmset(unsigned int set, unsigned int clear);
 static unsigned char spk_serial_in(void);
 static unsigned char spk_serial_in_nowait(void);
 static void spk_serial_flush_buffer(void);
+static int spk_serial_wait_for_xmitr(struct spk_synth *in_synth);
 
 struct spk_io_ops spk_serial_io_ops = {
 	.synth_out = spk_serial_out,
@@ -40,6 +41,7 @@ struct spk_io_ops spk_serial_io_ops = {
 	.synth_in = spk_serial_in,
 	.synth_in_nowait = spk_serial_in_nowait,
 	.flush_buffer = spk_serial_flush_buffer,
+	.wait_for_xmitr = spk_serial_wait_for_xmitr,
 };
 EXPORT_SYMBOL_GPL(spk_serial_io_ops);
 
@@ -211,7 +213,7 @@ void spk_stop_serial_interrupt(void)
 }
 EXPORT_SYMBOL_GPL(spk_stop_serial_interrupt);
 
-int spk_wait_for_xmitr(struct spk_synth *in_synth)
+static int spk_serial_wait_for_xmitr(struct spk_synth *in_synth)
 {
 	int tmout = SPK_XMITR_TIMEOUT;
 
@@ -280,7 +282,7 @@ static void spk_serial_flush_buffer(void)
 
 static int spk_serial_out(struct spk_synth *in_synth, const char ch)
 {
-	if (in_synth->alive && spk_wait_for_xmitr(in_synth)) {
+	if (in_synth->alive && spk_serial_wait_for_xmitr(in_synth)) {
 		outb_p(ch, speakup_info.port_tts);
 		return 1;
 	}
@@ -295,7 +297,7 @@ const char *spk_serial_synth_immediate(struct spk_synth *synth,
 	while ((ch = *buff)) {
 		if (ch == '\n')
 			ch = synth->procspeech;
-		if (spk_wait_for_xmitr(synth))
+		if (spk_serial_wait_for_xmitr(synth))
 			outb(ch, speakup_info.port_tts);
 		else
 			return buff;
diff --git a/drivers/staging/speakup/spk_priv.h b/drivers/staging/speakup/spk_priv.h
index 796ffcca43c18..de1ed6c5018f6 100644
--- a/drivers/staging/speakup/spk_priv.h
+++ b/drivers/staging/speakup/spk_priv.h
@@ -36,7 +36,6 @@
 
 const struct old_serial_port *spk_serial_init(int index);
 void spk_stop_serial_interrupt(void);
-int spk_wait_for_xmitr(struct spk_synth *in_synth);
 void spk_serial_release(void);
 void spk_ttyio_release(void);
 void spk_ttyio_register_ldisc(void);
diff --git a/drivers/staging/speakup/spk_ttyio.c b/drivers/staging/speakup/spk_ttyio.c
index 93742dbdee77b..07948755cf9ed 100644
--- a/drivers/staging/speakup/spk_ttyio.c
+++ b/drivers/staging/speakup/spk_ttyio.c
@@ -116,6 +116,7 @@ static void spk_ttyio_tiocmset(unsigned int set, unsigned int clear);
 static unsigned char spk_ttyio_in(void);
 static unsigned char spk_ttyio_in_nowait(void);
 static void spk_ttyio_flush_buffer(void);
+static int spk_ttyio_wait_for_xmitr(struct spk_synth *in_synth);
 
 struct spk_io_ops spk_ttyio_ops = {
 	.synth_out = spk_ttyio_out,
@@ -125,6 +126,7 @@ struct spk_io_ops spk_ttyio_ops = {
 	.synth_in = spk_ttyio_in,
 	.synth_in_nowait = spk_ttyio_in_nowait,
 	.flush_buffer = spk_ttyio_flush_buffer,
+	.wait_for_xmitr = spk_ttyio_wait_for_xmitr,
 };
 EXPORT_SYMBOL_GPL(spk_ttyio_ops);
 
@@ -283,6 +285,11 @@ static void spk_ttyio_tiocmset(unsigned int set, unsigned int clear)
 	mutex_unlock(&speakup_tty_mutex);
 }
 
+static int spk_ttyio_wait_for_xmitr(struct spk_synth *in_synth)
+{
+	return 1;
+}
+
 static unsigned char ttyio_in(int timeout)
 {
 	struct spk_ldisc_data *ldisc_data = speakup_tty->disc_data;
diff --git a/drivers/staging/speakup/spk_types.h b/drivers/staging/speakup/spk_types.h
index a2fc72c298944..f2d3bd72c2c19 100644
--- a/drivers/staging/speakup/spk_types.h
+++ b/drivers/staging/speakup/spk_types.h
@@ -157,6 +157,7 @@ struct spk_io_ops {
 	unsigned char (*synth_in)(void);
 	unsigned char (*synth_in_nowait)(void);
 	void (*flush_buffer)(void);
+	int (*wait_for_xmitr)(struct spk_synth *synth);
 };
 
 struct spk_synth {
diff --git a/drivers/staging/speakup/synth.c b/drivers/staging/speakup/synth.c
index 3568bfb89912c..ac47dbac72075 100644
--- a/drivers/staging/speakup/synth.c
+++ b/drivers/staging/speakup/synth.c
@@ -159,7 +159,7 @@ int spk_synth_is_alive_restart(struct spk_synth *synth)
 {
 	if (synth->alive)
 		return 1;
-	if (spk_wait_for_xmitr(synth) > 0) {
+	if (synth->io_ops->wait_for_xmitr(synth) > 0) {
 		/* restart */
 		synth->alive = 1;
 		synth_printf("%s", synth->init);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
