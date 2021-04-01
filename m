Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74017351478
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Apr 2021 13:30:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9F20F40567;
	Thu,  1 Apr 2021 11:30:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xLWloVpz9Xfr; Thu,  1 Apr 2021 11:30:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F07C440554;
	Thu,  1 Apr 2021 11:30:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5EE591BF38B
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 11:30:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 548E540E92
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 11:30:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=bytedance-com.20150623.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vkyteaLuu5iL for <devel@linuxdriverproject.org>;
 Thu,  1 Apr 2021 11:29:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9A92040E60
 for <devel@driverdev.osuosl.org>; Thu,  1 Apr 2021 11:29:58 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id w18so1599069edc.0
 for <devel@driverdev.osuosl.org>; Thu, 01 Apr 2021 04:29:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NrgKRkZYxFNex51lY/7IkQoDvk2RVxf595mFeDjlSSk=;
 b=It1nN049vO8qoKGytT57Bzw9sa/r3Pv/xlCJLx3ig+mQnMe7MEgLfREujCPK90SIz0
 dY/AmgRDX78A15gaor9ADa+gvbRioeNKdS0/kwEz7FKoxblW4r5w6QkYU2wrqESuqEAe
 Q7skCfPvReyh0hsteVWaNQ+XpwUnVgIQmBjelZyblqVELmPtHNXIt5Rvf4Q84yFck01G
 p/aEfOgdlebHzSjri2DDE/a49W6VCnFW3F67M7vMic5Mjw9B2mJx70B8L1aKOroKXIou
 eIYCTGVohhJOMnFFSIZH67LYq08gSsVRV1UYxLqLpz5qNpj5Qi1p74HuTJKhq+1ou2oT
 y0jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NrgKRkZYxFNex51lY/7IkQoDvk2RVxf595mFeDjlSSk=;
 b=mpZOy8nf7Fzf4k/pcJBx/QzfsywePlTGlIfRgsWH0uDUmk2rur6WEwpZcO47IAYfRH
 3QXEzJLoQdtMnObNBtZjiDJeScESoM+Tld57eQwmKkStu+Zq1dfiSAo1K55CI9zUrC7n
 XSI3o/ObYVOl/9LOOJl1FhhGOagHUUB09Mxjt3xfTlayvLu5fYJxwKTRnFzyDTH8oePl
 RSUD16aXcPTXsCeqInhA/qZ0KBDsW6fNPXwOV91zVH1sek038T6PoyLzKRKRlwwSzkSg
 Bg1iQc8iNn9iC7zKt3S4/1coUxmllTC6hY0x6MG8ncG7N3s2JRnKfw4vpxaPlgsQ+MZU
 L/Xw==
X-Gm-Message-State: AOAM533B4/LLiruWrcDQKuySrWLtDqfeuPNuT6lI9dgpqcmEnqMSIqq/
 3GrnoMdhWFhJ5yz0u8SKLkbZLltBYURSI6QRlckH
X-Google-Smtp-Source: ABdhPJzcG2XeyO60BBYSsZF3AhUM8DnQovMPTEIG7GN/jazIXBFqX4wJSUG5FZ70qiHR5t+ckR8AItD/g8/l+vvFmII=
X-Received: by 2002:a05:6402:4314:: with SMTP id
 m20mr9082474edc.5.1617276596692; 
 Thu, 01 Apr 2021 04:29:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210401090932.121-1-xieyongji@bytedance.com>
 <20210401090932.121-3-xieyongji@bytedance.com>
 <YGWYZYbBzglUCxB2@kroah.com>
 <CACycT3ux9NVu_L=Vse7v-xbwE-K0-HT-e-Ei=yHOQmF66nGjeQ@mail.gmail.com>
 <YGWjh7qCJ8HJpFxv@kroah.com>
In-Reply-To: <YGWjh7qCJ8HJpFxv@kroah.com>
From: Yongji Xie <xieyongji@bytedance.com>
Date: Thu, 1 Apr 2021 19:29:45 +0800
Message-ID: <CACycT3uEGRiDuOj2XBwF2PmnGXsQgrLDemJDFRytsJiJMyRWDw@mail.gmail.com>
Subject: Re: Re: Re: [PATCH 2/2] binder: Use receive_fd() to receive file from
 another process
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

On Thu, Apr 1, 2021 at 6:42 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Thu, Apr 01, 2021 at 06:12:51PM +0800, Yongji Xie wrote:
> > On Thu, Apr 1, 2021 at 5:54 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> > >
> > > On Thu, Apr 01, 2021 at 05:09:32PM +0800, Xie Yongji wrote:
> > > > Use receive_fd() to receive file from another process instead of
> > > > combination of get_unused_fd_flags() and fd_install(). This simplifies
> > > > the logic and also makes sure we don't miss any security stuff.
> > >
> > > But no logic is simplified here, and nothing is "missed", so I do not
> > > understand this change at all.
> > >
> >
> > I noticed that we have security_binder_transfer_file() when we
> > transfer some fds. I'm not sure whether we need something like
> > security_file_receive() here?
>
> Why would you?  And where is "here"?
>
> still confused,
>

I mean do we need to go through the file_receive seccomp notifier when
we receive fd (use get_unused_fd_flags() + fd_install now) from
another process in binder_apply_fd_fixups().

Thanks,
Yongji
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
