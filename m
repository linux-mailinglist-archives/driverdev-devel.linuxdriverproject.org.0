Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D81226AB6
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Jul 2020 18:38:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C18FF87F73;
	Mon, 20 Jul 2020 16:38:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YnxnH42afhPr; Mon, 20 Jul 2020 16:38:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 17FA687FEA;
	Mon, 20 Jul 2020 16:38:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7372F1BF32C
 for <devel@linuxdriverproject.org>; Mon, 20 Jul 2020 16:38:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6835720426
 for <devel@linuxdriverproject.org>; Mon, 20 Jul 2020 16:38:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 05mdBtkWUDo0 for <devel@linuxdriverproject.org>;
 Mon, 20 Jul 2020 16:38:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by silver.osuosl.org (Postfix) with ESMTPS id 22DC820023
 for <devel@driverdev.osuosl.org>; Mon, 20 Jul 2020 16:38:09 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1jxYnk-00007X-BL; Mon, 20 Jul 2020 16:38:04 +0000
From: Colin King <colin.king@canonical.com>
To: Michael Tretter <m.tretter@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-media@vger.kernel.org,
 devel@driverdev.osuosl.org
Subject: [PATCH][next] media: allegro: fix potential null dereference on header
Date: Mon, 20 Jul 2020 17:38:04 +0100
Message-Id: <20200720163804.340047-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.27.0
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Colin Ian King <colin.king@canonical.com>

The pointer header is an alias to msg and msg is being null checked.
However, if msg is null then header is also null and this can lead to
a null pointer dereference on the assignment type = header->type. Fix
this by only dereferencing header after the null check on msg.

Addresses-Coverity: ("Dereference before null check")
Fixes: 3de16839669f ("media: allegro: add explicit mail encoding and decoding")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/staging/media/allegro-dvt/allegro-mail.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/allegro-dvt/allegro-mail.c b/drivers/staging/media/allegro-dvt/allegro-mail.c
index 4ac65de12463..4496e2a4da5c 100644
--- a/drivers/staging/media/allegro-dvt/allegro-mail.c
+++ b/drivers/staging/media/allegro-dvt/allegro-mail.c
@@ -462,12 +462,14 @@ allegro_dec_encode_frame(struct mcu_msg_encode_frame_response *msg, u32 *src)
 ssize_t allegro_encode_mail(u32 *dst, void *msg)
 {
 	const struct mcu_msg_header *header = msg;
-	enum mcu_msg_type type = header->type;
+	enum mcu_msg_type type;
 	ssize_t size;
 
 	if (!msg || !dst)
 		return -EINVAL;
 
+	type = header->type;
+
 	switch (type) {
 	case MCU_MSG_TYPE_INIT:
 		size = allegro_enc_init(&dst[1], msg);
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
