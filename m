Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 625282A40CB
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Nov 2020 10:55:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 893F520525;
	Tue,  3 Nov 2020 09:55:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wJRWiB13GNsH; Tue,  3 Nov 2020 09:55:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C45EB203FF;
	Tue,  3 Nov 2020 09:55:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9B3051BF348
 for <devel@linuxdriverproject.org>; Tue,  3 Nov 2020 09:55:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9708B86C8B
 for <devel@linuxdriverproject.org>; Tue,  3 Nov 2020 09:55:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 32Dn9f01C8OO for <devel@linuxdriverproject.org>;
 Tue,  3 Nov 2020 09:55:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 60F6186C80
 for <devel@driverdev.osuosl.org>; Tue,  3 Nov 2020 09:55:46 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 4A0C467373; Tue,  3 Nov 2020 10:55:39 +0100 (CET)
Date: Tue, 3 Nov 2020 10:55:38 +0100
From: Christoph Hellwig <hch@lst.de>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Yong Deng <yong.deng@magewell.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: use of dma_direct_set_offset in (allwinner) drivers
Message-ID: <20201103095538.GA19136@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.17 (2007-11-01)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi all,

Linux 5.10-rc1 switched from having a single dma offset in struct device
to a set of DMA ranges, and introduced a new helper to set them,
dma_direct_set_offset.

This in fact surfaced that a bunch of drivers that violate our layering
and set the offset from drivers, which meant we had to reluctantly
export the symbol to set up the DMA range.

The drivers are:

drivers/gpu/drm/sun4i/sun4i_backend.c

  This just use dma_direct_set_offset as a fallback.  Is there any good
  reason to not just kill off the fallback?

drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c

  Same as above.

drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c

  This driver unconditionally sets the offset.  Why can't we do this
  in the device tree?

drivers/staging/media/sunxi/cedrus/cedrus_hw.c

  Same as above.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
