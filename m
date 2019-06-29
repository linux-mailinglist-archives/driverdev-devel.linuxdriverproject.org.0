Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FF65AB0D
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jun 2019 14:49:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8A811204B9;
	Sat, 29 Jun 2019 12:49:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IUU4yiwgNA+g; Sat, 29 Jun 2019 12:49:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E2A9A204A4;
	Sat, 29 Jun 2019 12:49:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 75C511BF28D
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 12:49:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6B304869F2
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 12:49:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dUR1ENkvbCOB for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 12:49:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2FEF184580
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 12:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561812541;
 bh=W1MflUE2ESPxzCVc2ksRkn/5LFLvGtrfoI18ODdqjTU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=j6oHip4fDJxBz4Cfpw3TvDorry3ot9uutoAWePjvLqne/Q/XfPndUoruMHLeZgphA
 OaXauETJlOv9mL65Sd/tiBQyZxD+da9k0/OK33IreOBV3JMJeQfh2jlWg1ODepnuAW
 z0Isu+uh2s5BFf3sD8GJG0QrVznd/cPUgWBzTszk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx105 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1N1fmq-1ij6290GNM-01209a; Sat, 29 Jun 2019 14:49:01 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 23/29] staging: bcm2835-camera: Correct
 V4L2_CID_COLORFX_CBCR behaviour
Date: Sat, 29 Jun 2019 14:48:30 +0200
Message-Id: <1561812516-9087-8-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561812516-9087-1-git-send-email-wahrenst@gmx.net>
References: <1561812516-9087-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:786ToepF2m7Wy+UE0Lf7666a3lS0jC3ZKnna1dUe0y4fdCrlQU0
 5SPltxnSJxpfd2z0Y4tOUB2PB+Bt/VEgVS93iChIKA0VkG5yirU4w32cA6xUIMfZxK/NX/R
 m9S6pVh0mb+ikIcBj6lreOmTV17Tz9z43fyjuIdiUPOHWs130kxoXX5JgcQKDcV8Gm0mNXs
 SihOaMzeeLTvkwLkUoXSw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:OJTqm4YfpBo=:kqfHQShJPKdNq1tMGD/PX1
 ZZRgdMZ1xLlhAD9cMAGiJDLcaeRqpjMjtVqDCjBDwN51rvz0l3/RXw52SWI4dZmJoSH69mLUD
 a8EBqGDJSn6fXrgnphZ7IeVa1ZGHSB6KnYNA7vnu9Mf3UNh1BB4p73LjbdbiwubZ9v3/8nNT5
 a6pRpCxh6ws/m7mRM6Kv9GSiEJqrfQWak58VHmIl6FfcHbAh5QwH99SORV6WW3sNT24wwhShe
 CmDx79aqLF79kPcBSqPxhQSdsvSzykHDxtzLrAEqCfyKihkkJd6EoBvrxTIOTYHvcY6Bci+GP
 6eXyMYBb3LBrMwkDydN5/M8vBXdUl/tdCJgBreuDwwjdowSJbBee3PeHK17axvkHUfgNipVRt
 +aNEu+50770t6+c3eKb9rAfqmhQSS12sOu70A4pqYPBU2znBh6f1Xq+05doLZTtOf5TZRib6n
 D4K5Y8z4iitnI1L1y3wqlMia7ZZsjcguiyoCBGG9CY7R367aU3upIWY+NxuMM72IJtiKDPhiO
 fHgrp6GYiAu3tbRQ4vnDBdESwNJWmblKEBs6IobMkW4lVcJBBbXwL8vWo4pXCMUbWl5r8ngIf
 EJwI0PaDnf47eUjJJ60O5wcM+yODk3FrNQbgGxj7FGhinEJgo5zwAfZt+Y7I0slcxID35Zvhj
 bjIc+iS+If7zsmKXL7aOlQtak7x9b2Si6sWQ+oqZYAR2ifJYvFsDBuTN6gj1Ggo4a4IWI+loU
 vptYDt1Pc6j8WV1tZh4VkvUCQuDZQrHDgrsuyEa8Iz8RJ/jX4TucX1cWsrtcXr9PAIDoR7jGF
 xkoqnOSxNO/hri1O//nyi4Z2jLGEiYuuSyiwUcl7qeeTJ2XLZqs2CUWR5E5JK+RKUeceIGhq5
 H3+JMcdqNgSGlOSIBuLVY7ZYaDffsPgw4FzjUY7x2d/Nx8vSntZwTLdfx1T8dkwlUoOjW0ChV
 6DxMxPqdMFD0I9jQ8E/B8VEDoqLxeGHMvthM8Snrra9XygsD5qrTiSCv4GD1G06LERyv6Qorn
 pPQoWFfJ/lRyXAUlbEf1847Mhm08QDEUpDab2+Hx8yfZqntdd1XT7b4Iy4dlc9264Qm9jcFo8
 Ic2ehgeFe8UGC0=
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

With V4L2_CID_COLORFX_CBCR calling ctrl_set_colfx it was incorrectly
assigning the colour values to the enable field of dev->colourfx
instead of the u and v fields.

Correct the assignments.

Reported as a Coverity issue
Detected by CoverityScan CID#1419711 ("Unused value")

Reported-by: Colin Ian King <colin.king@canonical.com>
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 038b9b9..b8aaedd 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -574,8 +574,8 @@ static int ctrl_set_colfx(struct bm2835_mmal_dev *dev,

 	control = &dev->component[COMP_CAMERA]->control;

-	dev->colourfx.enable = (ctrl->val & 0xff00) >> 8;
-	dev->colourfx.enable = ctrl->val & 0xff;
+	dev->colourfx.u = (ctrl->val & 0xff00) >> 8;
+	dev->colourfx.v = ctrl->val & 0xff;

 	ret = vchiq_mmal_port_parameter_set(dev->instance, control,
 					    MMAL_PARAMETER_COLOUR_EFFECT,
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
