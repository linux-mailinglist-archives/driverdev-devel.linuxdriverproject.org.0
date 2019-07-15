Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E1FD56928F
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 16:37:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 315E921507;
	Mon, 15 Jul 2019 14:37:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PX0ZgRwyfpoG; Mon, 15 Jul 2019 14:37:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5ED64214F6;
	Mon, 15 Jul 2019 14:37:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 495101BF3D6
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 14:37:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4683185D55
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 14:37:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x73LxXc-1Vqz for <devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 14:37:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B46A685C62
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 14:37:48 +0000 (UTC)
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 81DB52184E;
 Mon, 15 Jul 2019 14:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563201468;
 bh=FOe3nvlPPU8TuzC+GQHd9FmwK3iwtiXQYa4btgKPlHA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=j70LsrttKmdCe4BZOym1oWXqlpZp4vesrQ6GWzvTfefWD6beXPQoyHagHWOVo1Gz4
 ss1AJkKuV459WOiXmazD/F5fEMYVTeDbl8flxqjLQRPz04UJeR7nsRSoD4360KSlH2
 Q7L/gktoU7dCHjO+qFL5R0cRYGbWRfSLx1iEpJbA=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 20/73] media: staging: media: davinci_vpfe: - Fix
 for memory leak if decoder initialization fails.
Date: Mon, 15 Jul 2019 10:35:36 -0400
Message-Id: <20190715143629.10893-20-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715143629.10893-1-sashal@kernel.org>
References: <20190715143629.10893-1-sashal@kernel.org>
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
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Shailendra Verma <shailendra.v@samsung.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Shailendra Verma <shailendra.v@samsung.com>

[ Upstream commit 6995a659101bd4effa41cebb067f9dc18d77520d ]

Fix to avoid possible memory leak if the decoder initialization
got failed.Free the allocated memory for file handle object
before return in case decoder initialization fails.

Signed-off-by: Shailendra Verma <shailendra.v@samsung.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/davinci_vpfe/vpfe_video.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/staging/media/davinci_vpfe/vpfe_video.c b/drivers/staging/media/davinci_vpfe/vpfe_video.c
index 89dd6b989254..e0440807b4ed 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_video.c
+++ b/drivers/staging/media/davinci_vpfe/vpfe_video.c
@@ -423,6 +423,9 @@ static int vpfe_open(struct file *file)
 	/* If decoder is not initialized. initialize it */
 	if (!video->initialized && vpfe_update_pipe_state(video)) {
 		mutex_unlock(&video->lock);
+		v4l2_fh_del(&handle->vfh);
+		v4l2_fh_exit(&handle->vfh);
+		kfree(handle);
 		return -ENODEV;
 	}
 	/* Increment device users counter */
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
