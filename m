Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B53763FF0E0
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Sep 2021 18:13:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BDE95402A7;
	Thu,  2 Sep 2021 16:13:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sMC3OJdXzRVY; Thu,  2 Sep 2021 16:13:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D704E40237;
	Thu,  2 Sep 2021 16:13:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AF04D1BF4E6
 for <devel@linuxdriverproject.org>; Thu,  2 Sep 2021 16:11:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9E8C4425EB
 for <devel@linuxdriverproject.org>; Thu,  2 Sep 2021 16:11:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IdDCYNwn7Cql for <devel@linuxdriverproject.org>;
 Thu,  2 Sep 2021 16:11:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A83ED425E5
 for <devel@driverdev.osuosl.org>; Thu,  2 Sep 2021 16:11:08 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A9F3D61211;
 Thu,  2 Sep 2021 16:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1630599068;
 bh=1SIgbTHl3TWh3Oz1ABpRYB4HoSLhHO7T9v0BsHWdffk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p+A9q1wMeQDYnwBdBT1oZ62NIsS6cwi1tl6nk984SOmSA5s2MiLiSuLsG47NfV+dS
 zoUwlLbJgEDm0s3wSgh90YHacDq7j96FEIgUIr7qvhVVtccCTv4hZAxpdcjUOiNFtf
 UghD9TFbdc6uNESnX5KfF5GhwL3Wl2Giu9qDaMZY=
Date: Thu, 2 Sep 2021 18:11:05 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Todd Kjos <tkjos@google.com>
Subject: Re: [PATCH] binder: make sure fd closes complete
Message-ID: <YTD3maFb22LIsh/U@kroah.com>
References: <20210830195146.587206-1-tkjos@google.com>
 <CAB0TPYFmUgPTONABLTJAdonK7fY7oqURKCpLp1-WqHLtyen7Zw@mail.gmail.com>
 <CAHRSSExONtUFu0Mb8uJeVKcyDYb8=1PO7a=aQ=DUEpA5kAcTQA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHRSSExONtUFu0Mb8uJeVKcyDYb8=1PO7a=aQ=DUEpA5kAcTQA@mail.gmail.com>
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
 Martijn Coenen <maco@google.com>, Joel Fernandes <joel@joelfernandes.org>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 02, 2021 at 08:35:35AM -0700, Todd Kjos wrote:
> On Tue, Aug 31, 2021 at 12:24 AM Martijn Coenen <maco@android.com> wrote:
> >
> > On Mon, Aug 30, 2021 at 9:51 PM 'Todd Kjos' via kernel-team
> > <kernel-team@android.com> wrote:
> > >
> > > During BC_FREE_BUFFER processing, the BINDER_TYPE_FDA object
> > > cleanup may close 1 or more fds. The close operations are
> > > completed using the task work mechanism -- which means the thread
> > > needs to return to userspace or the file object may never be
> > > dereferenced -- which can lead to hung processes.
> > >
> > > Force the binder thread back to userspace if an fd is closed during
> > > BC_FREE_BUFFER handling.
> > >
> > > Signed-off-by: Todd Kjos <tkjos@google.com>
> > Reviewed-by: Martijn Coenen <maco@android.com>
> 
> Please also add to stable releases 5.4 and later.

I'll try to remember to tag this as-such after 5.15-rc1 is out and I can
apply it to my tree.  But in the future, it's best if you add the cc:
stable to the patch yourself so I don't have to do it "by hand" after
the fact.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
