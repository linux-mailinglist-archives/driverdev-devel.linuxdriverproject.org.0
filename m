Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5D435158E
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Apr 2021 16:10:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B862384A9A;
	Thu,  1 Apr 2021 14:10:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IQGVGH4wnMjD; Thu,  1 Apr 2021 14:10:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 16A6F84A6B;
	Thu,  1 Apr 2021 14:10:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 079841BF46A
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 14:10:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F3F7240E9D
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 14:10:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2cZLSAANbWRU for <devel@linuxdriverproject.org>;
 Thu,  1 Apr 2021 14:10:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 36E6540E65
 for <devel@driverdev.osuosl.org>; Thu,  1 Apr 2021 14:10:00 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 20FED61288;
 Thu,  1 Apr 2021 14:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1617286199;
 bh=TDLUzw4MMzO7aDwvC0yr2aYJe8IBkudM8ks/SAnPVIc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MAvctnmQJ8sDD1P6uOlOyiAJUW9AvADDffHo+VPZb/uxh1DjdwcnfKEUSNLlHhUMi
 RgQZTeyhmQTAfSzZIpphgOwA34new/QxvN1BkuNTAN09X/4+p0e+OV8giLPwou3M2Q
 h8gONp/2xpYqb9vsrm0I+5LXw0N32mujvOzuOQ3Y=
Date: Thu, 1 Apr 2021 16:09:57 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Yongji Xie <xieyongji@bytedance.com>
Subject: Re: Re: Re: Re: [PATCH 2/2] binder: Use receive_fd() to receive file
 from another process
Message-ID: <YGXUNfsExs6tZD0c@kroah.com>
References: <20210401090932.121-1-xieyongji@bytedance.com>
 <20210401090932.121-3-xieyongji@bytedance.com>
 <YGWYZYbBzglUCxB2@kroah.com>
 <CACycT3ux9NVu_L=Vse7v-xbwE-K0-HT-e-Ei=yHOQmF66nGjeQ@mail.gmail.com>
 <YGWjh7qCJ8HJpFxv@kroah.com>
 <CACycT3uEGRiDuOj2XBwF2PmnGXsQgrLDemJDFRytsJiJMyRWDw@mail.gmail.com>
 <YGWvbAXQO2Vsiupo@kroah.com>
 <CACycT3vNaDg5twEpKtnZTjbyD=0FhZKJLzH+uBNQuyCmxFaeww@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACycT3vNaDg5twEpKtnZTjbyD=0FhZKJLzH+uBNQuyCmxFaeww@mail.gmail.com>
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
 Kees Cook <keescook@chromium.org>, Suren Baghdasaryan <surenb@google.com>,
 Jason Wang <jasowang@redhat.com>, Sargun Dhillon <sargun@sargun.me>,
 Christoph Hellwig <hch@infradead.org>, Hridya Valsaraju <hridya@google.com>,
 arve@android.com, viro@zeniv.linux.org.uk, joel@joelfernandes.org,
 linux-fsdevel@vger.kernel.org,
 Christian Brauner <christian.brauner@ubuntu.com>, maco@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Apr 01, 2021 at 08:28:02PM +0800, Yongji Xie wrote:
> On Thu, Apr 1, 2021 at 7:33 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > On Thu, Apr 01, 2021 at 07:29:45PM +0800, Yongji Xie wrote:
> > > On Thu, Apr 1, 2021 at 6:42 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> > > >
> > > > On Thu, Apr 01, 2021 at 06:12:51PM +0800, Yongji Xie wrote:
> > > > > On Thu, Apr 1, 2021 at 5:54 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> > > > > >
> > > > > > On Thu, Apr 01, 2021 at 05:09:32PM +0800, Xie Yongji wrote:
> > > > > > > Use receive_fd() to receive file from another process instead of
> > > > > > > combination of get_unused_fd_flags() and fd_install(). This simplifies
> > > > > > > the logic and also makes sure we don't miss any security stuff.
> > > > > >
> > > > > > But no logic is simplified here, and nothing is "missed", so I do not
> > > > > > understand this change at all.
> > > > > >
> > > > >
> > > > > I noticed that we have security_binder_transfer_file() when we
> > > > > transfer some fds. I'm not sure whether we need something like
> > > > > security_file_receive() here?
> > > >
> > > > Why would you?  And where is "here"?
> > > >
> > > > still confused,
> > > >
> > >
> > > I mean do we need to go through the file_receive seccomp notifier when
> > > we receive fd (use get_unused_fd_flags() + fd_install now) from
> > > another process in binder_apply_fd_fixups().
> >
> > Why?  this is internal things, why does seccomp come into play here?
> >
> 
> We already have security_binder_transfer_file() to control the sender
> process. So for the receiver process, do we need the seccomp too? Or
> do I miss something here?

I do not know, is this something that is a requirement that seccomp
handle all filesystem handles sent to a process?  I do not know the
seccomp "guarantee" that well, sorry.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
