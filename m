Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FF21E4194
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 14:09:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DC6DD887C7;
	Wed, 27 May 2020 12:09:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qFaSsI9WbJzn; Wed, 27 May 2020 12:09:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 547B58879D;
	Wed, 27 May 2020 12:09:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DDB021BF2FC
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 12:08:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D6411203F7
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 12:08:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2k4RHHXSL+lB for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 12:08:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id C86E3203F0
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 12:08:58 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1643E207D8;
 Wed, 27 May 2020 12:08:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590581338;
 bh=QQD+MRgE+NZNCZ1eRvLYNsmu3HPx3aINjpU48jwRlJg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ppw1YZ13U3GlFvOUOKJHjPS6spIo3N1LnVyxUGcYWXLlt024/UzwJ/j8caj9QRbTT
 aStNnpVrgk/9GGow9w2VyKFQ6ePWmKMXiHP945Qbwoml51r0Kleg1cpF40zR8TI9kv
 Tv3jem1MlMHO38AXGJOvAA8k+fHHZha6t1JWxNVs=
Date: Wed, 27 May 2020 14:08:55 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [RFC 00/50] staging: vchiq: Getting rid of the vchi/vchiq split
Message-ID: <20200527120855.GA429709@kroah.com>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
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
Cc: devel@driverdev.osuosl.org, kernel-list@raspberrypi.com,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 laurent.pinchart@ideasonboard.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, May 27, 2020 at 01:53:05PM +0200, Nicolas Saenz Julienne wrote:
> vchi acts as a mid layer between vchiq and its kernel services, while
> arguably providing little to no benefit: half of the functions exposed
> are a 1:1 copy of vchiq's, and the rest provide some functionality which
> can be easly integrated into vchiq without all the churn. Moreover it
> has been found in the past as a blockage to further fixes in vchiq as
> every change needed its vchi counterpart, if even possible.
> 
> Hence this series, which merges all vchi functionality into vchiq and
> provies a simpler and more concise API to services.
> 
> I'm aware that kernel's vchi API tries to mimic its userspace
> counterpart (or vice versa). Obviously this breaks the parity, but I
> don't think it's a sane goal to have. There is little sense or gain from
> it, and adds impossible constraints to upstreaming the driver.
> 
> Overall the series falls short of removing 1500 lines of code, which is
> pretty neat on itself.
> 
> So far it has been tested trough bcm2835-camera, audio and vchiq-test. I
> can't do much about vc-sm-cma for now, but the changes are done in a way
> that shouldn't affect its behaviour.
> 
> Note that the series builds up on RPi/Laurent's camera support series[1]
> and can't yet be merged. We'd have to coordinate here. We could either
> wait for the vc_sm_cma rework (if it's not going to take months and
> months to finish), or factor out all the vc-sm-cma stuff, merge that into
> the downstream kernel and take the rest of the series on top of
> Laurent's mmal-vchiq changes.

These look great, but due to the dependancy, I can't take them all.

But I can take the first 10, so I did that, they are now queued up,
thanks!

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
