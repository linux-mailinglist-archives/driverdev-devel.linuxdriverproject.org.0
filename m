Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B07D135284F
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Apr 2021 11:13:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C78E41919;
	Fri,  2 Apr 2021 09:13:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l3le0Z30TVq6; Fri,  2 Apr 2021 09:13:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8783041918;
	Fri,  2 Apr 2021 09:13:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 86D481BF309
 for <devel@linuxdriverproject.org>; Fri,  2 Apr 2021 09:12:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7599284C5A
 for <devel@linuxdriverproject.org>; Fri,  2 Apr 2021 09:12:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=chromium.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mPLfOuAYIVDm for <devel@linuxdriverproject.org>;
 Fri,  2 Apr 2021 09:12:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4D715848CE
 for <devel@driverdev.osuosl.org>; Fri,  2 Apr 2021 09:12:53 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id f17so2303024plr.0
 for <devel@driverdev.osuosl.org>; Fri, 02 Apr 2021 02:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=eClyzo54kpf4B5tpfP3fEyzY7D8nTckaJP0ovBRgLBw=;
 b=IPvwChbu4YwpZ1QrwmUTpgYzS1JQK0WpJTxlZZ+4T+k0qLP+vDXh7JvCd/4V/RAgCA
 HKC56rDALIS8NaFoVyCTGSvaDWKYaKsVLcIkYcbaD6F43HbcfkNJ7a/OLMsPRdspl2Rn
 uL5sntwbyFheg77a5e9GRqVtw0MLP+i940Ij0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=eClyzo54kpf4B5tpfP3fEyzY7D8nTckaJP0ovBRgLBw=;
 b=seQDS+TjVPXx61IxdMFR9PsKx6zyaujk1SvB7uVQLDce0khsHatE5DEGDZv5Zx7LnB
 IW4+TzHMT25x3xAp3pvolWVqt89aKCP2wf32GxYWOUqnCgRGl5vO4N4S2dS1MibD83x4
 ELDhLHyjZJETpyZB7f1+5dyN6LBnQQZ+I4p7kh4Hi+toSi2vMBKgo1bN/gOaa5dpXbMR
 jsKzW0ekrkgGhEqBdo14AeVXSjCJx9ELjG1z6j+gKu1D/qjQeBbAaHS4jNAkDmr7KLex
 ZXW6tbIkcksMcMfVpP0c87S+x9plhJ+Hx8w1huVHQ7kPWP8/PUMI3gucsqFtF5yO8bl/
 B4Kg==
X-Gm-Message-State: AOAM53102ZrQ8sv1h0IU708iX2ZmFcyA+O3wO2xaHoFyyJ1lgStjPCMK
 COFgcntUX9iYRMSc/TBb1dF8hQ==
X-Google-Smtp-Source: ABdhPJyrFWgP+qAN88fhumPhJVUdxksoE1hFMcsLBFucOW8x+oYH99yEY0RHDBRzYKlUtpf4x+b9qA==
X-Received: by 2002:a17:90a:a898:: with SMTP id
 h24mr13009816pjq.9.1617354772739; 
 Fri, 02 Apr 2021 02:12:52 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id gz12sm7673412pjb.33.2021.04.02.02.12.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Apr 2021 02:12:52 -0700 (PDT)
Date: Fri, 2 Apr 2021 02:12:51 -0700
From: Kees Cook <keescook@chromium.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: Re: Re: Re: [PATCH 2/2] binder: Use receive_fd() to receive file
 from another process
Message-ID: <202104020210.9A945E5@keescook>
References: <20210401090932.121-1-xieyongji@bytedance.com>
 <20210401090932.121-3-xieyongji@bytedance.com>
 <YGWYZYbBzglUCxB2@kroah.com>
 <CACycT3ux9NVu_L=Vse7v-xbwE-K0-HT-e-Ei=yHOQmF66nGjeQ@mail.gmail.com>
 <YGWjh7qCJ8HJpFxv@kroah.com>
 <CACycT3uEGRiDuOj2XBwF2PmnGXsQgrLDemJDFRytsJiJMyRWDw@mail.gmail.com>
 <YGWvbAXQO2Vsiupo@kroah.com>
 <CACycT3vNaDg5twEpKtnZTjbyD=0FhZKJLzH+uBNQuyCmxFaeww@mail.gmail.com>
 <YGXUNfsExs6tZD0c@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YGXUNfsExs6tZD0c@kroah.com>
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
 linux-fsdevel@vger.kernel.org, Jason Wang <jasowang@redhat.com>,
 Sargun Dhillon <sargun@sargun.me>, Christoph Hellwig <hch@infradead.org>,
 Yongji Xie <xieyongji@bytedance.com>, arve@android.com,
 viro@zeniv.linux.org.uk, joel@joelfernandes.org,
 Hridya Valsaraju <hridya@google.com>,
 Christian Brauner <christian.brauner@ubuntu.com>, maco@android.com,
 Suren Baghdasaryan <surenb@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Apr 01, 2021 at 04:09:57PM +0200, Greg KH wrote:
> On Thu, Apr 01, 2021 at 08:28:02PM +0800, Yongji Xie wrote:
> > On Thu, Apr 1, 2021 at 7:33 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> > >
> > > On Thu, Apr 01, 2021 at 07:29:45PM +0800, Yongji Xie wrote:
> > > > On Thu, Apr 1, 2021 at 6:42 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> > > > >
> > > > > On Thu, Apr 01, 2021 at 06:12:51PM +0800, Yongji Xie wrote:
> > > > > > On Thu, Apr 1, 2021 at 5:54 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> > > > > > >
> > > > > > > On Thu, Apr 01, 2021 at 05:09:32PM +0800, Xie Yongji wrote:
> > > > > > > > Use receive_fd() to receive file from another process instead of
> > > > > > > > combination of get_unused_fd_flags() and fd_install(). This simplifies
> > > > > > > > the logic and also makes sure we don't miss any security stuff.
> > > > > > >
> > > > > > > But no logic is simplified here, and nothing is "missed", so I do not
> > > > > > > understand this change at all.
> > > > > > >
> > > > > >
> > > > > > I noticed that we have security_binder_transfer_file() when we
> > > > > > transfer some fds. I'm not sure whether we need something like
> > > > > > security_file_receive() here?
> > > > >
> > > > > Why would you?  And where is "here"?
> > > > >
> > > > > still confused,
> > > > >
> > > >
> > > > I mean do we need to go through the file_receive seccomp notifier when
> > > > we receive fd (use get_unused_fd_flags() + fd_install now) from
> > > > another process in binder_apply_fd_fixups().
> > >
> > > Why?  this is internal things, why does seccomp come into play here?
> > >
> > 
> > We already have security_binder_transfer_file() to control the sender
> > process. So for the receiver process, do we need the seccomp too? Or
> > do I miss something here?
> 
> I do not know, is this something that is a requirement that seccomp
> handle all filesystem handles sent to a process?  I do not know the
> seccomp "guarantee" that well, sorry.

This is an extremely confused thread. seccomp _uses_ the receive_fd()
API. receive_fd() calls the security_file_receive() LSM hook. The
security_binder_*() LSM hooks are different yet.

Please, let's wait for Christian to clarify his idea first.

-- 
Kees Cook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
