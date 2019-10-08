Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 21BB6CFD53
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 17:15:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9A33884ABB;
	Tue,  8 Oct 2019 15:15:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kChUf9skWyOr; Tue,  8 Oct 2019 15:15:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 736C1847A7;
	Tue,  8 Oct 2019 15:15:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5471B1BF2EA
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 15:15:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4F0D285BB9
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 15:15:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TF9-brCkmQNw for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 15:15:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B932885A70
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 15:15:51 +0000 (UTC)
Received: from localhost (unknown [89.205.136.99])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E17ED20679;
 Tue,  8 Oct 2019 15:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570547751;
 bh=14pGX9PvbF+akybdQEtzMfsaYMZBPxv3t73fc4rSR1c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dD0f4/Z5w+0yDxR21yp+DBWrDToCk0WdffreftjEXgmXWBmbOGKpMREZAX8+0CUC5
 v2DPKAbAyvHTJyNq4Kw8+v/wgKwA8I5FELERJD97xvmb4FEYc2TvWQHc2zquFVl923
 G5CZH3Bgwdd2iA2v4L7suNTZzttz8DbGtJ90luLc=
Date: Tue, 8 Oct 2019 17:15:47 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: vchiq: don't leak kernel address
Message-ID: <20191008151547.GA2864822@kroah.com>
References: <20191008123346.3931-1-mcroce@redhat.com>
 <20191008131518.GH25098@kadam>
 <CAGnkfhxefH+3YKDWQMCOYoj1skcq6rUmHuiHZQ-76YixFqbQjg@mail.gmail.com>
 <20191008142517.GO21515@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191008142517.GO21515@kadam>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, LKML <linux-kernel@vger.kernel.org>,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Matteo Croce <mcroce@redhat.com>,
 Stefan Wahren <wahrenst@gmx.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 08, 2019 at 05:25:17PM +0300, Dan Carpenter wrote:
> On Tue, Oct 08, 2019 at 04:21:54PM +0200, Matteo Croce wrote:
> > On Tue, Oct 8, 2019 at 3:16 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> > >
> > > The subject doesn't match the patch.  It should just be "remove useless
> > > printk".
> > >
> > > regards,
> > > dan carpenter
> > >
> > 
> > Well, it avoids leaking an address by removing an useless printk.
> > It seems that GKH already picked the patch in his staging tree, but
> > I'm fine with both subjects, really,
> 
> The address wasn't leaked because it was already %pK.  The subject
> says there is an info leak security problem, when the opposite is true.

I've edited the subject line now.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
