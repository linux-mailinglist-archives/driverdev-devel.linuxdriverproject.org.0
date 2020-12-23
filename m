Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9351A2E1270
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Dec 2020 03:24:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3D6088698C;
	Wed, 23 Dec 2020 02:24:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UMlsF-Fvf+EP; Wed, 23 Dec 2020 02:24:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 384C886990;
	Wed, 23 Dec 2020 02:24:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4324B1BF301
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 02:24:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3FF9B85E98
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 02:24:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3igODmPr4xMm for <devel@linuxdriverproject.org>;
 Wed, 23 Dec 2020 02:24:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B390E85E40
 for <devel@driverdev.osuosl.org>; Wed, 23 Dec 2020 02:24:37 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id C20932339D;
 Wed, 23 Dec 2020 02:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1608690277;
 bh=bfortx+wnC+TGOCt//qZ8vIqwkv0I4jomBOictlh65k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AMUBVodX/eEFEhjI3HFLzCM9ZdHdFPBWNUpacerZWjqdi/CaHRzwIOqbovKCbIlL8
 KMxDzneSX37Kx2IoSWthv97RWWq5RGpETcE5Vtfi9cpcOSQFlZaNahnq5M99j0La4m
 yNlBR2RzMKSH3Irdx6si6woQ593rIncw8IBf6otIFGsDtGBY4UzI7o2gpTbWhM1I6L
 ORYODpHVd1bRRGDIg3alJQaLW0WlC5ZEQpKg3N943bqx22nAHxqg4TfnZh7JteovpY
 d9vaSCd+cGUnAVHEOQiCoJly9+BZ3JhWiyFx0qKAO93nwNW4s6/Z5lMnrY/0mZyuav
 //k9uMxriHH5g==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 17/48] media: cec-core: first mark device
 unregistered, then wake up fhs
Date: Tue, 22 Dec 2020 21:23:45 -0500
Message-Id: <20201223022417.2794032-17-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201223022417.2794032-1-sashal@kernel.org>
References: <20201223022417.2794032-1-sashal@kernel.org>
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
Cc: Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, linux-media@vger.kernel.org,
 devel@driverdev.osuosl.org, Sasha Levin <sashal@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Hans Verkuil <hverkuil-cisco@xs4all.nl>

[ Upstream commit e91c255733d9bbb4978a372f44fb5ed689ccdbd1 ]

If a CEC device node is unregistered, then it should be marked as
unregistered before waking up any filehandles that are waiting for
an event.

This ensures that there is no race condition where an application can
call CEC_DQEVENT and have the ioctl return 0 instead of ENODEV.

Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/cec/cec-core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/cec/cec-core.c b/drivers/staging/media/cec/cec-core.c
index b0137e247dc9a..bb189f753c3ac 100644
--- a/drivers/staging/media/cec/cec-core.c
+++ b/drivers/staging/media/cec/cec-core.c
@@ -183,12 +183,12 @@ static void cec_devnode_unregister(struct cec_devnode *devnode)
 		mutex_unlock(&devnode->lock);
 		return;
 	}
+	devnode->registered = false;
+	devnode->unregistered = true;
 
 	list_for_each_entry(fh, &devnode->fhs, list)
 		wake_up_interruptible(&fh->wait);
 
-	devnode->registered = false;
-	devnode->unregistered = true;
 	mutex_unlock(&devnode->lock);
 
 	device_del(&devnode->dev);
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
