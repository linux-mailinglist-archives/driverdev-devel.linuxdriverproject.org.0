Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C85F24A89
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 10:37:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C288886388;
	Tue, 21 May 2019 08:37:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sZK1lc1bswT9; Tue, 21 May 2019 08:37:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5F34184031;
	Tue, 21 May 2019 08:37:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9A8631BF2C8
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 08:37:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 94D1085B99
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 08:37:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NK1RLQPHn8si for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 08:37:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DF181858B3
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 08:37:44 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 38CE22173C;
 Tue, 21 May 2019 08:37:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558427864;
 bh=ussXCeZ6dv3DWmQB6c92Fh60bgzOuEGA2916Huk7U+s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ffqj7BJzMyEaqlwrbbPjsng9HWeqc2Vq5y3ibFT9cJOFB2Jp9uJMG9NI1CWTwOin3
 AYmj5NH2vpxmeTmMNDZ5oiBQQgKRaF95H0YaOsqpqBUYYfUesQdMkf8cNdhgOk2Yzg
 fghgsr3ZxRGnh3JRyLl7Rup3IBwJ5AsVDyjxRnoE=
Date: Tue, 21 May 2019 10:37:42 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Geordan Neukum <gneukum1@gmail.com>
Subject: Re: [PATCH 0/5] Updates to staging driver: kpc_i2c
Message-ID: <20190521083742.GA7644@kroah.com>
References: <cover.1558146549.git.gneukum1@gmail.com>
 <20190520083026.GA13877@kroah.com>
 <CA+T6rvENoDXbUWEi4C5kXxsdamkZKVP19MwzEuxs0qC=ckMyeQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+T6rvENoDXbUWEi4C5kXxsdamkZKVP19MwzEuxs0qC=ckMyeQ@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 21, 2019 at 08:15:52AM +0000, Geordan Neukum wrote:
> On Mon, May 20, 2019 at 10:30:26AM +0200, Greg Kroah-Hartman wrote:
> > On Sat, May 18, 2019 at 02:29:55AM +0000, Geordan Neukum wrote:
> > > Attached are an assortment of updates to the kpc_i2c driver in the
> > > staging subtree.
> >
> > All now queued up.  I'll rebase my patches that move this file on top of
> > yours, as kbuild found some problems with mine, and I'll resend them to
> > the list.
> >
> Thanks.
> 
> Additionally, I plan on trying to clean up that driver a bit more. Should I
> base my future patches off of the staging tree so that I'll have the
> "latest" driver as my basepoint? I don't want to cause any headaches
> for anyone in the future.

Yes, please do so.  Please work off of either the staging-next or even
better, staging-testing as that contains the latest patches.  I apply
patches to the -testing branch first, and if that passes the 0-day bot,
I then merge them to -next.

Given that there are a lot of people working on this codebase right now
(as it needs so much obvious work), I would recommend using -next and
getting used to rebasing your changes :)

I take patches as they are submitted, so sometimes people do step on
each other's toes, that's normal.  But I think you are the only one
touching the i2c driver at the moment so it shouldn't be that bad.

> Apologies, if I missed something obvious on the newbies wiki.
> Assuming that I did not, I will certainly go ahead and try to document
> this case either on or as a link from the "sending your first patch"
> page.

This is beyond the "first patch" work, this is now in the "being an
active developer" workflow :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
