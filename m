Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 60FC558A68
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 20:57:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0914D8757F;
	Thu, 27 Jun 2019 18:57:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a8bZe91Ltqgw; Thu, 27 Jun 2019 18:57:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D957A8759A;
	Thu, 27 Jun 2019 18:57:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 072B11BF2F8
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 18:57:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0401A87FB2
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 18:57:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h3IHpXSplSLT for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 18:57:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2C2E388018
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 18:57:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561661809;
 bh=lZmOeAftlgqo1vdHP3EjpsXSMad709JwC3ovNFUjiwQ=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=YlYRsrJx3moT3XGmZzynd1klvf22rerTxmigVrvdXQWeUPm0hCd/v2PaVgW3NzYLe
 s2qmVG6OPIS/o3vh+X6K4xiE8QVzr+RzviwTjTZYPAlsXYEBWeEGKgKfEuxyHtldvU
 DWJc6xDjkUpBtpljK/+sU26VeQzlFWdQtWaGur5k=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx002 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0M9ra4-1hrcBl0tDc-00B3Zb; Thu, 27 Jun 2019 20:56:49 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 02/31] staging: bcm2835-camera: Check the error for
 REPEAT_SEQ_HEADER
Date: Thu, 27 Jun 2019 20:55:59 +0200
Message-Id: <1561661788-22744-3-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:xRoSxi74f4luJ+Wk+0kZTsX3xHfSkTrMrkgOD1IOPvxzVJjunLe
 uZ+aAlxUHYIg6CvrOviaV/iIGAl9mLUUr3noPuL5j2LLEUogEle+eM280eSTHoYX0PQE3O4
 K1AViH65lOMhThZSKZA5BRSUzVHQtv4k4wCA5YvrJsvrbd+0urJdyCWB61pL8szP6DZ/NFx
 ZrjMX6kZR6umiAFEOP7Eg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:L8WFhcwKCGs=:Ys1zgqTPTO+npU8LQsHmfC
 1d48g2/7lNUJALcj5MPVIlqzwiV0dJcDISjgjozwjyoJcPdkJ602j+CUQ8DxPRl/VO9j0XPSB
 tOxdrTQK+Irfqkx1cWFMXNB4H3Bjam6DVLxPD8N4AKp8OY6nlbjzx6gAKMc9Cf6iEm4n2Vckk
 dDiiLeXYnhaphVOEzjOA5WxGtPSpuROzohdTRHE69Y8BxDvQ/5PVnT8md8hYg2jI1hXBgOQU3
 RMRDVeDbCvZ3lWHNgLGKc9xoVckFEojTXTpe++Kww0L93NhtGCCzEcDx2BeHZ2xDVIAkk+NAu
 4JTJhHFKr7YzJFJrk2uoWop3R4E/YlZP18tKKx7VFfOM3D4I4yTsOK8qM04RbZ30dutE4AWww
 LNtrCz+qqYszluUR4WkjXnqtGkk4j/LzOqW4SpI5DFECQ/e7++x22lPJorQpRI3Sy5u32KN+b
 dlbts5kFLZMr6wsVG3Y3+KLxgHk3pP7VEyDCHKf2tLpZ2NC2QmZteTqS0mpuhbju0z9RyRSW9
 gFY8h5Jl1wYWHXWB8dMYONiU6foQbUkbjIm0ioO+G0q7+swx8rKdsIL9ZmZOL+zMbqHXlxVZ+
 UNUkpq34PifnperGy9ijc9nX1I07ZsjuGWV9E2NsX8Y4EBf8Pt/D2DCUgiWvVCdMcaeIb68ek
 FLn0R4kBlMSoRFk38lNN8AKEeO2MLvqLMsN4/QJZQ6B+iKhRFFjJ1JRmAPcHiWCrIUfVm/GYB
 CzL+oUEq+eu7Di9KxG0C3DqS4H1DIbIQydU7BrVmabeESvALAuwFD4MszV8lXMOkKRCcrhu7d
 K9iV5xY3TA/0N9ohy1x4z5+xN0UBfLbEanZXKIxn8MAH7TxcLTLb8/Yng3mFiVSPPkUhtuk85
 hp/g6vjkKFtF4QjM2I+/3D2gK5jNmeQtXooSfaxfFi0R3stSC569J8GIHS8TwhNZx1m8kkV0d
 SRTnsJ8FMdJAi6Udk7s99uqNGT7t8wW2bp71FkQ6tEidrnnPB1D9+TRJlxX3L1BZEr5089LJv
 YRxTp5ARi7MSfalo6ZbNbXawbN7fyYOD7Fe/xbJAycKkP4mMrSZehY9Kj+Eu0ylxvMvLQJGVy
 +ssb39vGj+6PBo=
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Dave Stevenson <dave.stevenson@raspberrypi.org>

When handling for V4L2_CID_MPEG_VIDEO_REPEAT_SEQ_HEADER was added
the firmware would reject the setting if H264 hadn't already been
selected. This was fixed in the firmware at that point, but to
enable backwards compatibility the returned error was ignored.

That was Dec 2013, so the chances of having a firmware that still
has that issue is so close to zero that the workaround can be
removed.

Link: https://github.com/raspberrypi/linux/pull/2782/
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index c251164..133aa6e 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -1124,7 +1124,7 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		0, 1, NULL,
 		MMAL_PARAMETER_VIDEO_ENCODE_INLINE_HEADER,
 		ctrl_set_video_encode_param_output,
-		true	/* Errors ignored as requires latest firmware to work */
+		false
 	},
 	{
 		V4L2_CID_MPEG_VIDEO_H264_PROFILE,
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
