Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 893B22A6195
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Nov 2020 11:29:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 014092286C;
	Wed,  4 Nov 2020 10:29:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dunoXV-MVmSX; Wed,  4 Nov 2020 10:29:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CEE9F22011;
	Wed,  4 Nov 2020 10:29:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 222E41BF844
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 10:29:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1E4778746C
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 10:29:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1PwFWnIWAYjT for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 10:29:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6787A871AD
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 10:29:27 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 69E9E68D04; Wed,  4 Nov 2020 11:29:23 +0100 (CET)
Date: Wed, 4 Nov 2020 11:29:23 +0100
From: Christoph Hellwig <hch@lst.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: use of dma_direct_set_offset in (allwinner) drivers
Message-ID: <20201104102923.GA23981@lst.de>
References: <20201103095538.GA19136@lst.de>
 <20201104081411.bnt5kixgunaczbzj@gilmour.lan>
 <9623c346-c86c-e3ce-332b-95492576a859@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9623c346-c86c-e3ce-332b-95492576a859@arm.com>
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
 dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, iommu@lists.linux-foundation.org,
 Maxime Ripard <maxime@cerno.tech>, Yong Deng <yong.deng@magewell.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Nov 04, 2020 at 10:15:49AM +0000, Robin Murphy wrote:
> How about having something in the platform code that keys off the top-level 
> SoC compatible and uses a bus notifier to create offsets for the relevant 
> devices if an MBUS description is missing? At least that way the workaround 
> could be confined to a single dedicated place and look somewhat similar to 
> other special cases like sta2x11, rather than being duplicated all over the 
> place.

Yes, that would be the right way to handle the issue.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
