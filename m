Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0434114A618
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 15:30:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4D762879A7;
	Mon, 27 Jan 2020 14:30:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3WMWyW4qKuFy; Mon, 27 Jan 2020 14:30:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7186B878FE;
	Mon, 27 Jan 2020 14:30:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9DA8A1BF3C0
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 14:30:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9995184ECD
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 14:30:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hG4z3R-icRzB for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 14:30:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A65C584B46
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 14:30:17 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 49465293978
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH 0/4] Hantro VPU JPEG encoder fixes
Date: Mon, 27 Jan 2020 15:30:05 +0100
Message-Id: <20200127143009.15677-1-andrzej.p@collabora.com>
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, kernel@collabora.com,
 linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This series addresses quality issues in encoded JPEG images.

The first patch actually restores the intention of the original submission
of this driver: due to a typo the helper variables were unused and then
have been removed in some cleanup done by Mauro.

The second patch aligns the driver's luma quantization table with
the one in the ITU-T.81 standard.

The third patch changes the order in which quantization tables are
written to the resulting file and to the hardware. The file expects
a zig-zag order, while the hardware wants some special order, neither
linear nor zig-zag. In other words, hardware-wise it rearranges which
parts of quantization tables go into which 4-byte registers - in a hardware
specific order rather than linear or zig-zag. It also affects rk3288 and
hasn't been tested with it.

The fourth patch then rearranges the sequence of register writes.
The whole luma quantization table must be written first, and then the
chroma quantization is written. In other words, while patch 3/4
changes what goes into which register, this patch changes when each
register is written to. It also affects rk3288 and hasn't been
tested with it.

Andrzej Pietrasiewicz (4):
  media: hantro: Read be32 words starting at every fourth byte
  media: hantro: Use standard luma quantization table
  media: hantro: Write the quantization tables in proper order
  media: hantro: Write quantization table registers in increasing
    addresses order

 .../staging/media/hantro/hantro_h1_jpeg_enc.c | 19 ++++-
 drivers/staging/media/hantro/hantro_jpeg.c    | 76 ++++++++++++++-----
 drivers/staging/media/hantro/hantro_jpeg.h    |  2 +-
 .../media/hantro/rk3399_vpu_hw_jpeg_enc.c     | 24 ++++--
 4 files changed, 89 insertions(+), 32 deletions(-)

-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
