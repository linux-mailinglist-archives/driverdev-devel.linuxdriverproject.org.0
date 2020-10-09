Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F444288112
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Oct 2020 06:16:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E4150875FD;
	Fri,  9 Oct 2020 04:16:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4w2M7ICBca8l; Fri,  9 Oct 2020 04:16:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C2A378756D;
	Fri,  9 Oct 2020 04:16:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C920B1BF334
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 04:16:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C5AB8871A1
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 04:16:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id syRAaVHobfdo for <devel@linuxdriverproject.org>;
 Fri,  9 Oct 2020 04:16:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B151A8719C
 for <devel@driverdev.osuosl.org>; Fri,  9 Oct 2020 04:16:36 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id v19so7961527edx.9
 for <devel@driverdev.osuosl.org>; Thu, 08 Oct 2020 21:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=AfwAzZgxUctq+B9Xwm5LEy7q5lioBZycU4ewFeC4ZrU=;
 b=YeuI3ZU/Q95zGksRh/xPkTQuaKMozCNBWHj+oL9M9Y/jIEAET0+TVTnhYDk17L2ESl
 Po3EAv7LSh0BdfZTBahj4Xy1jjUYO1LgqavXAlxotKM6x+sABn4BgRaGhKgoKq7D/APk
 FPr4i7RJkARmVt7oApHNvPtTRqrVTzYm6ZfV2QIAjAzQQiaRJdkfQoOGNNAYKyftMofW
 wb7IZkuTzm4cW9umXnEb5EiXn4h5X6ibsIHURgefnDZfCJ4mTXNZpOmimAKfdGTTTi+a
 tn/HA+9zLa2CEgg8sWAgZyRejGA8nWgbKoIoEZkA//EKEpMAi/lEmqsvvRmFjDDKi7ro
 HHuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=AfwAzZgxUctq+B9Xwm5LEy7q5lioBZycU4ewFeC4ZrU=;
 b=dRq5zDt/Y09Jkm6WmulXzICbg9H652/s5AbY0ZRyszTAGCk9JLYY0cCeF2GuM3yXeG
 pGtL7k91EB9rmIx95AIR4nvaq8Z+r72O+zIrkDjSicPO77Dm5hDwDP3r8kNtRkX8cxcB
 64Oy3xDjMvnvvfCDWbDasn1pDWAdegqyIGaxzXhlTBhJzRGtVcjZOih0Q6Nn336sucvn
 C3ezFrNq1k4g0JCfquC8/OCV/LI9UzOXJ+ewzLp9MGhI1K/ZVHOm/SwXNpRBVyavJc6D
 MoNBTi7YSQfansgX1L8rNde7r7Jhc7rdYgCh4nQVeF4eSrVYx7G5WnRhJqAKHPH3cIAr
 CLVw==
X-Gm-Message-State: AOAM530V23fSCzYUXlCMrR0+LDX3FI1Hc4InhRoNjafuKnM7yS5R6aCR
 zO3m6avwhMLwKzz2i30TERA=
X-Google-Smtp-Source: ABdhPJyANwK4YJx0wVZaHj0CcX+4bLk3AB9hNGwkbJnRsWUmnv9UXC5XoaoqXKNU7nhJfS7T4UP/uw==
X-Received: by 2002:a05:6402:10d5:: with SMTP id
 p21mr12751645edu.14.1602216994860; 
 Thu, 08 Oct 2020 21:16:34 -0700 (PDT)
Received: from felia.fritz.box ([2001:16b8:2d6e:f600:80f1:4ea4:2130:b98])
 by smtp.gmail.com with ESMTPSA id o11sm5415265edw.80.2020.10.08.21.16.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Oct 2020 21:16:34 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Corentin Labbe <clabbe@baylibre.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 mjpeg-users@lists.sourceforge.net, linux-media@vger.kernel.org
Subject: [PATCH] MAINTAINERS: rectify ZR36067 VIDEO FOR LINUX DRIVER section
Date: Fri,  9 Oct 2020 06:16:21 +0200
Message-Id: <20201009041621.17513-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org,
 Ralf Ramsauer <ralf.ramsauer@oth-regensburg.de>, linux-kernel@vger.kernel.org,
 Joe Perches <joe@perches.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Pia Eichinger <pia.eichinger@st.oth-regensburg.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Commit 754f0f1ba8d9 ("media: MAINTAINERS: change maintainer of the zoran
driver") added a new section in MAINTAINERS with an invalid file entry
and at the wrong place for alphabetic ordering.

Hence, ./scripts/get_maintainer.pl --self-test=patterns complains:

  warning: no file matches  F:  Documentation/media/v4l-drivers/zoran.rst

Point the file entry to the right location and move the section to the
right place in MAINTAINERS.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on next-20201008

Corentin, please ack.
Mauro, please pick this minor non-urgent cleanup patch into your -next tree.

 MAINTAINERS | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 239ae2425cf8..6879ca545677 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19412,6 +19412,13 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/dlemoal/zonefs.git
 F:	Documentation/filesystems/zonefs.rst
 F:	fs/zonefs/
 
+ZPOOL COMPRESSED PAGE STORAGE API
+M:	Dan Streetman <ddstreet@ieee.org>
+L:	linux-mm@kvack.org
+S:	Maintained
+F:	include/linux/zpool.h
+F:	mm/zpool.c
+
 ZR36067 VIDEO FOR LINUX DRIVER
 M:	Corentin Labbe <clabbe@baylibre.com>
 L:	mjpeg-users@lists.sourceforge.net
@@ -19419,16 +19426,9 @@ L:	linux-media@vger.kernel.org
 S:	Maintained
 W:	http://mjpeg.sourceforge.net/driver-zoran/
 Q:	https://patchwork.linuxtv.org/project/linux-media/list/
-F:	Documentation/media/v4l-drivers/zoran.rst
+F:	Documentation/driver-api/media/drivers/v4l-drivers/zoran.rst
 F:	drivers/staging/media/zoran/
 
-ZPOOL COMPRESSED PAGE STORAGE API
-M:	Dan Streetman <ddstreet@ieee.org>
-L:	linux-mm@kvack.org
-S:	Maintained
-F:	include/linux/zpool.h
-F:	mm/zpool.c
-
 ZRAM COMPRESSED RAM BLOCK DEVICE DRVIER
 M:	Minchan Kim <minchan@kernel.org>
 M:	Nitin Gupta <ngupta@vflare.org>
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
