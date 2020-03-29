Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A37D7196D6F
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Mar 2020 14:45:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1835486398;
	Sun, 29 Mar 2020 12:45:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VKIBgG5B7Imm; Sun, 29 Mar 2020 12:45:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A4B04863AE;
	Sun, 29 Mar 2020 12:45:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 743A81BF4D6
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 12:45:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6DB5988235
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 12:45:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EbLWmX2KxtTV for <devel@linuxdriverproject.org>;
 Sun, 29 Mar 2020 12:45:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 04FCF88222
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 12:45:39 +0000 (UTC)
Received: from localhost.localdomain ([37.4.249.171]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Mk0a0-1iuE6r1Ssi-00kLUd; Sun, 29 Mar 2020 14:45:29 +0200
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>
Subject: [PATCH 0/9] staging: bcm2835-camera: Clean up driver
Date: Sun, 29 Mar 2020 14:44:52 +0200
Message-Id: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:b/8SEi6dTJcfQ7tJbccvi8pWqGn9G0aN6VkhKPAs6CHXwAwlp+9
 nWAbg4fBbz7G9RmbPtFhONeqPAshBZDpsmNDKtrgjFGVldlCy8cJUEKf2GAQsOP4WVcQE7h
 yzpkmpWufPA3mnnr5XW+QIJil7MSz8MMGko54c3ev9iLDyafvr2kh96/2eo1r2Np7jn0WT5
 +GnA2EgA2caqRE2aVrOXw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:aaaCSVYz7tw=:ck3ZBRXgGP+jqc13oecB6q
 Vzmw2nscc5zCA80hHbbVWprVLByC5B+I6VjqVLxc+KAwhup9EYX0q4Q1VwyfxhrcLbR7m9SmM
 Nh0RIRDe9sNat0/WiD/jV0DtwvV/uP9HOu+55BmGOyUoQH0ic5zqvzPFbL3RWsCeQTTfb5PQO
 zIdc3TdtlvglfuEMmv7uVWkO3DncJxFcDuhtscrwGcxcKLic78or2MXpa63PGT+mSVGNxHX3b
 45CeYcj0ABxKCEtSUlkOYZkuJi0upDgBbALlzHBVNU8UwiEC2AdQwkhhrLBtCG4Bxr5JsoXI9
 18YSwyhpjGHMl5rAVFtY4UHkCyFADAWIUU808o+i49w+b7fmkGlqtZST6Dt5LMbm1df0E7Ynp
 7USF8G/dIMkSWYkYw/1mXJcu7/MXxSKTTYXksL2SKcRtrFv/uzMlPNhnlPShxAnLKsGVucBEw
 clvjzHbg+RpcxMkaDeNO0LUKgmMltmW4380KK7NPkK+r2S446CqAvjsyTHtzg2BvePRonZj4+
 kvn4u6nYYCFtm3NBTETIRhVmTTvsHHDin6jdjYa6JEHXA9IKcz5/7hVsCCiztBjlXr+HDc3A2
 0F+RX4CM+cRdKC0+M4ckArPOHlxm2JauGMvUjCAxuZkxVKOz79CFJLm/gJMZaEafLkshGQIWs
 F5xAIkTagFSLNcEW4byWa0r68fbbqUVjUJB3/LZxd3fpcA2Dd4V6gOICZtYYEZGtmzaQkcZUy
 NAwgHUDZOUBLBGzAhbK1alkPgnt045FCYI3rLSE7zGZWYqy+YqUrypfoHoOTOPHiQi3c3HWaF
 0J7UHhlm7Le7ap0bcKlXCM+N4r5NDmQcINGesAL8KOkWGo1/3h4p3w2qN+16PQAYfdra3+f
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

Except of patch 2 all these patches tries to clean up the bcm2835-camera
driver.

Stefan Wahren (9):
  staging: bcm2835-camera: Drop PREVIEW_LAYER
  staging: bcm2835-camera: Activate V4L2_EXPOSURE_METERING_MATRIX
    handling
  staging: bcm2835-camera: Make struct indentation consistent
  staging: bcm2835-camera: Simplify set_framerate_params
  staging: bcm2835-camera: Move encode component setup in its own
    function
  staging: bcm2835-camera: Move video component setup in its own
    function
  staging: bcm2835-camera: return early in mmal_setup_components
  staging: bcm2835-camera: reduce multiline statements
  staging: bcm2835-camera: reduce indentation in ctrl_set_image_effect

 .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 382 ++++++++++-----------
 .../vc04_services/bcm2835-camera/bcm2835-camera.h  |  62 ++--
 .../vc04_services/bcm2835-camera/controls.c        |  97 +++---
 .../vc04_services/bcm2835-camera/mmal-common.h     |  18 +-
 .../vc04_services/bcm2835-camera/mmal-parameters.h |  14 +-
 5 files changed, 279 insertions(+), 294 deletions(-)

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
