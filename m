Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C173513CB
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Apr 2021 12:42:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3949084A42;
	Thu,  1 Apr 2021 10:42:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V-OGGmtLBaVa; Thu,  1 Apr 2021 10:42:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 86F9584A0E;
	Thu,  1 Apr 2021 10:42:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1A8741BF38B
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 10:42:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 08B3184A0E
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 10:42:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vsl6tJfQLF7W for <devel@linuxdriverproject.org>;
 Thu,  1 Apr 2021 10:42:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9539E84A03
 for <devel@driverdev.osuosl.org>; Thu,  1 Apr 2021 10:42:19 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7912060FEA;
 Thu,  1 Apr 2021 10:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1617273738;
 bh=ivyxGcntTg0MLgIUbYonsE4bzKVNII7gy4+mFXP/MX0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wmRhrYsSkLwWL9wFaT/ay5EtNMKr+BEmGf7tHJNk365Vqlx6j36bGvQfLaW8w4tTB
 nwn+51a4HcfgVmAm72PRj1duigwVYKixKJn9xq+Q5xYMt8XM2pGvCS7plI7uPxg+HQ
 n+dpWM/sdeb3KHNR6SWTrUONBqLNnQJQxtv/pfPE=
Date: Thu, 1 Apr 2021 12:42:15 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Yongji Xie <xieyongji@bytedance.com>
Subject: Re: Re: [PATCH 2/2] binder: Use receive_fd() to receive file from
 another process
Message-ID: <YGWjh7qCJ8HJpFxv@kroah.com>
References: <20210401090932.121-1-xieyongji@bytedance.com>
 <20210401090932.121-3-xieyongji@bytedance.com>
 <YGWYZYbBzglUCxB2@kroah.com>
 <CACycT3ux9NVu_L=Vse7v-xbwE-K0-HT-e-Ei=yHOQmF66nGjeQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACycT3ux9NVu_L=Vse7v-xbwE-K0-HT-e-Ei=yHOQmF66nGjeQ@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com,
 Kees Cook <keescook@chromium.org>, maco@android.com,
 Jason Wang <jasowang@redhat.com>, joel@joelfernandes.org,
 Christoph Hellwig <hch@infradead.org>, Hridya Valsaraju <hridya@google.com>,
 arve@android.com, viro@zeniv.linux.org.uk, Sargun Dhillon <sargun@sargun.me>,
 linux-fsdevel@vger.kernel.org,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Suren Baghdasaryan <surenb@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Apr 01, 2021 at 06:12:51PM +0800, Yongji Xie wrote:
> On Thu, Apr 1, 2021 at 5:54 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > On Thu, Apr 01, 2021 at 05:09:32PM +0800, Xie Yongji wrote:
> > > Use receive_fd() to receive file from another process instead of
> > > combination of get_unused_fd_flags() and fd_install(). This simplifies
> > > the logic and also makes sure we don't miss any security stuff.
> >
> > But no logic is simplified here, and nothing is "missed", so I do not
> > understand this change at all.
> >
> 
> I noticed that we have security_binder_transfer_file() when we
> transfer some fds. I'm not sure whether we need something like
> security_file_receive() here?

Why would you?  And where is "here"?

still confused,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
