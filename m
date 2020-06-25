Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9319C20A0E5
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jun 2020 16:34:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 06E15868FE;
	Thu, 25 Jun 2020 14:34:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U4oMu2ZdDaZr; Thu, 25 Jun 2020 14:34:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B115A868C9;
	Thu, 25 Jun 2020 14:34:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 92BA41BF41C
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 14:34:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8F81B868CE
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 14:34:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3IwNsaF06FDr for <devel@linuxdriverproject.org>;
 Thu, 25 Jun 2020 14:34:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1ED20868C9
 for <devel@driverdev.osuosl.org>; Thu, 25 Jun 2020 14:34:35 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5D80E20767;
 Thu, 25 Jun 2020 14:34:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593095674;
 bh=V1/9Cp9cSTTz+XY27botGdBPhCCehM3RoZuzCXJ/j3A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yBuUsZJZbgq0vPFFBZMWiWlVLzW/Emt0078tSAKvMEZuxHSjHl1xl0IqcgYxsCx5S
 fRB5o25JFGzAc9G0vx8K51i8NwB9CJ+bbRPTMeCbelsYUD/wpOIkejwrrqJ38R+13k
 CDDbw1MULh1jhgdLpO2d0bQtPlYTUsTmtCr97pDE=
Date: Thu, 25 Jun 2020 16:34:30 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH 00/50] staging: vchiq: Getting rid of the vchi/vchiq split
Message-ID: <20200625143430.GA3898215@kroah.com>
References: <20200623164235.29566-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200623164235.29566-1-nsaenzjulienne@suse.de>
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
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, laurent.pinchart@ideasonboard.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jun 23, 2020 at 06:41:46PM +0200, Nicolas Saenz Julienne wrote:
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
> Overall this fall short of removing 1100 lines of code, which is pretty
> neat on itself.
> 
> So far it has been tested trough bcm2835-camera, audio and vchiq-test. I
> can't do much about vc-sm-cma for now as it's only available downstream,
> but I made sure not to break anything and will provide some patches for
> the RPi devs to pick-up, so as to make their life easier.
> 
> Note that in order to keep the divergence between the downstream and
> upstream versions of this as small as possible I picked up some
> mmal-vchiq patches that might not be absolutely necessary to the goal of
> the series.

I took the first 2 patches and will wait for the rest to be resent :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
