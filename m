Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1655846108
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 16:39:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 70D6223039;
	Fri, 14 Jun 2019 14:39:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bc2kl1eUo1Fd; Fri, 14 Jun 2019 14:39:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6357D22E8C;
	Fri, 14 Jun 2019 14:39:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 25D721BF362
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 14:39:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 22F54884C1
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 14:39:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9h39edgJ7MUc for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 14:39:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net [217.70.178.230])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8120A884BB
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 14:39:25 +0000 (UTC)
Received: from localhost.localdomain
 (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr [90.88.23.150])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id A9E72240014;
 Fri, 14 Jun 2019 14:39:19 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v6 1/5] media: v4l2-ctrls: Split off MPEG-2 controls validation
Date: Fri, 14 Jun 2019 16:38:33 +0200
Message-Id: <20190614143837.15605-2-paul.kocialkowski@bootlin.com>
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

Since codec controls validation comes with its own logic, split off
std_validate for MPEG-2 for better clarity.

Use a shorter name for the validated structure and use the
type-specific pointer to grab it while at it.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 drivers/media/v4l2-core/v4l2-ctrls.c | 95 +++++++++++++++-------------
 1 file changed, 52 insertions(+), 43 deletions(-)

diff --git a/drivers/media/v4l2-core/v4l2-ctrls.c b/drivers/media/v4l2-core/v4l2-ctrls.c
index f2b9bdedbf8c..824126267c44 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls.c
@@ -1617,11 +1617,61 @@ static void std_log(const struct v4l2_ctrl *ctrl)
 	0;							\
 })
 
+static int std_validate_mpeg2(const struct v4l2_ctrl *ctrl, u32 idx,
+			      union v4l2_ctrl_ptr ptr)
+{
+	struct v4l2_ctrl_mpeg2_slice_params *slice_params =
+		ptr.p_mpeg2_slice_params;
+
+	switch ((u32)ctrl->type) {
+	case V4L2_CTRL_TYPE_MPEG2_SLICE_PARAMS:
+		switch (slice_params->sequence.chroma_format) {
+		case 1: /* 4:2:0 */
+		case 2: /* 4:2:2 */
+		case 3: /* 4:4:4 */
+			break;
+		default:
+			return -EINVAL;
+		}
+
+		switch (slice_params->picture.intra_dc_precision) {
+		case 0: /* 8 bits */
+		case 1: /* 9 bits */
+		case 2: /* 10 bits */
+		case 3: /* 11 bits */
+			break;
+		default:
+			return -EINVAL;
+		}
+
+		switch (slice_params->picture.picture_structure) {
+		case 1: /* interlaced top field */
+		case 2: /* interlaced bottom field */
+		case 3: /* progressive */
+			break;
+		default:
+			return -EINVAL;
+		}
+
+		switch (slice_params->picture.picture_coding_type) {
+		case V4L2_MPEG2_PICTURE_CODING_TYPE_I:
+		case V4L2_MPEG2_PICTURE_CODING_TYPE_P:
+		case V4L2_MPEG2_PICTURE_CODING_TYPE_B:
+			break;
+		default:
+			return -EINVAL;
+		}
+
+		return 0;
+	default:
+		return 0;
+	}
+}
+
 /* Validate a new control */
 static int std_validate(const struct v4l2_ctrl *ctrl, u32 idx,
 			union v4l2_ctrl_ptr ptr)
 {
-	struct v4l2_ctrl_mpeg2_slice_params *p_mpeg2_slice_params;
 	size_t len;
 	u64 offset;
 	s64 val;
@@ -1685,49 +1735,8 @@ static int std_validate(const struct v4l2_ctrl *ctrl, u32 idx,
 		return 0;
 
 	case V4L2_CTRL_TYPE_MPEG2_SLICE_PARAMS:
-		p_mpeg2_slice_params = ptr.p;
-
-		switch (p_mpeg2_slice_params->sequence.chroma_format) {
-		case 1: /* 4:2:0 */
-		case 2: /* 4:2:2 */
-		case 3: /* 4:4:4 */
-			break;
-		default:
-			return -EINVAL;
-		}
-
-		switch (p_mpeg2_slice_params->picture.intra_dc_precision) {
-		case 0: /* 8 bits */
-		case 1: /* 9 bits */
-		case 2: /* 10 bits */
-		case 3: /* 11 bits */
-			break;
-		default:
-			return -EINVAL;
-		}
-
-		switch (p_mpeg2_slice_params->picture.picture_structure) {
-		case 1: /* interlaced top field */
-		case 2: /* interlaced bottom field */
-		case 3: /* progressive */
-			break;
-		default:
-			return -EINVAL;
-		}
-
-		switch (p_mpeg2_slice_params->picture.picture_coding_type) {
-		case V4L2_MPEG2_PICTURE_CODING_TYPE_I:
-		case V4L2_MPEG2_PICTURE_CODING_TYPE_P:
-		case V4L2_MPEG2_PICTURE_CODING_TYPE_B:
-			break;
-		default:
-			return -EINVAL;
-		}
-
-		return 0;
-
 	case V4L2_CTRL_TYPE_MPEG2_QUANTIZATION:
-		return 0;
+		return std_validate_mpeg2(ctrl, idx, ptr);
 
 	case V4L2_CTRL_TYPE_FWHT_PARAMS:
 		return 0;
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
