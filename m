Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D14DF58AB0
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 21:07:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6204B87589;
	Thu, 27 Jun 2019 19:07:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jn-OxPzfS+WB; Thu, 27 Jun 2019 19:07:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9F41D8757D;
	Thu, 27 Jun 2019 19:07:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 750551BF41B
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 19:07:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6A62987590
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 19:07:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y8CmT89I67dm for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 19:07:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B474687589
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 19:07:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561662413;
 bh=HN3lhHm+Yt2GbL8dO//CPN9hcnC7lx/vfdI7rSIW4Pk=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=ISIBPootMoMSbtYFcaNVsNT8f+5oqIbnZBammUzC39oBzwx66IS70gfTNP8o73tei
 2oEmQmmhRGA8iULe3HL0j5PYkb0AjenyOzK9RREbAISQyCgW6+kqYMpaoYX3vNM6+b
 a885JyOEEMaGReTp2Yhxbcj+S+T38BCTd1UD8JzM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx101 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0M3vCA-1iY7p83L2A-00rWF9; Thu, 27 Jun 2019 21:06:52 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 22/31] staging: bcm2835-camera: Fix multiple assignments
 should be avoided
Date: Thu, 27 Jun 2019 21:06:17 +0200
Message-Id: <1561662386-23045-3-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561662386-23045-1-git-send-email-wahrenst@gmx.net>
References: <1561662386-23045-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:nDht862Sp27VYwhBb9Kh9ofjwNBUYyKYpnUiI/S8FqW7MW5NEo/
 3a0bU3PoAEYPVcTQpkI9eQfQj42yyOLe8xTC+l5hdLlrulutA/Irbt7bo23CSxTt++y3v7G
 Lq0E8VjMCa4fOGh1S55NxUVGnj4MhS0I3li7xJ6o5IlYAEIdgkPwqNVf7+LNenoQlo8Q8Sc
 3qnrR1IxS6OH6mPX6TM4Q==
X-UI-Out-Filterresults: notjunk:1;V03:K0:QGwz0ac8KYY=:xECsoiozVywwQUPjOJKdk0
 RXknP9fSotn2hZ1hFXEAGXMDax6+vufvh+Vg5u6DZUnFdb2GOTlzQPx++ABTuFwuJJniCly9i
 UZLN0Bx7TdiquURrdp02FvSX69z2v7gsQAsLrg53YSKNCgedHt/OclQhcs6nGPJ4zw0+MRhRb
 Lpl+q/KCfWgSFTS7PWisQukjBhqxJ9Y/ps0hgKZGmrEEItcA1Jld3Ier3Fw3//ACxpc9SY32q
 28+V4eN1NJ/AlnlDab9l4rBCKCNWEXJllUYaIukEVEFgIMCkzY9VDLB0RhUWImLCXo7Pou/5s
 sLMypqJ2GyscU1H71eSyMy/aadr9uFxav0ZYTXMuSqvHhXpJTeUC6Ct9dd5ZnuQDcCD3WNs4Y
 PN23yU4t+vefahzYaci1d5VjXj6/oM6vvuTImPbWUGh6FsV08MqEzhzADKHN8XRIUW+BXXLCU
 WWMjarSP6j84hT3uE7H+rAmy/Q6dmjbywbRn6NwAsrZNEr6b+evggBYF+YwqUYlQQvu1kw1DQ
 eqxyapX4PxZlG4mRnoEsdQYMYTrd/JCZNuFMA29A0REJxEL/0C27nMbZUQtQZTmHdyd0/otFO
 FK+zPiTjL3gkExjjcNl+3PTvsxgYP6ROg/h7EM1A99XIrFaSV2zXDMzxWdlxc33r4wOkenVwY
 WrQYwNNqoykamQR14zhVyeI1tFbVndFgEJQPMAzCxL7ndYBunPN6RR99yzsUNOJTaWWPPw3va
 KN3Yo3Aq/qlTXz7Db0FSez5iYH/bV63b6LXhdNGBXIo47BXtz3qK4aVZWvMrPE3Xm6/ikPs9X
 sTKfpHsFBREdnhRSNZtMst8bldxJl1v5KRy9QQ8LksHivHnl0xx+r0oqqd/vrbDQmBNTYHuXd
 k9gpldalO41zEhBBqPpDvFglURgsbrlnPVLQu8+kFFgd9aZglhueSqT/fvJSeQ5xJRsBnOS9t
 Hmsrb5e9g/pH9BfE1gtwMmYmDxkL9LfCe8xZBkCmIdk86hBQGWQMko1YqROC9sPkh1nbB7Zkc
 NxkXqhrxkur9Rq5RVvxWqvjeUheFJ2vjKxFsPuUgPlLTtmGIVg7EN2J6gzG7GcD75jWj8L/xB
 hoJNfVxihuQMuo=
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

Clear checkpatch complaints of "multiple assignments should be avoided"

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 6205793..bef0052 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -1049,11 +1049,12 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 		/* Make a further decision on port based on resolution */
 		if (f->fmt.pix.width <= max_video_width &&
 		    f->fmt.pix.height <= max_video_height)
-			camera_port = port =
+			camera_port =
 			    &dev->component[COMP_CAMERA]->output[CAM_PORT_VIDEO];
 		else
-			camera_port = port =
+			camera_port =
 			    &dev->component[COMP_CAMERA]->output[CAM_PORT_CAPTURE];
+		port = camera_port;
 		break;
 	case COMP_IMAGE_ENCODE:
 		encode_component = dev->component[COMP_IMAGE_ENCODE];
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
