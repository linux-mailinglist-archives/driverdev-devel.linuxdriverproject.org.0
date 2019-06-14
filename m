Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 742B246109
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 16:39:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0B75E884DD;
	Fri, 14 Jun 2019 14:39:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RBo7WPSM7qeX; Fri, 14 Jun 2019 14:39:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9051A884BB;
	Fri, 14 Jun 2019 14:39:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 752871BF362
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 14:39:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7277F87ACE
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 14:39:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bjSnrWhlxI8W for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 14:39:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net [217.70.178.230])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 045D287A05
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 14:39:27 +0000 (UTC)
Received: from localhost.localdomain
 (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr [90.88.23.150])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 09488240010;
 Fri, 14 Jun 2019 14:39:22 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v6 2/5] media: v4l2-ctrls: Split off MPEG-2 controls
 initialization
Date: Fri, 14 Jun 2019 16:38:34 +0200
Message-Id: <20190614143837.15605-3-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190614143837.15605-1-paul.kocialkowski@bootlin.com>
References: <20190614143837.15605-1-paul.kocialkowski@bootlin.com>
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
Cc: Hans Verkuil <hverkuil@xs4all.nl>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Alexandre Courbot <acourbot@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Boris Brezillon <boris.brezillon@collabora.com>,
 Nicolas Dufresne <nicolas@ndufresne.ca>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Just like codec-specific controls validation, controls initialization
for codecs is quite specific so move it to a specific helper for
MPEG-2 for increased clarity.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 drivers/media/v4l2-core/v4l2-ctrls.c | 33 ++++++++++++++++++----------
 1 file changed, 22 insertions(+), 11 deletions(-)

diff --git a/drivers/media/v4l2-core/v4l2-ctrls.c b/drivers/media/v4l2-core/v4l2-ctrls.c
index 824126267c44..84916b6889e2 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls.c
@@ -1494,11 +1494,29 @@ static bool std_equal(const struct v4l2_ctrl *ctrl, u32 idx,
 	}
 }
 
+static void std_init_mpeg2(const struct v4l2_ctrl *ctrl, u32 idx,
+			   union v4l2_ctrl_ptr ptr)
+{
+	struct v4l2_ctrl_mpeg2_slice_params *slice_params =
+		ptr.p_mpeg2_slice_params;
+
+	switch ((u32)ctrl->type) {
+	case V4L2_CTRL_TYPE_MPEG2_SLICE_PARAMS:
+		/* 4:2:0 */
+		slice_params->sequence.chroma_format = 1;
+		/* 8 bits */
+		slice_params->picture.intra_dc_precision = 0;
+		/* interlaced top field */
+		slice_params->picture.picture_structure = 1;
+		slice_params->picture.picture_coding_type =
+			V4L2_MPEG2_PICTURE_CODING_TYPE_I;
+		break;
+	}
+}
+
 static void std_init(const struct v4l2_ctrl *ctrl, u32 idx,
 		     union v4l2_ctrl_ptr ptr)
 {
-	struct v4l2_ctrl_mpeg2_slice_params *p_mpeg2_slice_params;
-
 	/*
 	 * The cast is needed to get rid of a gcc warning complaining that
 	 * V4L2_CTRL_TYPE_MPEG2_SLICE_PARAMS is not part of the
@@ -1530,15 +1548,8 @@ static void std_init(const struct v4l2_ctrl *ctrl, u32 idx,
 		ptr.p_u32[idx] = ctrl->default_value;
 		break;
 	case V4L2_CTRL_TYPE_MPEG2_SLICE_PARAMS:
-		p_mpeg2_slice_params = ptr.p;
-		/* 4:2:0 */
-		p_mpeg2_slice_params->sequence.chroma_format = 1;
-		/* 8 bits */
-		p_mpeg2_slice_params->picture.intra_dc_precision = 0;
-		/* interlaced top field */
-		p_mpeg2_slice_params->picture.picture_structure = 1;
-		p_mpeg2_slice_params->picture.picture_coding_type =
-					V4L2_MPEG2_PICTURE_CODING_TYPE_I;
+	case V4L2_CTRL_TYPE_MPEG2_QUANTIZATION:
+		std_init_mpeg2(ctrl, idx, ptr);
 		break;
 	default:
 		idx *= ctrl->elem_size;
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
