Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC3E23E87F
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Aug 2020 10:04:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 49884888AE;
	Fri,  7 Aug 2020 08:04:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wD5wsOIiIqrJ; Fri,  7 Aug 2020 08:04:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 73579886D6;
	Fri,  7 Aug 2020 08:04:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BE4CA1BF3A7
 for <devel@linuxdriverproject.org>; Fri,  7 Aug 2020 08:04:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BAFAC8723D
 for <devel@linuxdriverproject.org>; Fri,  7 Aug 2020 08:04:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JBM3R8P-WdvD for <devel@linuxdriverproject.org>;
 Fri,  7 Aug 2020 08:04:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4D6468723B
 for <devel@driverdev.osuosl.org>; Fri,  7 Aug 2020 08:04:50 +0000 (UTC)
Received: from coco.lan (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AF2E920866;
 Fri,  7 Aug 2020 08:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596787490;
 bh=PE3k/C4w0OpdhoKq/qH5cL2MHvqVFxiNXKGphsCSR3I=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=GMWiDkuPkCo8gphXIDxriyWGWPFKzP6ZFxOHSo9w0dCBmJ/iPiH1ORwkrR7eTfmPg
 AyqSC3JL9VczcfAZVjiM1+/XdE4V3vPvLO3yfXRtHaq9F8FXkDqsRxn1s4JKc4cziW
 +nanfhdS9TzT1SDzIZ8ITkinchr2WHybb1tI4NFM=
Date: Fri, 7 Aug 2020 10:04:44 +0200
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Nicolas Boichat <drinkcat@chromium.org>
Subject: Re: [RESEND PATCH] media: atomisp: Replace trace_printk by pr_info
Message-ID: <20200807100444.0f2d3c94@coco.lan>
In-Reply-To: <CANMq1KD_hJ_ST3du7dcSd8GBtdL4d-C1pWbxXz8Wu8w79-2fUg@mail.gmail.com>
References: <20200710144520.RESEND.1.Id0f52f486e277b5af30babac8ba6b09589962a68@changeid>
 <20200710070332.GA1175842@kroah.com>
 <CANMq1KDcKWgyYYP_m0-WV7602g7zUbU0PPkvwXxbSTF5vFfKGQ@mail.gmail.com>
 <CANMq1KC7CgUT+neoOUZbnr8MbDgqEikqt2vn8dxAS1rpX=C2aA@mail.gmail.com>
 <20200807062809.GB979264@kroah.com>
 <CANMq1KD_hJ_ST3du7dcSd8GBtdL4d-C1pWbxXz8Wu8w79-2fUg@mail.gmail.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 lkml <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Fri, 7 Aug 2020 14:51:12 +0800
Nicolas Boichat <drinkcat@chromium.org> escreveu:

> On Fri, Aug 7, 2020 at 2:28 PM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > On Fri, Aug 07, 2020 at 09:50:23AM +0800, Nicolas Boichat wrote:  
> > > On Fri, Jul 24, 2020 at 8:41 PM Nicolas Boichat <drinkcat@chromium.org> wrote:  
> > > >
> > > > On Fri, Jul 10, 2020 at 3:03 PM Greg Kroah-Hartman
> > > > <gregkh@linuxfoundation.org> wrote:  
> > > > >
> > > > > On Fri, Jul 10, 2020 at 02:45:29PM +0800, Nicolas Boichat wrote:  
> > > > > > trace_printk should not be used in production code, replace it
> > > > > > call with pr_info.
> > > > > >
> > > > > > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> > > > > > ---
> > > > > > Sent this before as part of a series (whose 4th patch was a
> > > > > > change that allows to detect such trace_printk), but maybe it's
> > > > > > easier to get individual maintainer attention by splitting it.  
> > > > >
> > > > > Mauro should take this soon:
> > > > >
> > > > > Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>  
> > > >
> > > > Mauro: did you get a chance to look at this? (and the other similar
> > > > patch "media: camss: vfe: Use trace_printk for debugging only")  
> > >
> > > Mauro: Another gentle ping. Thanks.  
> >
> > It's the middle of the merge window, maintainers can't do anything until
> > after 5.9-rc1 is out, sorry.  
> 
> Huh, wait, looks like Mauro _did_ pick it (found it in this email
> "[GIT PULL for v5.8-rc7] media fixes").
> 
> My bad then, I was expecting an ack ,-)

Never expect acks. Kernel maintainers usually don't send them.

Yet, in the case of media, you should probably have received
an automatic e-mail from our patchwork instance.

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
