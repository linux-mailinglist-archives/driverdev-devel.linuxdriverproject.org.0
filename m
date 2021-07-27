Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C773D721B
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Jul 2021 11:35:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2A89404E5;
	Tue, 27 Jul 2021 09:35:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uF-FxFMb1SE2; Tue, 27 Jul 2021 09:35:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 769D64045F;
	Tue, 27 Jul 2021 09:35:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F36971BF37E
 for <devel@linuxdriverproject.org>; Tue, 27 Jul 2021 09:35:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E2B3E60654
 for <devel@linuxdriverproject.org>; Tue, 27 Jul 2021 09:35:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=ffwll.ch
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DsErRrRuWNln for <devel@linuxdriverproject.org>;
 Tue, 27 Jul 2021 09:35:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D2B85605E1
 for <devel@linuxdriverproject.org>; Tue, 27 Jul 2021 09:35:39 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id e2so14387410wrq.6
 for <devel@linuxdriverproject.org>; Tue, 27 Jul 2021 02:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=yjgVLjcBZHkmlLdtSEvRiJPBi3o1kd828d/tUGrcbyE=;
 b=UnBrek7qZf+iYEh6AmVH7eUFkcaZxHm4RxwLhRY3cMVvQwipZN3LMp7nplV4/mzwGQ
 66vGkBYwCcgjNJKg0SJddYatlSHOT3Qi6OVarx5S60ivO6utnTHonvtnX4pmoVTCHsav
 wv/dpLG7ue1GpHL1ed1UQpf2xOYlwYh6zOfq0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=yjgVLjcBZHkmlLdtSEvRiJPBi3o1kd828d/tUGrcbyE=;
 b=kfl7sngdtCoXeg6UQXL/Zdee0mbkOPJfGAZxvucaZN5qGK4EFgOR4pNTvYLaW86716
 fDBgncKSWBIg02uiIOV9Q6g9odiMe/bmDaYFvL8TklBDgmmJmFgvaZY2va0nJvM9NU5v
 Ho9p/n2FsSzv6S3Y82iNdnuiouQHl1mNuA4dd+OAaqp0OZlXeYzIbUvx0HRsrX9w7jPJ
 NbCclkKDzuFSQAJtg01qsJYYhgIKpUg7uh2DKrXoWnCRSn2b57eASzqkmAMRQv7O1p7r
 ZZMYNTzw64+a9XgyQSg3TmcwPpuk782uIGfBfdv0bmMOuLDIzWIAZ9SNEO3l//zwOeqw
 uuGg==
X-Gm-Message-State: AOAM532scNM5a5GxXCyC6vppCVT3mCa0ICpt6esnrVYjap4eEwb5D+Cq
 DKyqlfTJnXUFFlXTpIe9rSpBKA==
X-Google-Smtp-Source: ABdhPJz5UBO4JHhHhw/F7Hn081lqFQVJzcU4ElEFgPfM+H71lZvtUcZeLAELoIXQGHK/pfEvutK92A==
X-Received: by 2002:a5d:4e4e:: with SMTP id r14mr24393409wrt.251.1627378537645; 
 Tue, 27 Jul 2021 02:35:37 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id r2sm2671161wrq.15.2021.07.27.02.35.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Jul 2021 02:35:37 -0700 (PDT)
Date: Tue, 27 Jul 2021 11:35:35 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v3 1/3] drm/loongson: Add DRM Driver for Loongson 7A1000
 bridge chip
Message-ID: <YP/TZ2VRqYsw+jQN@phenom.ffwll.local>
References: <20210723031251.200686-1-lichenyang@loongson.cn>
 <YPqElHRxMSvrzzqs@phenom.ffwll.local>
 <YPr65jnI2coEIY1j@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YPr65jnI2coEIY1j@ravnborg.org>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
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
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Huacai Chen <chenhuacai@kernel.org>, dri-devel@lists.freedesktop.org,
 lichenyang <lichenyang@loongson.cn>, Thomas Zimmermann <tzimmermann@suse.de>,
 devel@linuxdriverproject.org, Dan Carpenter <dan.carpenter@oracle.com>,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jul 23, 2021 at 07:22:46PM +0200, Sam Ravnborg wrote:
> On Fri, Jul 23, 2021 at 10:57:56AM +0200, Daniel Vetter wrote:
> > On Fri, Jul 23, 2021 at 11:12:49AM +0800, lichenyang wrote:
> > > From: Chenyang Li <lichenyang@loongson.cn>
> > > 
> > > This patch adds an initial DRM driver for the Loongson LS7A1000
> > > bridge chip(LS7A). The LS7A bridge chip contains two display
> > > controllers, support dual display output. The maximum support for
> > > each channel display is to 1920x1080@60Hz.
> > > At present, DC device detection and DRM driver registration are
> > > completed, the crtc/plane/encoder/connector objects has been
> > > implemented.
> > > On Loongson 3A4000 CPU and 7A1000 system, we have achieved the use
> > > of dual screen, and support dual screen clone mode and expansion
> > > mode.
> > > 
> > > v9:
> > > - Optimize the error handling process.
> > > - Remove the useless flags parameter.
> > > - Fix some incorrect use of variables and constructs.
> > > 
> ...
> > 
> > Somehow this simple driver is at v9 and still not landed. Do you have
> > someone from the drm maintainers/committers who's guiding you through all
> > this? I'm not seeing you Cc: a specific person, without that there's good
> > chances your contribution gets lost. I'm swamped myself, which is why I've
> > ignored this and hope you'd fine someone else and stick to them.
> 
> Hi Chenyang,
> 
> Please cc: me on the next revision - then I will take a look.
> But I count on someone more familiar with atomic modesetting can also
> take a look. Thomas? Maxime?

I think the main thing is deciding whether this should use simple display
pipe helpers or not. Right now it looks like, and it would greatly trim
down the code.

The only other things I check is whether there's any hooks that can be
removed and whether an attempt to send out the event is made in all cases,
and that's good enough for me on the atomic front :-)

If it's not using simple display pipe helpers there's a bunch more things
to check, like whether the plane check function looks competent or fails
to reinvent what simple pipe helpers have.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
