Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7E55AD20
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jun 2019 21:33:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9ED96204BF;
	Sat, 29 Jun 2019 19:33:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N5brQEUfZHb0; Sat, 29 Jun 2019 19:33:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3457020402;
	Sat, 29 Jun 2019 19:33:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 556AD1BF8B4
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 19:33:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 52E342001A
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 19:33:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CA9mHoK8c1-H for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 19:33:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by silver.osuosl.org (Postfix) with ESMTPS id DE9DD20384
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 19:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561836762;
 bh=EseqlfgzCuf/2Cl1h+E1XvwMILq15RJLvE3ijWYQ0lI=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=FrJzy+5QBjbS3NLcmnI7cYCPjjhIKL0hWeZZ7tToTp1vlJ9zwD5t7XnaVVr9F2Nbi
 SBb1VZI7azq0qiE7jiQUNbPYbBWx6sueV4Mkxwf5b7wn8NDcEgajVSIex2qzqULDPo
 PD4JDSKI+5jqPcAh8mxQW7iKvtXAEqHCW9Z+r0t0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx003 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0MLfLH-1hgU8n1SuB-000x6C; Sat, 29 Jun 2019 21:32:42 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 26/29] staging: bcm2835-camera: Fix stride on RGB3/BGR3
 formats
Date: Sat, 29 Jun 2019 21:31:40 +0200
Message-Id: <1561836703-2528-2-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561836703-2528-1-git-send-email-wahrenst@gmx.net>
References: <1561836703-2528-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:TYN5LMuAfpARE6vm8oAc8tSbskTP/sKRht8r6aUhwmgX2tUX6c1
 kfyokFTyrx6gBhZ7CbbZ2IcA8S4pFgWx/f4VAI+k9C0KB2GeZTGMgnk32f/G7Gm8mtFd6x7
 J1/SIis+6+YDvfNOWf4a7J/+nwUm9CmWf9UqCj3o33y0EGGfB+m7JRxErn2xP079uqLRMgI
 z4vtQQavPspjw5KNZphZw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:52dxJ0fYAuI=:bSuUagRayxJ0o+uKxC1jME
 0HU9BtwjJCXXO4BM6AtbYFqDaMi6V09fDjcO1s/JYaD2zitKu9csOegGZwqeMCZTbhmE2M/19
 tYUK0WglmxI7b0PJRyEHaI2jCloQQd0hlW86IhMcs/alSlQrQar6W5G63KydQCJ9SWrP1oXNr
 k9B/l1Z3xd/d1RTFfyxrjZC1GD2ZVcmPvynZlrqcElCptg2RFSJM+dTHvMjjeLbAi9b2buOvv
 XMcdIwEJ+hEFw+drq10Q2bpfDDbf/Q99I5jCtWJF9vmLhcntTQrRNqZeN5cV+QOAWtTjkS/gU
 B+xZFkFIIp8KaxJW9Z+cWm7GJxHuI6j8tDUWjkv/NEGSUmZGbM8oDAzMtj0cjgrqUaTEak/Fj
 d5JVT1Xnft2U0KsTp8BQ/dg3KS8hlewh3oNaU2zIP4ooZFMsxbmkLXpnbk2xrGScyU+GG+9AK
 /CjRFptToH5ZaVyi2srGVzjmucAG0BkltfGSNl97KODjht4Vjet2/TIA5rgDhcd4it5pEaTG3
 rrbh2P8U6VcF1EZZo0gv5cpu69InMkhbT7DBWMoDVOoqc52urMju+rRXnFgU+Chdk+ymzF5B5
 fynDK4Yj0HkFVBTBBRrjs1pHMLL5p60uHWi18eLAFi3Y5bb2Si2OE1rI1tj3mQJdKepiTC1g9
 YtDhE+8Ob5XVZPn64r8K3PiGpFejwfAk3BK/RwzG8820zk1oeOx3B3O85DZ+K8B+bZokgA99b
 017NvElpjIuPDk1A9dUSrT3Y10WMZ4ZQFSZGEIYq4qvXHEuDUO2D18nqYlE7rJrfRYkkVk0od
 dKhvohD09LtSVkoBMkdUmqSI0WlfRgJOo9HL7uwg+a8Ge+9ZwIHwmsn/Jz+lsO8Xn2n+itnFB
 LfiXSZ1JvopsXBz68gQnkXnulippL5MmnocXlsY9L8JYP7FZhKMcHSxbnCPaM/lynZnMEXOtP
 Tb9NGyLEPkTNsWuUFrIexdtar3lIfyEiSBxwpS4tNtberAAkkoEVAvNb7126iilzDDj7SqdH0
 qJ/fJb7UOKyMJJjG2XlQgT1T3GN24GjxUa73yn2WMTL3YK1sEZg8sXacpwkO1TptXYyXhVxDT
 WaWxnxZgxt5kpE=
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

RGB3/BGR3 end up being 3 bytes per pixel, which meant that
the alignment code ended up trying to align using bitmasking
with a mask of 96.
That doesn't work, so switch to an arithmetic alignment for
those formats.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 26 +++++++++++++++++-----
 1 file changed, 20 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 1aaae57..1ad65dd 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -960,13 +960,27 @@ static int vidioc_try_fmt_vid_cap(struct file *file, void *priv,
 			      1, 0);
 	f->fmt.pix.bytesperline = f->fmt.pix.width * mfmt->ybbp;
 	if (!mfmt->remove_padding) {
-		int align_mask = ((32 * mfmt->depth) >> 3) - 1;
-		/* GPU isn't removing padding, so stride is aligned to 32 */
-		f->fmt.pix.bytesperline =
-			(f->fmt.pix.bytesperline + align_mask) & ~align_mask;
+		if (mfmt->depth == 24) {
+			/*
+			 * 24bpp is a pain as we can't use simple masking.
+			 * Min stride is width aligned to 16, times 24bpp.
+			 */
+			f->fmt.pix.bytesperline =
+				((f->fmt.pix.width + 15) & ~15) * 3;
+		} else {
+			/*
+			 * GPU isn't removing padding, so stride is aligned to
+			 * 32
+			 */
+			int align_mask = ((32 * mfmt->depth) >> 3) - 1;
+
+			f->fmt.pix.bytesperline =
+				(f->fmt.pix.bytesperline + align_mask) &
+							~align_mask;
+		}
 		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
-			 "Not removing padding, so bytes/line = %d, (align_mask %d)\n",
-			 f->fmt.pix.bytesperline, align_mask);
+			 "Not removing padding, so bytes/line = %d\n",
+			 f->fmt.pix.bytesperline);
 	}

 	/* Image buffer has to be padded to allow for alignment, even though
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
