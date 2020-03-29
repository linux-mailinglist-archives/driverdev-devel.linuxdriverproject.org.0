Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5898F196D7A
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Mar 2020 14:46:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C1D7286652;
	Sun, 29 Mar 2020 12:45:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kYLzbT8fHcVX; Sun, 29 Mar 2020 12:45:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2C8FF86591;
	Sun, 29 Mar 2020 12:45:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 769981BF4D6
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 12:45:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 711DE8823A
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 12:45:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BC6dsDn2mq7F for <devel@linuxdriverproject.org>;
 Sun, 29 Mar 2020 12:45:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 97D35882DD
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 12:45:47 +0000 (UTC)
Received: from localhost.localdomain ([37.4.249.171]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MWAf4-1jqABk32V8-00Xdvx; Sun, 29 Mar 2020 14:45:30 +0200
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>
Subject: [PATCH 4/9] staging: bcm2835-camera: Simplify set_framerate_params
Date: Sun, 29 Mar 2020 14:44:56 +0200
Message-Id: <1585485901-10172-5-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
References: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:5YU3oC2y94BsZHHYP8TndlwcyUp8J4pyLiOitJbi1VPt2GGSjFF
 37wl4zqf46C3NQUFXNKKmkwVwCnOeXYiCU67dWN9GrQyc5nH5PmCNoY6YETmoTizJ3cjoNA
 wfKZAowjXiIY1MN4qYJXzKqUs/oSH7ZaaLbCWocpW5ODaAtM/EjxV69SDITg7mOwK/9XPJW
 gG/QciRNyUDsMiXbohZDw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:stQiyL73QVY=:5r1KvvNoqMUZdhoZGKZMNt
 cR81WvcP+ySBYe7qdS80bNYaepAUEeDsm5Gg/M4NQ0Biq0SjZKnQqz5WEkccfJpHrR+P3maYG
 5b2yKbxr1a8tkblk8s7UDStlTENl54/QRpxL17jSGVVTrQfmcnIrCuT1Kor3lNWTLdg1GupHU
 SeHaTSJWdqsug6S1SdFaZXQNAU5HOTHF/El9t5VD0SJ5RPrGhYkTFwXo93HvbcPqYSeLVCEFV
 3lUzC82U4v5QSjgp4Z7tNmKuW6zPr2S8ALIbGkkZHNNlmnpCpH7WSlK9F8HMUTAKsVltNG2Ia
 C5CVohbE5TOs2423KSk4v43Zey1EJRfkcqst4b24P7TFbMfL4oD2U/8+TTdOv+A+nQk4ccADE
 Bf3Syr2A+t8AOffGccvpmaxk90IA4O4OlLuSXimDWdrxbsf4itIPF3ejokVnyqIrN3Sczu8po
 kyWQx+Y2ZnNiT/zGjGpqWDMVAwXehpt8BBCcz0ZWJ5CZtT6zVMIcsHtu7rrFJr+BqKI0skukk
 t/82OTMIYXtUTDueu8flSd44iCuflSD3TCf0C3OH7aYzPAkxo6xrlSRAqKD+o2QQ0CGiacEuG
 +YhtMJSvASlRXJHQMSrhYecBTKy9zllku5fUVjdh9lP9SpStxYbfnj9rDcyJD4NyGoVDmr5JN
 FHOvGav9OnhWLt9Rsta5gElumgFRBS6Mel8rOoy0HlhYzfi4Sfnd/B7cvBykI8YXBom13YnWN
 OnF1zwHRr3+R5wryYfsKrVgWn1vGfPPd8GUrF2DortbQbLWOlBT0F6Mb+Bo06E8RCZNW4hJ8+
 Tg8f05vbGDhSnqFq5pPKhoQB5WWO2u7rPaoIIYF+CMr9BeZzo03zKidSVbOt+hScUIs1It+
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

This simplifies set_framerate_params and avoids the multiple assignment
in one line by moving the fps_high handling out of the if statement.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 275ff21..e46f150 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -1280,21 +1280,18 @@ int set_framerate_params(struct bm2835_mmal_dev *dev)
 	struct mmal_parameter_fps_range fps_range;
 	int ret;
 
+	fps_range.fps_high.num = dev->capture.timeperframe.denominator;
+	fps_range.fps_high.den = dev->capture.timeperframe.numerator;
+
 	if ((dev->exposure_mode_active != MMAL_PARAM_EXPOSUREMODE_OFF) &&
 	    (dev->exp_auto_priority)) {
-		/* Variable FPS. Define min FPS as 1fps.
-		 * Max as max defined FPS.
-		 */
+		/* Variable FPS. Define min FPS as 1fps. */
 		fps_range.fps_low.num = 1;
 		fps_range.fps_low.den = 1;
-		fps_range.fps_high.num = dev->capture.timeperframe.denominator;
-		fps_range.fps_high.den = dev->capture.timeperframe.numerator;
 	} else {
 		/* Fixed FPS - set min and max to be the same */
-		fps_range.fps_low.num = fps_range.fps_high.num =
-			dev->capture.timeperframe.denominator;
-		fps_range.fps_low.den = fps_range.fps_high.den =
-			dev->capture.timeperframe.numerator;
+		fps_range.fps_low.num = fps_range.fps_high.num;
+		fps_range.fps_low.den = fps_range.fps_high.den;
 	}
 
 	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
