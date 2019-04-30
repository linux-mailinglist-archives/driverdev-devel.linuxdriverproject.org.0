Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0571AF967
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Apr 2019 15:00:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C1CFC85E93;
	Tue, 30 Apr 2019 13:00:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wQAn7drPhq_Z; Tue, 30 Apr 2019 13:00:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0933885143;
	Tue, 30 Apr 2019 13:00:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EB4421BF293
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 13:00:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E857684F98
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 13:00:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NUQZp-jUO8WK for <devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 13:00:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3CE5F84845
 for <devel@driverdev.osuosl.org>; Tue, 30 Apr 2019 13:00:25 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9370121670;
 Tue, 30 Apr 2019 13:00:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556629225;
 bh=6uyo25WyDxBB8idcqXt73kqZXjeBFFDDZvVdaT5bDMo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Wel7tJuOeiyFnNUE3BPYWvgK9s8ruu2/VD+nDgGsh+EsOXnnm95LB0h/cAUEwXQFY
 MnWzOly0L5CudBtd68+KHPcjGiRz1EDNdInSGLmKUJ/1AU4E0oNs1u1MEHdmhAN5Md
 midzc5ngvzeBG1Waf+MFTp4fCE20h5SEnFVTklbQ=
Date: Tue, 30 Apr 2019 15:00:22 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatsala Narang <vatsalanarang@gmail.com>
Subject: Re: [PATCH] staging: vc04_services: bcm2835-camera: Modify return
 statement.
Message-ID: <20190430130022.GA4565@kroah.com>
References: <20190429073658.32009-1-vatsalanarang@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190429073658.32009-1-vatsalanarang@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: stefan.wahren@i2se.com, devel@driverdev.osuosl.org, f.fainelli@gmail.com,
 sbranden@broadcom.com, eric@anholt.net, rjui@broadcom.com,
 linux-kernel@vger.kernel.org, julia.lawall@lip6.fr,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Apr 29, 2019 at 01:06:58PM +0530, Vatsala Narang wrote:
> Modify return statement and remove the respective assignment.
> 
> Issue found by coccinelle.
> 
> Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
> ---
>  drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

You sent two different patches that did different things with the same
exact subject: line :(

Please make them more unique.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
