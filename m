Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C775AB0E
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jun 2019 14:49:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 081DA88189;
	Sat, 29 Jun 2019 12:49:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dba6HKRgLTL4; Sat, 29 Jun 2019 12:49:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 818A887A60;
	Sat, 29 Jun 2019 12:49:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3A4941BF28D
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 12:49:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 323CC204A5
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 12:49:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SbF+kKOGh5Rd for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 12:49:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by silver.osuosl.org (Postfix) with ESMTPS id 68092203E7
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 12:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561812541;
 bh=lyuo9ZZkk8hJypSXF5NF0dOT2zV+ssHAqTqmySO4UcA=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=k+6VOKVj2qROcEKKgv0F0RL2/U34jXzpl/hG8pDCJ9jmM3GhremFdcFusLokVI/xC
 Kd8WGmVlZNaWEY/hEfQehD4na8/C3Lxe0rrKOpAh2d79qdS27Q02xoeY4c+jWryxXD
 ygEqijkcAh/4VlyivWqFSUn482fpc/SH4ZwcUmKw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx105 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1N0XD2-1iSYAr1vjI-00wZB8; Sat, 29 Jun 2019 14:49:01 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 24/29] staging: bcm2835-camera: Remove/amend some obsolete
 comments
Date: Sat, 29 Jun 2019 14:48:31 +0200
Message-Id: <1561812516-9087-9-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561812516-9087-1-git-send-email-wahrenst@gmx.net>
References: <1561812516-9087-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:FQwLvaiFlhfDTE+wRxT7EaRSvUXaNO4hrSTyFF+HF6ZTQ3nMrUe
 y4dJ8pXcRTY2FOq1XbeOfel3GQ0t4ssrzTQnuIdyzP2NcrkByH1mvayk8XEr+RoYafsXxHI
 WUia9A+96a+QRyhyvTi6Sr6a+xeH5kc4gzDDEjAm2jzSnUXcA4JcYvanIATdv1JItdJ3hDV
 aUMyRjtjW5ct9lWHk1Dhg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:BkZiacC8RxI=:CQOgSGO9V1/El+0cq+9QKE
 wF2J6I9eVr2MPJ93qCZBe7DOTp8+4dz37KZNiVLLrfwIvEjtDmh2O9eYVNQ+Uf9Z0koX3wWQC
 oft6r/FTrYVKr5VuxuufOCqBTXrHPUyYvjr62wawDE+9fEKXRRAT2XXmkO1CDA29ZVAHRN2zU
 JXqk3iHwtZxwW4Undw7z2klHLVSUpLqUAWNOn8SnCCR9aHynEOl3JTVYBrG8uYYghLblDSzZb
 76jD3FeFxejY433n5Z2modtnpDkjUAW9HS0wjVxF7m1rXENK42zze4N7uGy2C4Wtofdlb79Al
 qOaWqwrbSiAtfwfNWKg8dbOl2wgKI62bKWW+hGFU+jZdhpC7ubu32CFEMztsmmRxQb6VgT74e
 QO7GNc1s0S+ld54DinMcAqEpwkTTGSe68hzF+bo5+y7rtolkQH5EqJbp2iYGe0XQkZ93pXPwb
 yOzyuSrdl8rH3P3uezRpAuDqEeatTxltARS9COm3VVCApE6YNOzLwNi3XARm5nMuuh/dVXu0E
 Xo/Sc7dBzfttrZCTgy8O3K3sT9kUdDYkCm+KmQlcQZ1HuOCVvsJyjqJu3EJBZcu57vZ9k2Bes
 JHZ5pZ0UTGH5BgK8VJrhzwE4/lEcCrKUN7Drrd2dg5Mh9Dl8BJBEkazz0quiVjqyoo/4fzLCb
 L5r2KANGuzHLdvuucUj41tBJzZeOUciNoQGSWej3v9E7nG01wxeWDWmmOoqAbMVPAdowTm0fy
 nA01RJECgMYWAcBgxqI+qnl6z8rlcWdoF0GjPaB7R0SDINsr6bbciR/rcPJNCPdZCHg4LeQER
 jZ4Lie1F+eDntCmxxS0Iy7CrcrSgaLnqL12JRbvF/ZIEohd/XFyTc/51vOCyukAeH1GRYpY1m
 yD7x6Wr8kYBPb+DnOwvNlnki1P1YzItXlpOQr9SCcDpGpXyMCe+SqN9V5WGE8a6w+fzrc5OhR
 jperBTJktqdJYPImkV3/X33UjkpcyeuULrSI5il7OJK49AIqSprrFYyn0mJPN56tr6tjxW7hm
 sgH4I+qP4i89Qtu2XlvAZYWPRymkJQY8V/dwMs4+7RwF81gzbbazqIBuTL3m520ncCzhPbY7Z
 1gAeaAKlw9R9c4=
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

Remove a todo which has been done.
Remove a template line that was redundant.
Make a comment clearer as to the non-obvious meaning of a field.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index b8aaedd..848b14a 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -971,10 +971,6 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		ctrl_set_value,
 		false
 	},
-/*	{
- *		0, MMAL_CONTROL_TYPE_CLUSTER, 3, 1, 0, NULL, 0, NULL
- *	},
- */
 	{
 		V4L2_CID_EXPOSURE_AUTO, MMAL_CONTROL_TYPE_STD_MENU,
 		~0x03, V4L2_EXPOSURE_APERTURE_PRIORITY, V4L2_EXPOSURE_AUTO, 0,
@@ -982,11 +978,6 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		ctrl_set_exposure,
 		false
 	},
-/* todo this needs mixing in with set exposure
- *	{
- *		V4L2_CID_SCENE_MODE, MMAL_CONTROL_TYPE_STD_MENU,
- *	},
- */
 	{
 		V4L2_CID_EXPOSURE_ABSOLUTE, MMAL_CONTROL_TYPE_STD,
 		/* Units of 100usecs */
@@ -1152,7 +1143,7 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 	},
 	{
 		V4L2_CID_SCENE_MODE, MMAL_CONTROL_TYPE_STD_MENU,
-		-1,	/* Min is computed at runtime */
+		-1,	/* Min (mask) is computed at runtime */
 		V4L2_SCENE_MODE_TEXT,
 		V4L2_SCENE_MODE_NONE, 1, NULL,
 		MMAL_PARAMETER_PROFILE,
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
