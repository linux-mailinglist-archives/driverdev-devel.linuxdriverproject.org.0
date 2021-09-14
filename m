Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8251640A703
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Sep 2021 09:02:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7F4CF4033D;
	Tue, 14 Sep 2021 07:02:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U-XvEcy3Rgi9; Tue, 14 Sep 2021 07:01:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 53E9540215;
	Tue, 14 Sep 2021 07:01:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ABF441BF31B
 for <devel@linuxdriverproject.org>; Tue, 14 Sep 2021 07:01:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9AE494023F
 for <devel@linuxdriverproject.org>; Tue, 14 Sep 2021 07:01:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OM4cTDXnXZge for <devel@linuxdriverproject.org>;
 Tue, 14 Sep 2021 07:01:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5A3984023D
 for <devel@driverdev.osuosl.org>; Tue, 14 Sep 2021 07:01:46 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6FB46604AC;
 Tue, 14 Sep 2021 07:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1631602905;
 bh=Zb+voASq3Qg2txFsgmexeKqywne8/1IybgvG7QZQMFQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=I8k5IDN7xvjaEbxYQSsN4ZqLVuoCL86UVLYfaAQg9o6PNQDmBCIl2bZ+WeH5aBLHF
 JEW2mIPQz9d/Fw9bXdbdKjnnq/owUhQCFK9Adc1aqgMGHXVJzwGXyqELrmXfT6qZao
 TxTYzsCHHgjVK5FuMpNwViLyr7I7yEigmI24kS5A=
Date: Tue, 14 Sep 2021 09:01:43 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Todd Kjos <tkjos@google.com>
Subject: Re: [PATCH] binder: make sure fd closes complete
Message-ID: <YUBI1wmzXpJCH3ZS@kroah.com>
References: <20210830195146.587206-1-tkjos@google.com>
 <CAB0TPYFmUgPTONABLTJAdonK7fY7oqURKCpLp1-WqHLtyen7Zw@mail.gmail.com>
 <CAHRSSExONtUFu0Mb8uJeVKcyDYb8=1PO7a=aQ=DUEpA5kAcTQA@mail.gmail.com>
 <20210903080617.GA1957@kadam>
 <CAHRSSEyDDmGRrc_paxJ2-Gkx=qMhKKhTr_Mpj-DiL8L1gcm5VA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHRSSEyDDmGRrc_paxJ2-Gkx=qMhKKhTr_Mpj-DiL8L1gcm5VA@mail.gmail.com>
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 kernel-team@android.com, LKML <linux-kernel@vger.kernel.org>,
 stable <stable@vger.kernel.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Martijn Coenen <maco@google.com>, Christian Brauner <christian@brauner.io>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Sep 03, 2021 at 12:38:26PM -0700, Todd Kjos wrote:
> On Fri, Sep 3, 2021 at 1:06 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> >
> > On Thu, Sep 02, 2021 at 08:35:35AM -0700, Todd Kjos wrote:
> > > On Tue, Aug 31, 2021 at 12:24 AM Martijn Coenen <maco@android.com> wrote:
> > > >
> > > > On Mon, Aug 30, 2021 at 9:51 PM 'Todd Kjos' via kernel-team
> > > > <kernel-team@android.com> wrote:
> > > > >
> > > > > During BC_FREE_BUFFER processing, the BINDER_TYPE_FDA object
> > > > > cleanup may close 1 or more fds. The close operations are
> > > > > completed using the task work mechanism -- which means the thread
> > > > > needs to return to userspace or the file object may never be
> > > > > dereferenced -- which can lead to hung processes.
> > > > >
> > > > > Force the binder thread back to userspace if an fd is closed during
> > > > > BC_FREE_BUFFER handling.
> > > > >
> > > > > Signed-off-by: Todd Kjos <tkjos@google.com>
> > > > Reviewed-by: Martijn Coenen <maco@android.com>
> > >
> > > Please also add to stable releases 5.4 and later.
> >
> > It would be better if this had a fixes tag so we knew which is the first
> > buggy commit.
> >
> > There was a long Project Zero article about the Bad Binder exploit
> > because commit f5cb779ba163 ("ANDROID: binder: remove waitqueue when
> > thread exits.") was marked as # 4.14 but it didn't have a Fixes tag and
> > the actual buggy commit was in 4.9.
> 
> Good point Dan. I should have included a Fixes tag. Here is the tag
> (issue introduced in 4.20):
> 
> Fixes: 80cd795630d6 ("binder: fix use-after-free due to ksys_close()
> during fdget()")
> 
> Greg- would you like me to send a v2 with the Fixes tag and CC'ing
> stable appropriately?

I've added it to the commit when I added it to my tree, no need to
resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
