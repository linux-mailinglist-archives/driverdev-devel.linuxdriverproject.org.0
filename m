Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3C1299DF5
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Oct 2020 01:11:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 741EB87118;
	Tue, 27 Oct 2020 00:11:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2mdFpQ+UFg4K; Tue, 27 Oct 2020 00:11:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D9F698700A;
	Tue, 27 Oct 2020 00:11:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C039A1BF27C
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 00:11:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BBD52864DF
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 00:11:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 07Emb1rL9gpN for <devel@linuxdriverproject.org>;
 Tue, 27 Oct 2020 00:11:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 55F4386382
 for <devel@driverdev.osuosl.org>; Tue, 27 Oct 2020 00:11:07 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 455E920754;
 Tue, 27 Oct 2020 00:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603757467;
 bh=fmXlvOS/ZhRVqFcxNW5uxaNcztefrwmdmlTY1LYyxLw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MDChSLVG59MItmIS8f9cavSlBAiWih1Bwy+UgiUEg3Suq0+8iXeyDta+DgP7hVlhM
 ROYTuyUaPRXTiaFGQaMtKjzlT0RPr0E8A50B1om+A46px49aJECkS7IThC22CHRijC
 lfE6S/tYT2gEt4nPhkfq1gmTrGzJ2CN17t+ieHiY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 19/30] bus/fsl_mc: Do not rely on caller to
 provide non NULL mc_io
Date: Mon, 26 Oct 2020 20:10:33 -0400
Message-Id: <20201027001044.1027349-19-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201027001044.1027349-1-sashal@kernel.org>
References: <20201027001044.1027349-1-sashal@kernel.org>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>, devel@driverdev.osuosl.org,
 Diana Craciun <diana.craciun@oss.nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Diana Craciun <diana.craciun@oss.nxp.com>

[ Upstream commit 5026cf605143e764e1785bbf9158559d17f8d260 ]

Before destroying the mc_io, check first that it was
allocated.

Reviewed-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
Acked-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
Link: https://lore.kernel.org/r/20200929085441.17448-11-diana.craciun@oss.nxp.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/fsl-mc/bus/mc-io.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/fsl-mc/bus/mc-io.c b/drivers/staging/fsl-mc/bus/mc-io.c
index 798c965fe2033..3fa6774946fae 100644
--- a/drivers/staging/fsl-mc/bus/mc-io.c
+++ b/drivers/staging/fsl-mc/bus/mc-io.c
@@ -167,7 +167,12 @@ int __must_check fsl_create_mc_io(struct device *dev,
  */
 void fsl_destroy_mc_io(struct fsl_mc_io *mc_io)
 {
-	struct fsl_mc_device *dpmcp_dev = mc_io->dpmcp_dev;
+	struct fsl_mc_device *dpmcp_dev;
+
+	if (!mc_io)
+		return;
+
+	dpmcp_dev = mc_io->dpmcp_dev;
 
 	if (dpmcp_dev)
 		fsl_mc_io_unset_dpmcp(mc_io);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
