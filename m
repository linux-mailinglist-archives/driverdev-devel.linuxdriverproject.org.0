Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DE42B8CB8
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Nov 2020 09:00:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E1D9786D6F;
	Thu, 19 Nov 2020 08:00:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tsxkleRlFxvH; Thu, 19 Nov 2020 08:00:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4903F86D17;
	Thu, 19 Nov 2020 08:00:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C4BCF1BF3EE
 for <devel@linuxdriverproject.org>; Thu, 19 Nov 2020 08:00:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BD560873A2
 for <devel@linuxdriverproject.org>; Thu, 19 Nov 2020 08:00:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bu8aj4EgsS3u for <devel@linuxdriverproject.org>;
 Thu, 19 Nov 2020 08:00:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 35C6A87397
 for <devel@driverdev.osuosl.org>; Thu, 19 Nov 2020 08:00:07 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id A0D0067373; Thu, 19 Nov 2020 09:00:00 +0100 (CET)
Date: Thu, 19 Nov 2020 08:59:59 +0100
From: Christoph Hellwig <hch@lst.de>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 0/7] sunxi: Remove the calls to dma_direct_set_offset
Message-ID: <20201119075959.GA15942@lst.de>
References: <20201106151411.321743-1-maxime@cerno.tech>
 <20201106160737.GA31913@lst.de> <20201109094303.llqsxqoxjagiqa55@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201109094303.llqsxqoxjagiqa55@gilmour.lan>
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
Cc: devel@driverdev.osuosl.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Hans Verkuil <hverkuil@xs4all.nl>, Yong Deng <yong.deng@magewell.com>,
 Daniel Vetter <daniel.vetter@intel.com>, wens@kernel.org,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Nov 09, 2020 at 10:43:03AM +0100, Maxime Ripard wrote:
> Hi Christoph, Chen-Yu, Hans,
> 
> On Fri, Nov 06, 2020 at 05:07:37PM +0100, Christoph Hellwig wrote:
> > Thanks,
> > 
> > this looks good to me:
> > 
> > Reviewed-by: Christoph Hellwig <hch@lst.de>
> > 
> > Can you include this patch at the end of your series to that it gets
> > picked up with the other patches?
> 
> I guess the easiest to avoid bisection issues would be to merge all this
> through drm-misc, would that work for you?

Is this going to get picked up in drm-misc?  I don't see it in linux-next
so far.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
