Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E461192BC
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 22:04:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 03E8087CA4;
	Tue, 10 Dec 2019 21:04:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MUIbhEH7b-dv; Tue, 10 Dec 2019 21:04:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 65C7887C50;
	Tue, 10 Dec 2019 21:04:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 73BEA1BF398
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 21:04:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6793E87B48
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 21:04:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AImX9fsfaAAq for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 21:04:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C1CF6879A7
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 21:04:44 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B29532468A;
 Tue, 10 Dec 2019 21:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576011884;
 bh=OnbJqA0+frurLx+b+snX4US2vZhw+RxCrJhg7CIcF2M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YGH0r0roU+BMV17w7ah5yIiDmRVV9xNK+w4oijGgHq7Y8mHrArMTa/0Lhu8jmBS7q
 SGewc1MyO3+uEK3fxY+IZT427yjDOW4lOTB9a792FrytVhe6FcKPJQNK4WiK1lDnwh
 0GgLWl9kNpuFudWxd8M9lx2tenggMJskmi8Y43qs=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 035/350] media: cedrus: fill in bus_info for media
 device
Date: Tue, 10 Dec 2019 15:58:47 -0500
Message-Id: <20191210210402.8367-35-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210402.8367-1-sashal@kernel.org>
References: <20191210210402.8367-1-sashal@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Sasha Levin <sashal@kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Hans Verkuil <hverkuil-cisco@xs4all.nl>

[ Upstream commit ae0688f659adb17ae6ae5710c886b20b5406e5c4 ]

Fixes this compliance warning:

$ v4l2-compliance -m0
v4l2-compliance SHA: b514d615166bdc0901a4c71261b87db31e89f464, 32 bits

Compliance test for cedrus device /dev/media0:

Media Driver Info:
        Driver name      : cedrus
        Model            : cedrus
        Serial           :
        Bus info         :
        Media version    : 5.3.0
        Hardware revision: 0x00000000 (0)
        Driver version   : 5.3.0

Required ioctls:
                warn: v4l2-test-media.cpp(51): empty bus_info
        test MEDIA_IOC_DEVICE_INFO: OK

Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Reviewed-by: Jernej Skrabec <jernej.skrabec@siol.net>
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/sunxi/cedrus/cedrus.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.c b/drivers/staging/media/sunxi/cedrus/cedrus.c
index 2d3ea8b74dfdc..3439f6ad63380 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.c
@@ -357,6 +357,8 @@ static int cedrus_probe(struct platform_device *pdev)
 
 	dev->mdev.dev = &pdev->dev;
 	strscpy(dev->mdev.model, CEDRUS_NAME, sizeof(dev->mdev.model));
+	strscpy(dev->mdev.bus_info, "platform:" CEDRUS_NAME,
+		sizeof(dev->mdev.bus_info));
 
 	media_device_init(&dev->mdev);
 	dev->mdev.ops = &cedrus_m2m_media_ops;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
