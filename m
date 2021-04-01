Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A54353514C9
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Apr 2021 14:28:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A79EE84A6D;
	Thu,  1 Apr 2021 12:28:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 145yXzrfMDRJ; Thu,  1 Apr 2021 12:28:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 01A0084A5C;
	Thu,  1 Apr 2021 12:28:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2E4431BF852
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 12:28:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1769640FA2
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 12:28:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=bytedance-com.20150623.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LB0ZiUgWZ8ox for <devel@linuxdriverproject.org>;
 Thu,  1 Apr 2021 12:28:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 76C1D40F97
 for <devel@driverdev.osuosl.org>; Thu,  1 Apr 2021 12:28:15 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id x21so1752400eds.4
 for <devel@driverdev.osuosl.org>; Thu, 01 Apr 2021 05:28:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fhDaOseZ+6YnQA/A1swsQLNYw4MXMhXhVabFMVkbjsA=;
 b=Huc1ofURHM43skrOi931cdfPIghsMc/UJJso8gLcpGYz/BYZJIJFofrkcTCO06yxS/
 Y/nrFId9rEJUUEW6rzoc7EAutYg8Wj0uDJQTDIFw+olxunApDdoizOFQDHP4jE3UUtJH
 TrTDNt2BxKtTOCGJbTVHwEUAbdJuioWYtRARFfilgfKqRlC8jSnSCc5qKlPv7JlojJ8m
 gE/MJC6XP601XHYgUcC7CwK0h5oQsphdiJaY+ORgc86Xy9i/tCIMgGSNj6s5E5tN9Nf4
 xFy6mmr2fr4ST6KL3YVoBZrbWzHgF6S+SHioERYOWOBHQFYos09lJwuZSX2Hw3QgES5M
 3anQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fhDaOseZ+6YnQA/A1swsQLNYw4MXMhXhVabFMVkbjsA=;
 b=EOehYN/l8s/rN6Bia8eLCy6jzS0S/NY9IE2CQfpHchS5itEVe1cpPXvEB7erLGNHxt
 4mt9C0ZEHLN1sQsiCig1oev3JYHXCK8tHKSPzpSN6HefsQ+Qo+5+mWwVUQankOM3MtMh
 SoF2xwzo0V20QushLtkikyoB7++vbK3+VnZelXNhIFoLFKXwCRgafuj3IteiLqY4XlUl
 9e3p/A5NPBhZtbLD+35qCTqy5xzhfaNdMrx3Xv9l3pSPrh/cZMB+2c8Qs6ij8Sa7N3G+
 q/+ke8kxW4/QSpdNaiOu+SnnffDscAQ3a5/cVxbtUg6jGCqDtRXf26PpHnBOfvZaSDEL
 5CfQ==
X-Gm-Message-State: AOAM5309KsmM+x7qFM0IXh0rAkkDcMiVhMISzKaZ/ltXdW01cY/iSU4K
 81O6QuYhcfzYWNfYDNfBK4qx+3wQD5YpM0YfuJL8
X-Google-Smtp-Source: ABdhPJy5wc63iGkmdpqsjqOAfxya/hW3WYIP6tNPKgTBYcPo6Q4Gyz4h8P7GJv9ljRe98jVMVm7NGJxJLm2zypBnC8A=
X-Received: by 2002:aa7:d687:: with SMTP id d7mr9399671edr.118.1617280093796; 
 Thu, 01 Apr 2021 05:28:13 -0700 (PDT)
MIME-Version: 1.0
References: <20210401090932.121-1-xieyongji@bytedance.com>
 <20210401090932.121-3-xieyongji@bytedance.com>
 <YGWYZYbBzglUCxB2@kroah.com>
 <CACycT3ux9NVu_L=Vse7v-xbwE-K0-HT-e-Ei=yHOQmF66nGjeQ@mail.gmail.com>
 <YGWjh7qCJ8HJpFxv@kroah.com>
 <CACycT3uEGRiDuOj2XBwF2PmnGXsQgrLDemJDFRytsJiJMyRWDw@mail.gmail.com>
 <YGWvbAXQO2Vsiupo@kroah.com>
In-Reply-To: <YGWvbAXQO2Vsiupo@kroah.com>
From: Yongji Xie <xieyongji@bytedance.com>
Date: Thu, 1 Apr 2021 20:28:02 +0800
Message-ID: <CACycT3vNaDg5twEpKtnZTjbyD=0FhZKJLzH+uBNQuyCmxFaeww@mail.gmail.com>
Subject: Re: Re: Re: Re: [PATCH 2/2] binder: Use receive_fd() to receive file
 from another process
To: Greg KH <gregkh@linuxfoundation.org>
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

On Thu, Apr 1, 2021 at 7:33 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Thu, Apr 01, 2021 at 07:29:45PM +0800, Yongji Xie wrote:
> > On Thu, Apr 1, 2021 at 6:42 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> > >
> > > On Thu, Apr 01, 2021 at 06:12:51PM +0800, Yongji Xie wrote:
> > > > On Thu, Apr 1, 2021 at 5:54 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> > > > >
> > > > > On Thu, Apr 01, 2021 at 05:09:32PM +0800, Xie Yongji wrote:
> > > > > > Use receive_fd() to receive file from another process instead of
> > > > > > combination of get_unused_fd_flags() and fd_install(). This simplifies
> > > > > > the logic and also makes sure we don't miss any security stuff.
> > > > >
> > > > > But no logic is simplified here, and nothing is "missed", so I do not
> > > > > understand this change at all.
> > > > >
> > > >
> > > > I noticed that we have security_binder_transfer_file() when we
> > > > transfer some fds. I'm not sure whether we need something like
> > > > security_file_receive() here?
> > >
> > > Why would you?  And where is "here"?
> > >
> > > still confused,
> > >
> >
> > I mean do we need to go through the file_receive seccomp notifier when
> > we receive fd (use get_unused_fd_flags() + fd_install now) from
> > another process in binder_apply_fd_fixups().
>
> Why?  this is internal things, why does seccomp come into play here?
>

We already have security_binder_transfer_file() to control the sender
process. So for the receiver process, do we need the seccomp too? Or
do I miss something here?

Thanks,
Yongji
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
