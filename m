Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1E9196D72
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Mar 2020 14:45:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 93C7986529;
	Sun, 29 Mar 2020 12:45:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KdR8std2qpyy; Sun, 29 Mar 2020 12:45:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 90D11863A4;
	Sun, 29 Mar 2020 12:45:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 26F271BF4D6
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 12:45:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 15E31203D3
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 12:45:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v0lxJWDBPRfR for <devel@linuxdriverproject.org>;
 Sun, 29 Mar 2020 12:45:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
 by silver.osuosl.org (Postfix) with ESMTPS id 8E7D920384
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 12:45:45 +0000 (UTC)
Received: from localhost.localdomain ([37.4.249.171]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MOAJt-1jh3Nw4BgX-00ObWg; Sun, 29 Mar 2020 14:45:30 +0200
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>
Subject: [PATCH 2/9] staging: bcm2835-camera: Activate
 V4L2_EXPOSURE_METERING_MATRIX handling
Date: Sun, 29 Mar 2020 14:44:54 +0200
Message-Id: <1585485901-10172-3-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
References: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:/Ltfqj7IJB/fOsZzoGrROP51B7Er3XY/LaqKCSdqaqIlnRZfUvV
 6lLx6AsFbJp4FK7dGZN0cNgAvvdzSRDFr5vWeOZE/j79yDgpsZB/daEia4Rv6mPBckVgOAW
 PNYcH/ripqJnufRzmeTjZS6nfkW3KJY/IA2Lffck/0DUA31nSMmmk36+AB+lzM7+pvXEUrO
 lHiLzQq1aS9ZaYYKZXMDw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:URTCvjr8+IY=:kMqYM/Kf+eybEztMskdEe9
 ZRbA59G203MzmPq8g3V6UattihxYxwjoVFyQSVxWTWbkz5ena9TnKtijDMhF8BvJhvcf1PA0d
 uzzqhOQp1QT6E3SiiPXWQRYxx8+Hp1+D+xrmNuE358RU/dA/6U8s9BrK+WR8H08/RKvTnfnWd
 EDyWXbzTMl0HHEMqpgeRcxaK2FmRei/KNUNWmGHXGfsHvctftD6STNJwv3Ma9wJE2J47bN1nS
 YMXE6LHpuEd4FDJbWCkCVTM5xWDdVWte6NxR9L1yEzVnVgHpSXCRpVBMV1bs8n4LxtQzINJr6
 thHiu6QWG6srbVXYSndgzc6APvo5c4RdLBFGkqU6aKULgbSjLAWHTkSpr6Axt4dBEfZ6bj6xn
 Mp1+gZXfnAwwmrArk6ECpk2eNfY3Yx4PVwcakyVQtd8awa7DNfXi04VXvIcDxtzotdwX4EFbO
 FtRIDaKlZY835yEkzxaPjZRkv0nbOZzCAVgQNqN7nFVoNvhr0aZ/p4TMnCNHWxkh22e9BiaXt
 BSjFiv1bIgzI6LmBRfsgeppPpE4HvBztR5zeY5tuaid8hlAvwD/OkVjyKMb92ZA0+nw/RP3D4
 DpSWZ47eEJfMHTx+pAy1Z3COn0wMYjPL8/eh9jQgncCG6dnGWPotP4Nvz6aTjcMUw8PbxSsnb
 3G2VKdsAuY4XtCVGKip9I4yhmS76n82OQnXqAfXA3TIOB3SFnXJWEti1PF5DoOKb/3T3KtE2w
 Zma7RrBnpc7tQPEF11Tv5Zf1xbwZDmpyG/EXhtmr7LCS3nIXdHJwXO8l5qyn3COAK+Q7RzN8Q
 OmarClc38GiXH+SK8DLi6mTtFNzlFzjJ3c7G6kQD8kbvt1E+/QwThSuFxIgKLY8uI8x5J4H
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
Cc: devel@driverdev.osuosl.org, Stefan Wahren <stefan.wahren@i2se.com>,
 linux-rpi-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I don't see any reason to keep this TODO, so activate the
V4L2_EXPOSURE_METERING_MATRIX handling.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 5137fcf..1d0caf4 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -377,11 +377,9 @@ static int ctrl_set_metering_mode(struct bm2835_mmal_dev *dev,
 		dev->metering_mode = MMAL_PARAM_EXPOSUREMETERINGMODE_SPOT;
 		break;
 
-	/* todo matrix weighting not added to Linux API till 3.9
-	 * case V4L2_EXPOSURE_METERING_MATRIX:
-	 *	dev->metering_mode = MMAL_PARAM_EXPOSUREMETERINGMODE_MATRIX;
-	 *	break;
-	 */
+	case V4L2_EXPOSURE_METERING_MATRIX:
+		dev->metering_mode = MMAL_PARAM_EXPOSUREMETERINGMODE_MATRIX;
+		break;
 	}
 
 	if (dev->scene_mode == V4L2_SCENE_MODE_NONE) {
@@ -1045,8 +1043,8 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 	{
 		.id = V4L2_CID_EXPOSURE_METERING,
 		.type = MMAL_CONTROL_TYPE_STD_MENU,
-		.min = ~0x7,
-		.max = V4L2_EXPOSURE_METERING_SPOT,
+		.min = ~0xf,
+		.max = V4L2_EXPOSURE_METERING_MATRIX,
 		.def = V4L2_EXPOSURE_METERING_AVERAGE,
 		.step = 0,
 		.imenu = NULL,
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
