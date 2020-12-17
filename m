Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3832DDC05
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Dec 2020 00:45:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 34C0B877D4;
	Thu, 17 Dec 2020 23:45:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cSqHBc4TK_2N; Thu, 17 Dec 2020 23:45:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BFB8A87405;
	Thu, 17 Dec 2020 23:45:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ECA441BF846
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 23:45:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E917B87B0A
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 23:45:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HhFxQBiQZKIa for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 23:45:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com
 [209.85.214.175])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5EC9987B08
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 23:45:52 +0000 (UTC)
Received: by mail-pl1-f175.google.com with SMTP id x18so407536pln.6
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 15:45:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=W3RRTT7yNXDH2vqGzUOSfFsa20THnjHR3wCjzZigjJg=;
 b=k3RC/895s3C+nXmkdzWMvvxjauP7XUKEgdQ9Ae0BcDG4xPBC8hvzZoYurw2xIWhHP3
 ZfJ/QjphW+RtwQRxUK5YELqIBgAW6Up/T04VX+sZrpiEaZBHSQotn9UIdPaOSccGcmZI
 LB+IiC8tpZ6ij1UgYn3pG6Tf+R9P2KtxxtBMKUhu+5BEzXbc7kDeou5Hp5i/VTrj7AeU
 vREbM5ZOEc6hibgnN8sGA6PLE5/dw+RTLSHXLrTRHtelpDblCKUTgsN7YbTWJpLin1Um
 0AqLvyXdpGUSqw0jiBcXG86WNd4MahW0hBZYa5hzq7Adg9GDp3Y4Ldufi7ukB5XrTFwU
 r6dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=W3RRTT7yNXDH2vqGzUOSfFsa20THnjHR3wCjzZigjJg=;
 b=aqSb/bvI+TCekBH104+wxvs9QiCDPaXN5G3PqnNBK3eIUHuQqJD+lBQ06olJf7+Nj3
 yt2FQLH7RLBRvf5sF1Xa3gTgvOkoQ5JUmkef07/GA3XKqrgonwFDlmp6Bajajnju7nUa
 SFHJzGrdTgCME95EjdKdlHdfPJSsqMXrSmNySu4okUep9ieocvaM6399ksMX1ri5V1LE
 8Vik7B9J5ea1zTwC1btvqx0/w5JpxrIaA11CeL3X0Vl2ydVtwrClyV6UrAEWAWUhBuPI
 AbGzUtoEsMoP14C5i3QlYq3RdR80sWiJ/QLfzoM2+3es3VBLc7GE67Cv/UmbF5jn+gIF
 iVEw==
X-Gm-Message-State: AOAM530fsZHRP0dH2gTBn6gzySvkPON69cISS4ApfeB6gvq9tcqMp7DT
 hmF3ag2ExShzUttAwMD1KMw=
X-Google-Smtp-Source: ABdhPJwZTMSyP5GW6egO5piE86RNO6/POneclQsd7v2mo1RWSf20PgSfV0+k3U4vYgYMnnPl6urrzg==
X-Received: by 2002:a17:902:988c:b029:da:60e0:10ec with SMTP id
 s12-20020a170902988cb02900da60e010ecmr1272639plp.83.1608248751989; 
 Thu, 17 Dec 2020 15:45:51 -0800 (PST)
Received: from localhost.localdomain (c-24-16-167-223.hsd1.wa.comcast.net.
 [24.16.167.223])
 by smtp.gmail.com with ESMTPSA id z5sm6935088pgv.53.2020.12.17.15.45.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 15:45:51 -0800 (PST)
From: Daniel West <daniel.west.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: most: video: fixed a parentheses coding style issue.
Date: Thu, 17 Dec 2020 15:45:01 -0800
Message-Id: <20201217234501.351725-1-daniel.west.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, mchehab+huawei@kernel.org,
 daniel.west.dev@gmail.com, masahiroy@kernel.org, linux-kernel@vger.kernel.org,
 hverkuil-cisco@xs4all.nl, christian.gromm@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed a coding style issue.

Signed-off-by: Daniel West <daniel.west.dev@gmail.com>
---
 drivers/staging/most/video/video.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/most/video/video.c b/drivers/staging/most/video/video.c
index 829df899b993..c58192ab0c2a 100644
--- a/drivers/staging/most/video/video.c
+++ b/drivers/staging/most/video/video.c
@@ -365,8 +365,8 @@ static const struct video_device comp_videodev_template = {
 
 /**************************************************************************/
 
-static struct most_video_dev *get_comp_dev(
-	struct most_interface *iface, int channel_idx)
+static struct most_video_dev *get_comp_dev
+	(struct most_interface *iface, int channel_idx)
 {
 	struct most_video_dev *mdev;
 	unsigned long flags;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
