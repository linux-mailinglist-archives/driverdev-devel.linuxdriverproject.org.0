Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C59258A60
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 20:57:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 90DC022643;
	Thu, 27 Jun 2019 18:57:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RHcmxxvWlvUv; Thu, 27 Jun 2019 18:57:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 815B122274;
	Thu, 27 Jun 2019 18:57:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1AE9F1BF2F8
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 18:57:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 144A5874A7
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 18:57:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZpcsxFJhvMdg for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 18:57:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D7F0F874E9
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 18:57:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561661815;
 bh=8zy/CF8eq6vCciU1LYPKVRt1nppxuwPwBxjk8BgMHCI=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=OiMdz/sG7vnUhoMUouJV7XUASaR917O5b29ggMTZrpM+aNhu4zax4rINDSp1y5TAz
 i73CVq6TdG04Vx5YZSOzXzYS2SsMH5lDzBi7z046mTd0HStJHXmvlGxnvoc+3rmmyv
 qsF0nftIgZhok+qENMZFTeZ8EdX9Qze76+0MUf4o=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx002 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0LqQzp-1iBDQV3k81-00e1fu; Thu, 27 Jun 2019 20:56:55 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 16/31] staging: bcm2835-camera: Remove check of the number of
 buffers supplied
Date: Thu, 27 Jun 2019 20:56:13 +0200
Message-Id: <1561661788-22744-17-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:B9slWFuCxy+02ZPi3VQFLXOYRQyTHeed6m6D9LbksOSlspD/mcl
 lUiQc25qvasefDg65qcaQ4JyNgnfNb6utBdEqNMz5Kzd/Q5lZzxp737BxT27weFFSOXQH8K
 H3kBji/p3t46KVOYuclYZ/FXqCcavbNEGml1l++aU24MR314GHcc/gKlgd4dKOxCIB9uDTA
 LlfQvA2olDokT3FAdW8Bg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:5Pe78/5ZErA=:j2IiReNY+mN7+vbsSSS1nD
 W0M8UFWxE99aSvM1mQtYylv0ZqO8Bhhs7ASsoNj8EdRZrV09dgGG5/YsHtS5DFJKTQom41q3t
 wzShstS/BBmS4GuVEZ5G91nVVpHSzHbhwmKCaHYE9czAPaUYT2GOs8SeOyBZiptZA2liOecuu
 A7rWaOg7aGGpWmC1bRq4A9Z2rw0n0AsrJQHW+l7/Ove6FFA+yIiuzqgCSydbylxx98k+9JZYI
 MB/3jFzOGm/Y8gegBJGRC1Qix5QxO+y3+9ouQeK7/BBsoUJbTtqUpWAj5en15m0myHxj7gyIT
 yQbOfSSZ6afFE84vnpzepG+7hFOos65n7HC+lBM3bbI4bRAnT4i7w4graVTpfxEaFYlie4IlA
 iRZU9X/eoWJrSt9CLjWf0CDRBi7EaI8PtNFoHmPwNUduFgPaN6wRcvOxGE3iUeXkQA01gb/rk
 dsiUKzI7DrULjuDwCynjpk7KtoXuFakpeRS5eN3R6fOKISyG0kd7MTyYEF+Mho/zd8w8nI7Er
 ioMyD7GyIzLdj1yXeZFeDbbIZI64BZI/jfxtQDMEuScxjptD7ZNl5qpIRlI+gMtPWguRprbvB
 F+UG9mPl62t3FXSUBna7JNbBUZTltuSrxY5vEynldZW7UewjaIwxwBwZZXxq7KJqDskDNdwYZ
 t7O2cCrOcAOROHIAG4LeUcfTu+P2RvqHKcrnIXpREj4EnX+UnpaOmwrp9Wt4epgtsS7VZ5onk
 KZFrf1n/A4bNlpW58xTMhx1fd1TYB1e9lKYUbr7f2eHpAeNxcc9fYeiqbjcp+IntRAhh5f5oL
 hLD1+ub2aJxtBIFoCmQVXgYLclnLrxFXPEUaeajF4B+OvS7OCabTflKlJZWehemcz0iiBjIy6
 FgjJ4b3oliDcmKb5nnelSUgzMWYyP0Vcu487X6qho+2aHIIh9x/7dRwvT7dqvdp+IUwy0HEL4
 ZIckcSqwQgbKofrC6zcjZtyjkXG65ijIkHFriSxhcVifpieV/WO5nPT6a4aQnsVTWZe8u8j+m
 fNKO9fqRzU/w4ew3oTmJkcSk0hsSLyfhIH49Pza4kLDBki5IBrCUC8tWATdTh8Na3Ff+TcUq7
 7YoYkTGzEldgU8=
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

Before commit "staging: bcm2835-camera: Remove V4L2/MMAL buffer remapping"
there was a need to ensure that there were sufficient buffers supplied from
the user to cover those being sent to the VPU (always 1).

Now the buffers are linked 1:1 between MMAL and V4L2,
therefore there is no need for that check, and indeed it is wrong
as there is no need to submit all the buffers before starting streaming.

Fixes: 938416707071 ("staging: bcm2835-camera: Remove V4L2/MMAL buffer remapping")
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index 4d63176..59eb812 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -1338,16 +1338,6 @@ static int port_enable(struct vchiq_mmal_instance *instance,
 	if (port->enabled)
 		return 0;

-	/* ensure there are enough buffers queued to cover the buffer headers */
-	if (port->buffer_cb) {
-		hdr_count = 0;
-		list_for_each(buf_head, &port->buffers) {
-			hdr_count++;
-		}
-		if (hdr_count < port->current_buffer.num)
-			return -ENOSPC;
-	}
-
 	ret = port_action_port(instance, port,
 			       MMAL_MSG_PORT_ACTION_TYPE_ENABLE);
 	if (ret)
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
