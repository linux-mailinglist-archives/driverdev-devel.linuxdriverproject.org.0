Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CC893313BC8
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Feb 2021 18:58:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 21433869D4;
	Mon,  8 Feb 2021 17:58:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 888RcXQoKDUj; Mon,  8 Feb 2021 17:58:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id ADA1986891;
	Mon,  8 Feb 2021 17:58:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CD96D1BF414
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 17:58:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C63532094E
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 17:58:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8Ud0VrXxzWFn for <devel@linuxdriverproject.org>;
 Mon,  8 Feb 2021 17:58:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 9F6752037B
 for <devel@driverdev.osuosl.org>; Mon,  8 Feb 2021 17:58:26 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id CE2B664EC6;
 Mon,  8 Feb 2021 17:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612807105;
 bh=Ft3y2cLhvPeVJQjkVPy7g6U6CuC59Gkyu2Hc4IHrVII=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iLL2rT37ISD+WSmUU/0KprA4MHeGxckp+cvjbu88UCXzRYx1fq1J+CyMPdfjLZQYA
 hUTE+W1GoeQQPJW3BL+Q8i4q/ACTfXX5JvFXU/baAYIUnOQGhBZVKj1uXJsEe3vxX0
 9iv3BUR7qGEtHy/BeENibVpYrlbg3iR9YRH6kres811QetnG5yKZiWYnUvvPh91k/c
 CynAAGDQ8NscXHgEoaenaqyUmws7LYlckZOjuQuhu9LShuA3ZHnUbEx3sc0tFfuV+D
 rDpo+spvvxEuxpFpVQuP/cbTf5EeUWNqrlSt2MzB1WiISu9V36fTi1FKoK52Fwxi3s
 bH7ChHgf1YhJQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.10 14/36] media: rkisp1: uapi: change hist_bins
 array type from __u16 to __u32
Date: Mon,  8 Feb 2021 12:57:44 -0500
Message-Id: <20210208175806.2091668-14-sashal@kernel.org>
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

[ Upstream commit 31f190e0ccac8b75d33fdc95a797c526cf9b149e ]

Each entry in the array is a 20 bits value composed of 16 bits unsigned
integer and 4 bits fractional part. So the type should change to __u32.
In addition add a documentation of how the measurements are done.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Acked-by: Helen Koike <helen.koike@collabora.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/rkisp1/uapi/rkisp1-config.h | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/rkisp1/uapi/rkisp1-config.h b/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
index 432cb6be55b47..c19fe059c2442 100644
--- a/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
+++ b/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
@@ -848,13 +848,18 @@ struct rkisp1_cif_isp_af_stat {
 /**
  * struct rkisp1_cif_isp_hist_stat - statistics histogram data
  *
- * @hist_bins: measured bin counters
+ * @hist_bins: measured bin counters. Each bin is a 20 bits unsigned fixed point
+ *	       type. Bits 0-4 are the fractional part and bits 5-19 are the
+ *	       integer part.
  *
- * Measurement window divided into 25 sub-windows, set
- * with ISP_HIST_XXX
+ * The window of the measurements area is divided to 5x5 sub-windows. The
+ * histogram is then computed for each sub-window independently and the final
+ * result is a weighted average of the histogram measurements on all
+ * sub-windows. The window of the measurements area and the weight of each
+ * sub-window are configurable using struct @rkisp1_cif_isp_hst_config.
  */
 struct rkisp1_cif_isp_hist_stat {
-	__u16 hist_bins[RKISP1_CIF_ISP_HIST_BIN_N_MAX];
+	__u32 hist_bins[RKISP1_CIF_ISP_HIST_BIN_N_MAX];
 };
 
 /**
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
