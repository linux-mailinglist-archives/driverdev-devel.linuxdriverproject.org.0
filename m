Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C16FD313BCA
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Feb 2021 18:58:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D1F2D86F73;
	Mon,  8 Feb 2021 17:58:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kvM0g4u0pvKK; Mon,  8 Feb 2021 17:58:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4B25786F6F;
	Mon,  8 Feb 2021 17:58:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1BD881BF414
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 17:58:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 13B0186667
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 17:58:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1OkIb4pQNEAX for <devel@linuxdriverproject.org>;
 Mon,  8 Feb 2021 17:58:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 41F8186688
 for <devel@driverdev.osuosl.org>; Mon,  8 Feb 2021 17:58:29 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id F0FBA64EB7;
 Mon,  8 Feb 2021 17:58:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612807109;
 bh=fZ0q/Z5Lh3LPbA+cPQP/1TqciNmcQO72beAeGZG/7fs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=diVMDA2rm+01grMPXMSUp9vyWtJgF5b47eoDPgXt907fVqHKWGhPE1tRNCGxUi1jB
 0Hix7BnbuAWL8Nlq8DIRl7MbkuZ5DVcfLTcZrgm7soXX1I0TkFdojZ4Sw0VPzYdn1b
 hRJIlz8PpnHU9EAJlr6L5WxvWspPdhy6G86jpY5oOCfPAH7LF2yTBA1CO+z780XAy/
 obfbIxyqQ8ux7MUKuyt2g4kZiGHSzwbTPYj19a58RDMKhfeYd2WvCuQBm//WgGJM9F
 Db62m8X5Tggvx00nth2/NUg7FFf5JF71uCQfrHUaqiv1QKt64KYrU0z97PW8nR/H9A
 Zo8LgWlNDK3Yw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.10 16/36] media: rkisp1: stats: mask the hist_bins
 values
Date: Mon,  8 Feb 2021 12:57:46 -0500
Message-Id: <20210208175806.2091668-16-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210208175806.2091668-1-sashal@kernel.org>
References: <20210208175806.2091668-1-sashal@kernel.org>
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Helen Koike <helen.koike@collabora.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

[ Upstream commit a802a0430b863f03bc01aaea2d2bf6ff464f03e7 ]

hist_bins is an array of type __u32. Each entry represents
a 20 bit value. So mask out the unused bits.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Acked-by: Helen Koike <helen.koike@collabora.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/rkisp1/rkisp1-regs.h  | 1 +
 drivers/staging/media/rkisp1/rkisp1-stats.c | 8 +++++---
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-regs.h b/drivers/staging/media/rkisp1/rkisp1-regs.h
index 049f6c3a11df5..5819e58b2e557 100644
--- a/drivers/staging/media/rkisp1/rkisp1-regs.h
+++ b/drivers/staging/media/rkisp1/rkisp1-regs.h
@@ -365,6 +365,7 @@
 #define RKISP1_CIF_ISP_MAX_HIST_PREDIVIDER		0x0000007F
 #define RKISP1_CIF_ISP_HIST_ROW_NUM			5
 #define RKISP1_CIF_ISP_HIST_COLUMN_NUM			5
+#define RKISP1_CIF_ISP_HIST_GET_BIN(x)			((x) & 0x000FFFFF)
 
 /* AUTO FOCUS MEASUREMENT:  ISP_AFM_CTRL */
 #define RKISP1_ISP_AFM_CTRL_ENABLE			BIT(0)
diff --git a/drivers/staging/media/rkisp1/rkisp1-stats.c b/drivers/staging/media/rkisp1/rkisp1-stats.c
index 8fdf646c4b75b..e52ba9b154e90 100644
--- a/drivers/staging/media/rkisp1/rkisp1-stats.c
+++ b/drivers/staging/media/rkisp1/rkisp1-stats.c
@@ -251,9 +251,11 @@ static void rkisp1_stats_get_hst_meas(struct rkisp1_stats *stats,
 	unsigned int i;
 
 	pbuf->meas_type |= RKISP1_CIF_ISP_STAT_HIST;
-	for (i = 0; i < RKISP1_CIF_ISP_HIST_BIN_N_MAX; i++)
-		pbuf->params.hist.hist_bins[i] =
-			rkisp1_read(rkisp1, RKISP1_CIF_ISP_HIST_BIN_0 + i * 4);
+	for (i = 0; i < RKISP1_CIF_ISP_HIST_BIN_N_MAX; i++) {
+		u32 reg_val = rkisp1_read(rkisp1, RKISP1_CIF_ISP_HIST_BIN_0 + i * 4);
+
+		pbuf->params.hist.hist_bins[i] = RKISP1_CIF_ISP_HIST_GET_BIN(reg_val);
+	}
 }
 
 static void rkisp1_stats_get_bls_meas(struct rkisp1_stats *stats,
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
