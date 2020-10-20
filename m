Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC74293EF6
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Oct 2020 16:47:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DBAC786D4E;
	Tue, 20 Oct 2020 14:47:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5piSpQBpC62A; Tue, 20 Oct 2020 14:47:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D8CDF86B9E;
	Tue, 20 Oct 2020 14:47:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7EB311BF844
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 14:47:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 792D086BA5
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 14:47:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZbViQIk8V+Wu for <devel@linuxdriverproject.org>;
 Tue, 20 Oct 2020 14:47:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 46E1186B9E
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 14:47:00 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1kUsue-0002IT-6H; Tue, 20 Oct 2020 14:46:56 +0000
From: Colin King <colin.king@canonical.com>
To: Helen Koike <helen.koike@collabora.com>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org
Subject: [PATCH] media: staging: rkisp1: rsz: make const array static,
 makes object smaller
Date: Tue, 20 Oct 2020 15:46:55 +0100
Message-Id: <20201020144655.53251-1-colin.king@canonical.com>
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

Don't populate the const array dev_names on the stack but instead it
static. Makes the object code smaller by 15 bytes.

Before:
   text	   data	    bss	    dec	    hex	filename
  17091	   2648	     64	  19803	   4d5b	media/rkisp1/rkisp1-resizer.o

After:
   text	   data	    bss	    dec	    hex	filename
  17012	   2712	     64	  19788	   4d4c	media/rkisp1/rkisp1-resizer.o

(gcc version 10.2.0)

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/staging/media/rkisp1/rkisp1-resizer.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
index 1687d82e6c68..7ca5b47c5bf5 100644
--- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
+++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
@@ -763,8 +763,10 @@ static void rkisp1_rsz_unregister(struct rkisp1_resizer *rsz)
 
 static int rkisp1_rsz_register(struct rkisp1_resizer *rsz)
 {
-	const char * const dev_names[] = {RKISP1_RSZ_MP_DEV_NAME,
-					  RKISP1_RSZ_SP_DEV_NAME};
+	static const char * const dev_names[] = {
+		RKISP1_RSZ_MP_DEV_NAME,
+		RKISP1_RSZ_SP_DEV_NAME
+	};
 	struct media_pad *pads = rsz->pads;
 	struct v4l2_subdev *sd = &rsz->sd;
 	int ret;
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
