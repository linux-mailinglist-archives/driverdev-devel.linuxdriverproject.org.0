Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE9C141224
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Jan 2020 21:12:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 08D4986E69;
	Fri, 17 Jan 2020 20:12:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vND7Q1WW+lid; Fri, 17 Jan 2020 20:12:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 27A91855D3;
	Fri, 17 Jan 2020 20:12:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 794C01BF3EC
 for <devel@linuxdriverproject.org>; Fri, 17 Jan 2020 20:12:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 759B32002E
 for <devel@linuxdriverproject.org>; Fri, 17 Jan 2020 20:12:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jZT5OygNVTz2 for <devel@linuxdriverproject.org>;
 Fri, 17 Jan 2020 20:12:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by silver.osuosl.org (Postfix) with ESMTPS id 3172920021
 for <devel@driverdev.osuosl.org>; Fri, 17 Jan 2020 20:12:49 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 84B4F293C5F
From: Helen Koike <helen.koike@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH] staging: media: rkisp1: make links immutable by default
Date: Fri, 17 Jan 2020 17:12:18 -0300
Message-Id: <20200117201218.3745311-1-helen.koike@collabora.com>
X-Mailer: git-send-email 2.24.0
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
Cc: devel@driverdev.osuosl.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 tfiga@chromium.org, niklas.soderlund@ragnatech.se,
 Helen Koike <helen.koike@collabora.com>, laurent.pinchart@ideasonboard.com,
 hverkuil-cisco@xs4all.nl, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The only places which make sese to allow users to enable or disable
links are:

* between sensors and isp:
So users can select which sensor should be used while streaming

* between isp and the resizers:
              |
              v here
rkisp1_isp:2 -> rkisp1_resizer_mainpath -> rkisp1_mainpath (capture)
            \-> rkisp1_resizer_selfpath -> rkisp1_selfpath (capture)
              ^ here
              |

So users can disable one of the capture paths when unused, to avoid
worring about matching formats.

Make the following links immutable to simplify userspace:

rkisp1_resizer_mainpath -> rkisp1_mainpath
rkisp1_resizer_selfpath -> rkisp1_selfpath
rkisp1_params           -> rkisp1_isp
rkisp1_isp              -> rkisp1_stats

Signed-off-by: Helen Koike <helen.koike@collabora.com>

---
This is the topology graph after disabling all the links with
media -r
http://col.la/rkisp1immutable

Dashed links are the only one can can be enabled/disabled, the others
are immutable.

 drivers/staging/media/rkisp1/rkisp1-dev.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
index 558126e66465..4030d5e71af1 100644
--- a/drivers/staging/media/rkisp1/rkisp1-dev.c
+++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
@@ -145,14 +145,15 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
 		flags = 0;
 	}
 
-	flags = MEDIA_LNK_FL_ENABLED;
+	flags = MEDIA_LNK_FL_ENABLED | MEDIA_LNK_FL_IMMUTABLE;
 
 	/* create ISP->RSZ->CAP links */
 	for (i = 0; i < 2; i++) {
 		source = &rkisp1->isp.sd.entity;
 		sink = &rkisp1->resizer_devs[i].sd.entity;
 		ret = media_create_pad_link(source, RKISP1_ISP_PAD_SOURCE_VIDEO,
-					    sink, RKISP1_RSZ_PAD_SINK, flags);
+					    sink, RKISP1_RSZ_PAD_SINK,
+					    MEDIA_LNK_FL_ENABLED);
 		if (ret)
 			return ret;
 
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
