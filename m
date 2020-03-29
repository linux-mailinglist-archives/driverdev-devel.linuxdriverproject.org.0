Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B55A4196D75
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Mar 2020 14:45:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A100A203E0;
	Sun, 29 Mar 2020 12:45:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jercyWOJX647; Sun, 29 Mar 2020 12:45:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7C6FC20384;
	Sun, 29 Mar 2020 12:45:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 430751BF4D6
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 12:45:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3E47620384
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 12:45:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mdWk0numqrhw for <devel@linuxdriverproject.org>;
 Sun, 29 Mar 2020 12:45:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
 by silver.osuosl.org (Postfix) with ESMTPS id 8E66D20336
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 12:45:45 +0000 (UTC)
Received: from localhost.localdomain ([37.4.249.171]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MV5nC-1jkh4f2zdG-00S7cH; Sun, 29 Mar 2020 14:45:31 +0200
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>
Subject: [PATCH 7/9] staging: bcm2835-camera: return early in
 mmal_setup_components
Date: Sun, 29 Mar 2020 14:44:59 +0200
Message-Id: <1585485901-10172-8-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
References: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:1BfFYsTqmRUA5ksF99+FNCFtXj+7UT4rF/nmZHlpsqwKiIYXnsE
 lky6TODXtPNZG5AcEmNFB9aDeSfiQtmVWvThe26mPGPW1oGNbKiZz1xHhmMKPbjPzjjFk19
 erw+1OBqNC7ViFkoqfHxvSK6+K68U2K8QfnLzVTqTsc5E/BL50PPLP2dZdZV5J4T8ONHDq7
 zQBcdNk4gK/uDHPeCf0Sg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:C7tkbPwc6Do=:jep64MUNAqMPpyK6uuiHDx
 MV8XfEBmOA3mq8N6csfICybaGnAkVzxJGWZV+VsoNNyK0mdCq2/GxZ+H55utB/0bTSQqoUDz5
 8SB7m04L8rGtJcJ7wi+53NPqcd10GLa9KHc7vSZl6ffhOYSrInPIV5pi/lRIEiMCZ36rXMR0d
 woLEL25sIiKk8DUX/39Cc714Sqw9tEVm+FoeGhWTHQurtSH54UU2x9pJFJluovtVYwfzvwLU1
 f7WJQjdGfN3VXom+pNEiDI3QkOtuQBm23kWkfwgFSnAdg5+Eu/+mlf+x5MCbvoCkmeiGNrAXp
 gh9bSmiXyShlXRXQ1kxF4m4LgeDphrI2qp50mc4iEJgFxGwsgdXWFncGCOm2sJoA+54lZWkWD
 e60+S0tW7RmQGSNgBFmf/t+pYJVfMFlLGGskLbbgtaEhx2H4EfyuBl9PTei48hvU8t7vle3u5
 ao7ylqm748Ow988QJmg+x9aHOAXRKw8bpzML/KMZ6S6l9iwQNe+53Si0gP8NNof+yEGT+v8h9
 4Sh6clY5TSlx902MuHvcJxPr6lWBHyIPr3C2reST8zEQOvy3PaNagRrkYB0jifn/bzKzNfF3L
 SHhxkqPSwwvXVkYa1HIkNwmpc8vVPQwbqjW36IFhBKxJvJVEwXGCrLvDpvHt2w0YLGqLXc03j
 cd8QrAEDsT889Aa0st+H5RiRh8Fthrm++H1SmLcOTox1DjAPNEuR5hLyUvB766cmdIEH72ciV
 YrlmSdxLJ5443umECVgKOVVil7nqcWLjvufcgXOngFUqtG+akrC93Rh0EcYyOv+v4/PD2efEX
 wzrf6OyRZ37D+mmPRGODl6QpBuFs0wHGKRjUl5tI0TUxh2lDaDJWLHmG14rkRdH89ViedQv
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

We can reduce the indentation in mmal_setup_components further by
returning early in error case.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 60 +++++++++++-----------
 1 file changed, 31 insertions(+), 29 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index f11f186..91f767f 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -1241,38 +1241,40 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 			 f->fmt.pix.pixelformat);
 		/* ensure capture is not going to be tried */
 		dev->capture.port = NULL;
-	} else {
-		if (encode_component) {
-			ret = mmal_setup_encode_component(dev, f, port,
-							  camera_port,
-							  encode_component);
-		} else {
-			/* configure buffering */
-			camera_port->current_buffer.num = 1;
-			camera_port->current_buffer.size = f->fmt.pix.sizeimage;
-			camera_port->current_buffer.alignment = 0;
-		}
+		return ret;
+	}
 
-		if (!ret) {
-			dev->capture.fmt = mfmt;
-			dev->capture.stride = f->fmt.pix.bytesperline;
-			dev->capture.width = camera_port->es.video.crop.width;
-			dev->capture.height = camera_port->es.video.crop.height;
-			dev->capture.buffersize = port->current_buffer.size;
-
-			/* select port for capture */
-			dev->capture.port = port;
-			dev->capture.camera_port = camera_port;
-			dev->capture.encode_component = encode_component;
-			v4l2_dbg(1, bcm2835_v4l2_debug,
-				 &dev->v4l2_dev,
-				"Set dev->capture.fmt %08X, %dx%d, stride %d, size %d",
-				port->format.encoding,
-				dev->capture.width, dev->capture.height,
-				dev->capture.stride, dev->capture.buffersize);
-		}
+	if (encode_component) {
+		ret = mmal_setup_encode_component(dev, f, port,
+						  camera_port,
+						  encode_component);
+
+		if (ret)
+			return ret;
+	} else {
+		/* configure buffering */
+		camera_port->current_buffer.num = 1;
+		camera_port->current_buffer.size = f->fmt.pix.sizeimage;
+		camera_port->current_buffer.alignment = 0;
 	}
 
+	dev->capture.fmt = mfmt;
+	dev->capture.stride = f->fmt.pix.bytesperline;
+	dev->capture.width = camera_port->es.video.crop.width;
+	dev->capture.height = camera_port->es.video.crop.height;
+	dev->capture.buffersize = port->current_buffer.size;
+
+	/* select port for capture */
+	dev->capture.port = port;
+	dev->capture.camera_port = camera_port;
+	dev->capture.encode_component = encode_component;
+	v4l2_dbg(1, bcm2835_v4l2_debug,
+		 &dev->v4l2_dev,
+		"Set dev->capture.fmt %08X, %dx%d, stride %d, size %d",
+		port->format.encoding,
+		dev->capture.width, dev->capture.height,
+		dev->capture.stride, dev->capture.buffersize);
+
 	/* todo: Need to convert the vchiq/mmal error into a v4l2 error. */
 	return ret;
 }
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
