Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 490695AAC5
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jun 2019 14:14:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9AE122049B;
	Sat, 29 Jun 2019 12:14:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ARCuxPQJ4d4v; Sat, 29 Jun 2019 12:14:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AF1CE2049E;
	Sat, 29 Jun 2019 12:14:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A45941BF28D
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 12:14:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A14F1204A4
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 12:14:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9LZVMIfzkbOr for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 12:14:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by silver.osuosl.org (Postfix) with ESMTPS id 2E2562049B
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 12:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561810445;
 bh=zHE1SAFCsIAD5cnmVInCnyPS/jtZB3P6kyZA/ddYnsY=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=NIlyFeqI6+azaUctC9gXYrfj1LV5ePh2QNfII5UevbcaXA+Mr1fjLI564p/7qBgrX
 f1cHmTFzcAjJpCF7iBZzHUqW0HHNq8B/c8FIeXA4lHcRFKYPyspJlgM6CiAHGOYMhi
 eXSHJ1oqL3vzjo7S0DvYcrilL1JwGnxx/urR+vBk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0M5tzh-1iVa2X3c9h-00xsmR; Sat, 29 Jun 2019 14:14:04 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 01/29] staging: bcm2835-camera: Check the error for
 REPEAT_SEQ_HEADER
Date: Sat, 29 Jun 2019 14:13:16 +0200
Message-Id: <1561810410-8829-2-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
References: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:3in6uZLTp+rEkuSmOzoEoeteDWMTZ5q7niOWNVOuFVnkYiqRT21
 JFR1IOWjc1BvnIbOH8H8A0HnTJaqy0lUIT/aTU4QEMpq2aI7UQCTX4KlEn8TawymmXvpb+v
 DP31/Tom34aVSlToKwukFAV61xft+FnZ43DUhIWt5Y2Oz2KaaHR+WiT/Bnp7MiuxiYbbS11
 8QJpg/BtDDTlGy+vvucEQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:Agt0BPubglA=:2DQ1hO8GU9eQh3j0ufWSvn
 CYEuiGkZnHsWnOfrO9+SsW2JLKk6+erLB/11feNtKm1VpCML0vAo7t1Djxz8D4jKigfpcZyCv
 D60ad4kpp5ew3kIehJG3uGRd4HyejoW1QG9+e4TnsfPxaQTtzXT7byCCd+W8Lo4/4Y9WMra+i
 fwwH7kysQC55z/UD38EvdbNiOq/JbpGzkeH+5a3/9uTZt9em3hXrIkUx5kIHuN8AFw89yNfOr
 GJvVYBMjh/GvHst3bl7JSVrbt7f05+qRyEpHC/fogA4Z1nenuXwk/kluqlvD1uaqGYRRDWqDh
 /GKz3hO5MJlt5lNDDIjBMSsS5tkgzOaTHk4mPVujUL/HYozqozMcH43lwx+3jijte1uYTja1o
 AWaTk/dujEjVScUKI/MtEFWfNPw6FMLvQ5fWv2B+/OS+MuucOwMGuQAy68LYN/0xgYTvjlE/w
 Yk9y50bHPVf1sK/SvIxXobau6BDeBUOkQ+UVwR2FhtXWbgaOv+eaVXHYFEm/IgADKrdkS9GXi
 uWGOQp/3gbne/eWAoKKiGP3AzCdz+2HHRDUoWep4evf88tY9ZP7gqAxhKZs2ghmXZhfvWcOTE
 WGc86PFyLnkiGWw21yQswQbEwJwifWsnEqZSujeXcSYZXYK2yuqCgc+xVqlYgvRdZV/xaenP/
 4GVPtrC54MX8G9v3oLAbKS/onPLKwDJL271WnFCB/8AwFeGC9IlOZKEEHaJ4h0dtKGiH0C5B7
 Gw1PVgU92CqtqEkqY9PboHwonwK5FkZb0DMz/iYWBlpeYOkxl4qHlYH4EJOz/XOXVdxrQEC28
 BPPUO6p5UxpSQWdyfbwP5fuigCe7gu8Se2udzZKqPIeuORjOazL93eGMaoo3hVT5LFAkXbob7
 rTHnJ2qkW3iFJy+iEF+HFjn4FM8d4EOP8WhwlN2ZmIi29slChdswmvJDUSn7Can992bj14ROQ
 DkW7fLOfZhsOx08VdCVz5+JwmUuK/JfbE6NlLmOLwMuYLnBS39ywm5m7d5L7hLWTVGDP2oR52
 R3ZhvwxFMucSnrBOeOUcT0o0eGGNPbpkkuPFdmK7SDlnMTW4k876EBaFprnep6uQwSLJZldZo
 c56QRiLT+r+Bc0=
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
Cc: devel@driverdev.osuosl.org, Stefan Wahren <wahrenst@gmx.net>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
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
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
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
