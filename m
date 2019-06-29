Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C568B5AAB6
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jun 2019 14:14:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 95E08204A7;
	Sat, 29 Jun 2019 12:14:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OTcn9Vl6fP7y; Sat, 29 Jun 2019 12:14:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E79AB204A0;
	Sat, 29 Jun 2019 12:14:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3BE6F1BF8B4
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 12:14:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 23D992049C
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 12:14:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zdHxyjIHoSaC for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 12:14:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by silver.osuosl.org (Postfix) with ESMTPS id C9BF120499
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 12:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561810450;
 bh=lqb0GYVfx1zv6fO8FMllOzy0xCPuxLT1hKd8sJfD9HU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=A3Ac58GtFkjzDPTsuHI66QgLUsSHx7UXS+Be9ozhe/MTT5ZX+NA8C5n0NLLBRVV9g
 qF014PXESDBFwlKvzH8T6VDJ4UPdEcgV4fTKWEosp6mwkSvR0zTOJy0G5dLXgcAP2K
 T51SfbBpXHmrMuo63ZE0akhEBl1bemQeQzYYTpeI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0LfTC1-1iMsrA34qf-00p35n; Sat, 29 Jun 2019 14:14:09 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 12/29] staging: bcm2835-camera: Fix missing lines between
 items
Date: Sat, 29 Jun 2019 14:13:27 +0200
Message-Id: <1561810410-8829-13-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
References: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:AouCbZc7Dgcy2VJXo5BzkXG8P6sTu0cIpPoIeko7pitM1iIcSTq
 6J2Sv/bRRNbyszHl1LN0b+FgDjflg311LO0lzMVZyNhPU83CGbIrOXnct+wPzZb9d4nkvbs
 /n1J2GjbM637uSOpIKwUHCKfuZkPhHaO0N79w+se5CTamoz8thAPdxL7VXtFdFVmUi+8gG8
 RVvu+eQlPXbAVlAbG0DgQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:O5qRPkUdzdU=:4Ie1ZpOk3U4XKRXkw3H19L
 fhuy7yZLkBAIvZpSNsLhW75FvEu1Lp1zW0TemM7Z37qocomGNkP2wptdFKnBSBSk7yMUugcws
 1NeYqh1lVs7o8NlT6a+sBPfVNex8NdsWrOAkui7LqY1ZCNdb86zioun51QU0PzSWf3b2m2HJn
 q0X2z9g6PCQg707MSL6ugU025dtFGmuUFpLWuHEpiAJLHnm49/7iy9xlSNz/MUb/LjFkXYbv5
 XxD4A8w6eXJSRXUP+ufxisyOUCl6CuijtSdYEZ/iaQpj32dArROu1W7A9N2BPZn2MXOVK/nZ0
 e7xWgPOIr74YdG8b+rVUg4l+e8wBk+LhBUBTkMhHdsehk5mQ43uo6T5sdsc2/nz/WACbe7rnm
 B/2HcniqzXXW3LBAlkSM6nipukleeRieX8zVb/JEF+RlExalbjZ8NPZ/cKHahV0vD8lZEhEVu
 l3A8tKyQHs/Cm/pveWEGYNbKX2l9Gziev5oMOR9pMQaxU606Jyvw8GgdERkh3wW1IBO4+epw0
 0TKIL3bmcxhmz2iK9xYV4Q3+l/k1HvHNNddiEh7GKbDMQGviL7EYN32NM8dO0XRN+IxBpUlm1
 vfY2vRBbA6/M4+F44IxbKpbfQAJW8lmO2HMkzCPA77yv/hDs1zPYq137AJEq4p5MXd9a2D95q
 Q8qWbduO/fSBwP65DToYnt5S4j4On6Vw4Zs+JV19rQ/FO6Ztkc83nLIuSHnMKjnuzTMLnczU7
 gT3bLGmgGCujJcSgBIaa9OPXYbd7D0pocSGqeBFSNNQ9otyPSK6BMQ9KK7ML+WVNJBZZWa+YD
 mJQv27Wmzt4ggpFel2E2njXX5VvDd6x7Irdfer+tOYe/gzK+4VcIqPQwdlgS/F26VCXfjRZtz
 3ZxpP6tNhV0eqDNF62xumX7unnaHOjzyP9oljAwQdOytozkZ0Czza+CZ7iNYrVBDon1w5Zs5b
 zfQcxd2LHYVEHjZfHtNOCitGjNBaY40hO/3FzYrYTHp/Oci6nKkhzzv1Dydzb4SvpfmY8lUJQ
 iPductemKgh8BnWDp4Dng7QT4OgfvViMMjDwh8v4WT2OWYWlQ3uaIXf6v/wi0AlY6B6z/hZ7k
 nWxcwEqAQAhtjM=
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

Fix checkpatch errors for missing blank lines after variable
or structure declarations.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
index 9bd262d..d9f0411 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
@@ -128,6 +128,7 @@ int set_framerate_params(struct bm2835_mmal_dev *dev);
 		(pix_fmt)->pixelformat, (pix_fmt)->bytesperline,	\
 		(pix_fmt)->sizeimage, (pix_fmt)->colorspace, (pix_fmt)->priv); \
 }
+
 #define v4l2_dump_win_format(level, debug, dev, win_fmt, desc)	\
 {	\
 	v4l2_dbg(level, debug, dev,	\
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
