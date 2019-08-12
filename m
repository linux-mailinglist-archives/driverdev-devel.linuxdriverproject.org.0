Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1187289FA9
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Aug 2019 15:28:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3279C85C4C;
	Mon, 12 Aug 2019 13:28:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3+jpot8POrrD; Mon, 12 Aug 2019 13:28:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D3FC185DA0;
	Mon, 12 Aug 2019 13:28:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 39AFC1BF479
 for <devel@linuxdriverproject.org>; Mon, 12 Aug 2019 13:28:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 36A2B85785
 for <devel@linuxdriverproject.org>; Mon, 12 Aug 2019 13:28:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 02g7Ti5WXo6h for <devel@linuxdriverproject.org>;
 Mon, 12 Aug 2019 13:28:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EDD788577C
 for <devel@driverdev.osuosl.org>; Mon, 12 Aug 2019 13:28:22 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 97A362834A8
Message-ID: <6c78d1343b92e08c92e568a9e349fe22ac2f4aed.camel@collabora.com>
Subject: Re: [PATCH 1/7] media: cedrus: Disable engine after each slice
 decoding
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Jernej Skrabec
 <jernej.skrabec@siol.net>
Date: Mon, 12 Aug 2019 10:28:11 -0300
In-Reply-To: <20190603113827.2nmm5wkycf44aqox@flea>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
 <20190530211516.1891-2-jernej.skrabec@siol.net>
 <20190603113827.2nmm5wkycf44aqox@flea>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Jernej,

On Mon, 2019-06-03 at 13:38 +0200, Maxime Ripard wrote:
> Hi,
> 
> On Thu, May 30, 2019 at 11:15:10PM +0200, Jernej Skrabec wrote:
> > libvdpau-sunxi always disables engine after each decoded slice.
> > Do same in Cedrus driver.
> > 
> > Presumably this also lowers power consumption which is always nice.
> > 
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> 
> Is it fixing anything though?
> 
> I indeed saw that cedar did disable it everytime, but I couldn't find
> a reason why.
> 
> Also, the power management improvement would need to be measured, it
> can even create the opposite situation where the device will draw more
> current from being woken up than if it had just remained disabled.
> 

While reviewing this, I'm noticing that cedrus_engine_disable can
be marked for static storage (with or without this patch).

Regards,
Eze

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
