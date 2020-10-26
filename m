Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA832986A4
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Oct 2020 06:56:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 609398634C;
	Mon, 26 Oct 2020 05:56:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZKCNsVZarVLF; Mon, 26 Oct 2020 05:56:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 624DA860C1;
	Mon, 26 Oct 2020 05:56:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 606571BF2C4
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 05:56:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 584912D3FC
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 05:56:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2yPrZlyVZpdu for <devel@linuxdriverproject.org>;
 Mon, 26 Oct 2020 05:56:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id B626727515
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 05:56:49 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9CE6822247;
 Mon, 26 Oct 2020 05:56:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603691809;
 bh=68L4RzffTGlRheVxmrno1nftMutervn0FgxBx87UdGs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ycLePGxeJm5aIaVBee6QuXxcmKkn0QeZp6bPdwrYCpafjS/UkN48IAnZ/7qAHLlzd
 KFqUCJs38sGr5jKOO4OJ7tZrkWplnEWhINlWOANRV1lbis88O4kIaWPe4piXP4LtoA
 Q+HtMyNWeI0nISta+F7ZsWn13O+NbV7g2xOPlXfs=
Date: Mon, 26 Oct 2020 06:57:17 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Deepak R Varma <mh12gx2825@gmail.com>
Subject: Re: [PATCH v2 1/2] staging: kpc2000: kpc_dma: rearrange lines
 exceeding 100 columns
Message-ID: <20201026055717.GB779791@kroah.com>
References: <c61a3c244bea516528e9ca4e909c30f16959c3aa.1603264617.git.mh12gx2825@gmail.com>
 <20201026040453.GC5074@my--box>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201026040453.GC5074@my--box>
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 26, 2020 at 09:34:53AM +0530, Deepak R Varma wrote:
> On Wed, Oct 21, 2020 at 01:01:07PM +0530, Deepak R Varma wrote:
> 
> Hello,
> Requesting a review / ack of this patch.

As I said in my previous email, to the outreachy list, if I have not
applied something, it needs to be resent, if you still think it is
needed.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
