Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE1D75758
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 20:56:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D5D3E874DA;
	Thu, 25 Jul 2019 18:56:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Ak3F2SP8K+k; Thu, 25 Jul 2019 18:56:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4EF218746E;
	Thu, 25 Jul 2019 18:56:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 20DD31BF2C8
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 18:56:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1C69A86E6E
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 18:56:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id th+Wo8NLJkQR for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 18:56:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
 [217.70.183.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1129686E68
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 18:56:21 +0000 (UTC)
X-Originating-IP: 93.29.109.196
Received: from localhost.localdomain (196.109.29.93.rev.sfr.net
 [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 5372E40007;
 Thu, 25 Jul 2019 18:56:14 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v7 0/4] HEVC/H.265 stateless support for V4L2 and Cedrus
Date: Thu, 25 Jul 2019 20:55:58 +0200
Message-Id: <20190725185602.22522-1-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.22.0
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
 Sakari Ailus <sakari.ailus@linux.intel.com>,
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

HEVC/H.265 stateless support for V4L2 and Cedrus

This is early support for HEVC/H.265 stateless decoding in V4L2,
including both definitions and driver support for the Cedrus VPU
driver, which concerns Allwinner devices.

A specific pixel format is introduced for the HEVC slice format and
controls are provided to pass the bitstream metadata to the decoder.
Some bitstream extensions are intentionally not supported at this point.

Since this is the first proposal for stateless HEVC/H.265 support in
V4L2, reviews and comments about the controls definitions are
particularly welcome.

On the Cedrus side, the H.265 implementation covers frame pictures
with both uni-directional and bi-direction prediction modes (P/B
slices). Field pictures (interleaved), scaling lists and 10-bit output
are not supported at this point.

Changes since v6:
* Rebased on latest media tree from Hans;
* Reordered some fields to avoid holes and multi-padding;
* Updated the documentation.

Changes since v5:
* Rebased atop latest next media tree;
* Moved to flags instead of u8 fields;
* Added padding to ensure 64-bit alignment
  (tested with GDB on 32 and 64-bit architectures);
* Reworked cedrus H.265 driver support a bit for flags;
* Split off codec-specific control validation and init;
* Added HEVC controls fields cleanup at std_validate to allow reliable
  control comparison with memcmp;
* Fixed various misc reported mistakes.

Changes since v4:
* Rebased atop latest H.254 series.

Changes since v3:
* Updated commit messages;
* Updated CID base to avoid conflicts;
* Used cpu_to_le32 for packed le32 data;
* Fixed misc minor issues in the drive code;
* Made it clear in the docs that the API will evolve;
* Made the pixfmt private and split commits about it.

Changes since v2:
* Moved headers to non-public API;
* Added H265 capability for A64 and H5;
* Moved docs to ext-ctrls-codec.rst;
* Mentionned sections of the spec in the docs;
* Added padding to control structures for 32-bit alignment;
* Made write function use void/size in bytes;
* Reduced the number of arguments to helpers when possible;
* Removed PHYS_OFFSET since we already set PFN_OFFSET;
* Added comments where suggested;
* Moved to timestamp for references instead of index;
* Fixed some style issues reported by checkpatch.

Changes since v1:
* Added a H.265 capability to whitelist relevant platforms;
* Switched over to tags instead of buffer indices in the DPB
* Declared variable in their reduced scope as suggested;
* Added the H.265/HEVC spec to the biblio;
* Used in-doc references to the spec and the required APIs;
* Removed debugging leftovers.

Cheers!

Paul Kocialkowski (4):
  media: v4l2-ctrl: Add a comment on why we zero out compound controls
    fields
  media: v4l: Add definitions for the HEVC slice controls
  media: pixfmt: Document the HEVC slice pixel format
  media: cedrus: Add HEVC/H.265 decoding support

 Documentation/media/uapi/v4l/biblio.rst       |   9 +
 .../media/uapi/v4l/ext-ctrls-codec.rst        | 486 +++++++++++++-
 .../media/uapi/v4l/pixfmt-compressed.rst      |  21 +
 .../media/uapi/v4l/vidioc-queryctrl.rst       |  18 +
 .../media/videodev2.h.rst.exceptions          |   3 +
 drivers/media/v4l2-core/v4l2-ctrls.c          |  93 +++
 drivers/media/v4l2-core/v4l2-ioctl.c          |   1 +
 drivers/staging/media/sunxi/cedrus/Makefile   |   2 +-
 drivers/staging/media/sunxi/cedrus/cedrus.c   |  31 +-
 drivers/staging/media/sunxi/cedrus/cedrus.h   |  18 +
 .../staging/media/sunxi/cedrus/cedrus_dec.c   |   9 +
 .../staging/media/sunxi/cedrus/cedrus_h265.c  | 616 ++++++++++++++++++
 .../staging/media/sunxi/cedrus/cedrus_hw.c    |   4 +
 .../staging/media/sunxi/cedrus/cedrus_regs.h  | 271 ++++++++
 .../staging/media/sunxi/cedrus/cedrus_video.c |  10 +
 include/media/hevc-ctrls.h                    | 198 ++++++
 include/media/v4l2-ctrls.h                    |   7 +
 17 files changed, 1789 insertions(+), 8 deletions(-)
 create mode 100644 drivers/staging/media/sunxi/cedrus/cedrus_h265.c
 create mode 100644 include/media/hevc-ctrls.h

-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
