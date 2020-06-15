Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B3D1F96A0
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jun 2020 14:35:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9F97A86DCC;
	Mon, 15 Jun 2020 12:34:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g4LKFOQw01VP; Mon, 15 Jun 2020 12:34:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8EEBD86C67;
	Mon, 15 Jun 2020 12:34:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A3C6E1BF420
 for <devel@linuxdriverproject.org>; Mon, 15 Jun 2020 12:34:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9FFF786DCB
 for <devel@linuxdriverproject.org>; Mon, 15 Jun 2020 12:34:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Te-sIEqdChHs for <devel@linuxdriverproject.org>;
 Mon, 15 Jun 2020 12:34:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7099386C67
 for <devel@driverdev.osuosl.org>; Mon, 15 Jun 2020 12:34:52 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A97A02076A;
 Mon, 15 Jun 2020 12:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592224492;
 bh=pNOetLVtZRG2fbCc3C2vy0lTqxav4Zkaq+VhJKAi9xs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bYQoNejN7Wl6z1zgAQEittcbfoy14EFCmsV9ZNIch7IpLkTEorON1IXETisNTSpbJ
 /46VDugqsbns3ihaOeFhTIp7Hd5u91327GzSjt/ysVzrtnvA3VuUhyR1wYnmo2ogaK
 qUTn21WrXp9UzkJC1xE7ZZKqkvsGGGAipgCioVCs=
Date: Mon, 15 Jun 2020 14:34:39 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Ricardo Ferreira <rikajff@gmail.com>
Subject: Re: [PATCH] Staging: rtl8712: Addressed checkpatch.pl issues related
 to macro parameter wrapping in parentheses.
Message-ID: <20200615123439.GB943330@kroah.com>
References: <20200614135125.19502-1-rikajff@gmail.com>
 <20200614140531.GA2661398@kroah.com>
 <CACtES-qmpRJ2mk+1vhsJm55G6j6U1+rLB1t2izHwJ1u4_eUKHw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACtES-qmpRJ2mk+1vhsJm55G6j6U1+rLB1t2izHwJ1u4_eUKHw@mail.gmail.com>
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
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jun 15, 2020 at 10:28:51AM +0100, Ricardo Ferreira wrote:
> On Sun, 14 Jun 2020 at 15:05, Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > On Sun, Jun 14, 2020 at 02:51:25PM +0100, Ricardo Ferreira wrote:
> > >  #define init_h2fwcmd_w_parm_no_rsp(pcmd, pparm, code) \
> > >  do {\
> > > -     INIT_LIST_HEAD(&pcmd->list);\
> > > -     pcmd->cmdcode = code;\
> > > -     pcmd->parmbuf = (u8 *)(pparm);\
> > > -     pcmd->cmdsz = sizeof(*pparm);\
> > > -     pcmd->rsp = NULL;\
> > > -     pcmd->rspsz = 0;\
> > > +     INIT_LIST_HEAD(&(pcmd)->list);\
> > > +     (pcmd)->cmdcode = code;\
> > > +     (pcmd)->parmbuf = (u8 *)((pparm));\
> > > +     (pcmd)->cmdsz = sizeof(*(pparm));\
> > > +     (pcmd)->rsp = NULL;\
> > > +     (pcmd)->rspsz = 0;\
> > >  } while (0)
> >
> > Does that change really make any sense?  checkpatch is a nice hint,
> > sometimes it is not correct...
> 
> (Replying again since I mistakenly sent my comments only to Greg...)
> 
> Yeah I was over-eager and applied some of checkpatche's patches
> without thinking twice... I guess the parenthesis wrapping only makes
> sense when you have an operator (either binary or unary). I've
> rechecked each macro identified by checkpatch to see if there is a
> need for parenthesis wrapping in their current usage.

Yes, please do that, and also test-build your patches.  Sending patches
that break the build are a sure way to make maintainers grumpy :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
