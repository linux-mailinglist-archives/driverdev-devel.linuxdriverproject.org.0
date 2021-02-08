Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B38313BC9
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Feb 2021 18:58:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A4D4585DFD;
	Mon,  8 Feb 2021 17:58:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pHx9D6XGx26C; Mon,  8 Feb 2021 17:58:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5B22485608;
	Mon,  8 Feb 2021 17:58:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 86EC91BF414
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 17:58:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 83C0486F73
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 17:58:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ktyk8y1WZUQM for <devel@linuxdriverproject.org>;
 Mon,  8 Feb 2021 17:58:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D080286F6F
 for <devel@driverdev.osuosl.org>; Mon,  8 Feb 2021 17:58:27 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4B64364EBA;
 Mon,  8 Feb 2021 17:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612807107;
 bh=x0WINOM8wqLpK+VRogvrxA6ZgYuqhW5zPtLG29kuWMM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aMN/fwBa9tPaQqN0X1QjiTo7PHMOfB+2gF2vxmTICkA7/SkwoAYyPAhGDBQ13xyM/
 4PlhcGlKncVXLR7XkW1KIXXTI9T/dCWCd+vmfW64tkkgiH12GOmOt6C8rhwVch6QPI
 dGxKsbmdQm+hy0z089oGw6pgECapsY3cPWojQspKCKwuCW5YrH8MCbVCruj+OFotts
 DyuJsIWKnYa6CDejpBXrERPfFNYruDVCpkbbkeRFRchNX8MOxwyTWUqSTv1L+FzTVQ
 BURXXlKdCWHaDZkjIukdcjjLqHx6Sy4KxGxVrPqfqpfV5FyPQo7SMGNVP9xDtKIdEp
 L1i4fOJsQui5A==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.10 15/36] media: rkisp1: stats: remove a wrong cast
 to u8
Date: Mon,  8 Feb 2021 12:57:45 -0500
Message-Id: <20210208175806.2091668-15-sashal@kernel.org>
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
 Heiko Stuebner <heiko@sntech.de>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Helen Koike <helen.koike@collabora.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

[ Upstream commit a76f8dc8be471028540df24749e99a3ec0ac7c94 ]

hist_bins is an array of type __u32. Each entry represent
a 20 bit fixed point value as documented inline.
The cast to u8 when setting the values is wrong. Remove it.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Acked-by: Helen Koike <helen.koike@collabora.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/rkisp1/rkisp1-stats.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-stats.c b/drivers/staging/media/rkisp1/rkisp1-stats.c
index 51c64f75fe29a..8fdf646c4b75b 100644
--- a/drivers/staging/media/rkisp1/rkisp1-stats.c
+++ b/drivers/staging/media/rkisp1/rkisp1-stats.c
@@ -253,8 +253,7 @@ static void rkisp1_stats_get_hst_meas(struct rkisp1_stats *stats,
 	pbuf->meas_type |= RKISP1_CIF_ISP_STAT_HIST;
 	for (i = 0; i < RKISP1_CIF_ISP_HIST_BIN_N_MAX; i++)
 		pbuf->params.hist.hist_bins[i] =
-			(u8)rkisp1_read(rkisp1,
-					RKISP1_CIF_ISP_HIST_BIN_0 + i * 4);
+			rkisp1_read(rkisp1, RKISP1_CIF_ISP_HIST_BIN_0 + i * 4);
 }
 
 static void rkisp1_stats_get_bls_meas(struct rkisp1_stats *stats,
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
