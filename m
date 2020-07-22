Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9382298F8
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jul 2020 15:09:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F048E87C57;
	Wed, 22 Jul 2020 13:09:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I4cw-KK7Oqjd; Wed, 22 Jul 2020 13:09:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9CEEB87695;
	Wed, 22 Jul 2020 13:09:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CD3081BF317
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 13:09:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C4E9788367
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 13:09:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O6JjlMFe6O+s for <devel@linuxdriverproject.org>;
 Wed, 22 Jul 2020 13:09:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8CEC9882A4
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 13:09:10 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1jyEUZ-0003On-AS; Wed, 22 Jul 2020 13:09:03 +0000
From: Colin King <colin.king@canonical.com>
To: Michael Tretter <m.tretter@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-media@vger.kernel.org,
 devel@driverdev.osuosl.org
Subject: [PATCH][next][V2] media: allegro: fix potential null dereference on
 header
Date: Wed, 22 Jul 2020 14:09:03 +0100
Message-Id: <20200722130903.818041-1-colin.king@canonical.com>
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
this just using header->type after the null check and removing the need
for type as it is only used once.

Addresses-Coverity: ("Dereference before null check")
Fixes: 3de16839669f ("media: allegro: add explicit mail encoding and decoding")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---

V2: remove need for variable type, as suggested by Michael Tretter

---
 drivers/staging/media/allegro-dvt/allegro-mail.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/media/allegro-dvt/allegro-mail.c b/drivers/staging/media/allegro-dvt/allegro-mail.c
index 4ac65de12463..9286d2162377 100644
--- a/drivers/staging/media/allegro-dvt/allegro-mail.c
+++ b/drivers/staging/media/allegro-dvt/allegro-mail.c
@@ -462,13 +462,12 @@ allegro_dec_encode_frame(struct mcu_msg_encode_frame_response *msg, u32 *src)
 ssize_t allegro_encode_mail(u32 *dst, void *msg)
 {
 	const struct mcu_msg_header *header = msg;
-	enum mcu_msg_type type = header->type;
 	ssize_t size;
 
 	if (!msg || !dst)
 		return -EINVAL;
 
-	switch (type) {
+	switch (header->type) {
 	case MCU_MSG_TYPE_INIT:
 		size = allegro_enc_init(&dst[1], msg);
 		break;
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
