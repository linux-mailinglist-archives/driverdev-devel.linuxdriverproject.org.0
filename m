Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E75A75AB15
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jun 2019 14:49:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8D350204BE;
	Sat, 29 Jun 2019 12:49:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U7UxS8tweOOb; Sat, 29 Jun 2019 12:49:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 99570204A2;
	Sat, 29 Jun 2019 12:49:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CDFAC1BF28D
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 12:49:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CB2B8868F4
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 12:49:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8KXZq0dTd+kO for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 12:49:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 975BE84580
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 12:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561812540;
 bh=AO24dhR33sAimyv1ny5zTcoHxXYyQIqUHySiBAbYjys=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=XDV6MBnWhQN6JHJAe6lAfXxJOZkAk7rOVJnbN9256tOkxGGUAxnJoJAX/0IFT58dL
 TpyC4l0qMv1nxA7hzI6KCF3uIavwEQ6YpbHePEBWGEsNGSqDZvWY+a+oxniDcOH69F
 yO81LRDrZV4g/GFwCEQwTG1GuTTkqW6udLSacFUI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx105 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1M2f5T-1hhSy43Ryp-004ANR; Sat, 29 Jun 2019 14:48:59 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 20/29] staging: bcm2835-camera: Fix multiple assignments
 should be avoided
Date: Sat, 29 Jun 2019 14:48:27 +0200
Message-Id: <1561812516-9087-5-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561812516-9087-1-git-send-email-wahrenst@gmx.net>
References: <1561812516-9087-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:4nTPGPJkQrZ8QTOIRCsHWddGEo5EsUCmCY5X0F+iDLRIBIVxF6C
 26GoGSvixmPNbN6zYQcGnBQl04fIlxac5RwX53y807grnU82/cDIAeNWslR3irBOqztgqKN
 fZbfqZ+KYfqXph7uNjBnJAvhuVBqoyAP0ebiIqVjdnMFnsYZVgKdHDOdwePXakjf4xqUviZ
 pek0ZzHKdnTa1XHsuEJ4A==
X-UI-Out-Filterresults: notjunk:1;V03:K0:x4SvSKJslW4=:XhhQjHajOyXEX0D8Ngd4o5
 hYAGfjuTsXHXPFHiaq0YJM4H+wLwfx6r0U7EtyEAL9g7lEhzw/4xpl2BOgB2dQPT6W83i63xx
 aZzNnd2cJjpSCNpixwN96iRxfJYxwiZSZKIiP9sPEZnunaA1XYfeGEyusQhkttQfXsJ5HWCnn
 MMJGDrldzVoF4bBN6Jo5vvGmsBHwNGhMC9T851HLsrRsxko7y8ZJ3Uzp7zjl3xk7r5Ngj6fML
 6FHaRleI8qP0DddjVyWVu0FnvAi/Ldf5p8CHINEtQq7wZx7WjfcgfJ2k7fBg6lWnpjx0j26Qv
 KPvkspuxvaoMldUGUy76bqsEYiPFkmwWoNpJaJzcfGpoWRg29TkPw9reJKSHV9LvpTnqg5z/D
 HKzE2hz6/08wz8koPDVQY6KAj+/5ZCLOJNhm8yV3Ol5sLJn0NXJ+VkJ7QuT4O9jkONgiXmZuX
 Cv0IAAlNfhg3aM+1IILk39hySfgiSRNHOqkptR1i+HkbSyMDWrKszqhN4mC16Q/SQ9DQecKGr
 Di63Bd93evDOSHlqqFVv/oQM3cuCBVvyXaBsNhnri8h8HKS2P7/OJ/wqa9MLPAjS64NgNKUI/
 K8Vz/86KNeZfG4Yd1lz/NsyDkieVbLxUuoAZYMoaiVZeXNrJoPSJkYpmjMxp7TAJTQCwR0/es
 h2LSftp+N0k6AOlu+qJ/mmY5x2Nk6/b2bebxCAoBPrjxzcmiNY/qgvzOauC45pj/upPtKQ6Lw
 oUDRcNI5VoHahTK/IW0I81GoYs128HLMgFZXIMpfNwKTU/AJgs4HWw2xdpLeEJrwNUvPmqg8z
 fHD3NOjuLKI/inU7njlRzw6AwwlLCZgSGN6SexPGPyHbotGpmuYNMGZj5X63AYzrsX2iYbYqM
 E+i1QuKMhwAK9UJ+Sw7hh7hmYMj2Ovb5/PVmp3BxKjaAyUi6SH7EQIYGUoP8Wtz31HDp5Xn2D
 NIN9pZTRs/JQb/5El1VmJYFJ3He/1I45aCG2i1ARBlShvJqHf1lfJl35Ej+WAZF8z90IfD/iO
 AL8T+mBvA0dZHw7DVyDV97F/XoaW41IXseCqyejKjS9LfHaVftTDm5EpmJoBlqFGAftGSyCJR
 NMXiP1U7V3MJ8c=
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

Clear checkpatch complaints of "multiple assignments should be avoided"

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 167c218..1aaae57 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -1031,11 +1031,12 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
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
