Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 523CE351480
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Apr 2021 13:33:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2AB7840567;
	Thu,  1 Apr 2021 11:33:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eyJDnXaMC4hD; Thu,  1 Apr 2021 11:33:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 882BB40554;
	Thu,  1 Apr 2021 11:33:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A55181BF38B
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 11:33:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8C10F40E92
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 11:33:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3TwQAjx2dhvi for <devel@linuxdriverproject.org>;
 Thu,  1 Apr 2021 11:33:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5937640E60
 for <devel@driverdev.osuosl.org>; Thu,  1 Apr 2021 11:33:06 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id BCF4F601FA;
 Thu,  1 Apr 2021 11:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1617276783;
 bh=5KMvA2+X56eTd5dyjjLD2hU0fGFm3/24CWsHPBvQ+Ig=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IBITasZ585a0W5dpATNVyHV+ozpDXKXjXXMpkscA6BRtiWbghKY/NvT30kNN9bfD4
 ecM/TbWMQwY0kbqKVGThvO5+T+13qJJWC/iP1GkSM+6VF8nQhvphmODIoOBObxMhqS
 kc8OIVsr1+YSIk6sakFY9eWRmDv3Eo21Gnz0gRTE=
Date: Thu, 1 Apr 2021 13:33:00 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Yongji Xie <xieyongji@bytedance.com>
Subject: Re: Re: Re: [PATCH 2/2] binder: Use receive_fd() to receive file
 from another process
Message-ID: <YGWvbAXQO2Vsiupo@kroah.com>
References: <20210401090932.121-1-xieyongji@bytedance.com>
 <20210401090932.121-3-xieyongji@bytedance.com>
 <YGWYZYbBzglUCxB2@kroah.com>
 <CACycT3ux9NVu_L=Vse7v-xbwE-K0-HT-e-Ei=yHOQmF66nGjeQ@mail.gmail.com>
 <YGWjh7qCJ8HJpFxv@kroah.com>
 <CACycT3uEGRiDuOj2XBwF2PmnGXsQgrLDemJDFRytsJiJMyRWDw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACycT3uEGRiDuOj2XBwF2PmnGXsQgrLDemJDFRytsJiJMyRWDw@mail.gmail.com>
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

On Thu, Apr 01, 2021 at 07:29:45PM +0800, Yongji Xie wrote:
> On Thu, Apr 1, 2021 at 6:42 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > On Thu, Apr 01, 2021 at 06:12:51PM +0800, Yongji Xie wrote:
> > > On Thu, Apr 1, 2021 at 5:54 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> > > >
> > > > On Thu, Apr 01, 2021 at 05:09:32PM +0800, Xie Yongji wrote:
> > > > > Use receive_fd() to receive file from another process instead of
> > > > > combination of get_unused_fd_flags() and fd_install(). This simplifies
> > > > > the logic and also makes sure we don't miss any security stuff.
> > > >
> > > > But no logic is simplified here, and nothing is "missed", so I do not
> > > > understand this change at all.
> > > >
> > >
> > > I noticed that we have security_binder_transfer_file() when we
> > > transfer some fds. I'm not sure whether we need something like
> > > security_file_receive() here?
> >
> > Why would you?  And where is "here"?
> >
> > still confused,
> >
> 
> I mean do we need to go through the file_receive seccomp notifier when
> we receive fd (use get_unused_fd_flags() + fd_install now) from
> another process in binder_apply_fd_fixups().

Why?  this is internal things, why does seccomp come into play here?

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
