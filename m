Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B27B1E8D3D
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 May 2020 04:49:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0D37F26150;
	Sat, 30 May 2020 02:49:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GvcCsDYVpJdu; Sat, 30 May 2020 02:49:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9B92A22176;
	Sat, 30 May 2020 02:49:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A68281BF5AE
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 02:49:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9B64A87C5C
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 02:49:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zx166BxdYCEp for <devel@linuxdriverproject.org>;
 Sat, 30 May 2020 02:49:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0F1B587C24
 for <devel@driverdev.osuosl.org>; Sat, 30 May 2020 02:49:45 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id t7so1955967plr.0
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 19:49:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=jje/5IhObPA+c/Zlgq/cyu1iClYpt6YXbC2KMGtWJ1c=;
 b=QUyCXkd6w4TSACol46z3Gx6W2n3kUCK+8h+LbabWwqqVD4q+NDYDlx+XuZz9SMeV+H
 RK4Ic4L+HC/nL8X+xf1LbOxaf2Z5Ij7qpnJb1QEpWMzi2y7IcArbWXq8CaLFavl8twNf
 XrGY6ZtISspjuPqv+1FQ1MnyBFw4D2lKsT2So2PWms/wt56Wdax+r/vjX88jXdAgKYyz
 toJfO5F06w8IaKELpseQUTbUHFBVhVlemU2XVha/ikPdBLGmjxfI0lmh8A03glHK1Pmt
 VGztEC/L4lR+sY2rKnVw50NyZiQREMHx/5dlS82ighK1UG04GScb3dKgRf+TVkGjhm4Q
 VDCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=jje/5IhObPA+c/Zlgq/cyu1iClYpt6YXbC2KMGtWJ1c=;
 b=RGqq39FcEO1zWO0fXdI22BCsJLbG95Ap8rKL1gVMc0zmowvDifLGrt+v8YfkFjG0qU
 OZvKDYlIcOU5c9JO5lM1VNlY9Kto4CqWO93xaOWtdGbV85xf+am1oHcr9wF1t8gt1emM
 8rz8T/k4Lnz0CYpObJSzcDcIidYZV8nYofvWbxbyyxglOPDDVCuytaJfOPffAaM2rPM5
 X8q/K9zpVMVa1MELTWiczajLaKsUuF8wk7TsPcVmBIpSDiXkWzXq0gOiJ94xeu8PiO9F
 qm1iknhwmxdKM22HidZOD6oiArrbHwXLi2D2yBTSONIoP797zw3rH6tlWwtSHlrbqp6y
 rtHw==
X-Gm-Message-State: AOAM530SqkGSJAqdSSOfh0XGBDmBfwoESKrC0JZC2wl1DUjBJos3Q43G
 n5ozlD7R2NCp3tKgYBDx7PM=
X-Google-Smtp-Source: ABdhPJxTeWn0FvpILXqo3qkIDS/w90I1CeZQxKUvYGbAScVlB0GHDDPiBWH3nr72JkpLJ1+zCBz+Cw==
X-Received: by 2002:a17:902:70c3:: with SMTP id
 l3mr11275860plt.70.1590806984520; 
 Fri, 29 May 2020 19:49:44 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id fa19sm672964pjb.18.2020.05.29.19.49.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 19:49:43 -0700 (PDT)
Date: Fri, 29 May 2020 19:49:41 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 1/9] staging: media: atomisp: fix incorrect NULL pointer
 check
Message-ID: <20200530024941.GA1287405@ubuntu-s3-xlarge-x86>
References: <20200529200031.4117841-1-arnd@arndb.de>
 <CAKwvOdnND7XFgr7W9PvZAikJB1nKxB4K5N-oP0YrBT74oX_C9g@mail.gmail.com>
 <CAK8P3a2UKC=s7re2P+qfxz8eqeC+yCcPGuYKkgji9N_ugdgWhg@mail.gmail.com>
 <CAK8P3a3u9fs9pSOXSkrmO=xNWUZ5fxZnL_O=f=0BDZ8DkHNYWQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a3u9fs9pSOXSkrmO=xNWUZ5fxZnL_O=f=0BDZ8DkHNYWQ@mail.gmail.com>
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
Cc: driverdevel <devel@driverdev.osuosl.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 29, 2020 at 10:31:44PM +0200, Arnd Bergmann wrote:
> On Fri, May 29, 2020 at 10:23 PM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > On Fri, May 29, 2020 at 10:04 PM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> > >
> > > See also Nathan's 7 patch series.
> > > https://lore.kernel.org/lkml/20200527071150.3381228-1-natechancellor@gmail.com/
> > >
> > > Might be some overlap between series?
> > >
> >
> > Probably. I really should have checked when I saw the number of warnings.
> >
> > At least this gives Mauro a chance to double-check the changes and see if
> > Nathan and I came to different conclusions on any of them.
> 
> I checked now and found that the overlap is smaller than I expected.
> In each case, Nathans' solution seems more complete than mine,
> so this patch ("staging: media: atomisp: fix incorrect NULL pointer check")
> and also "staging: media: atomisp: fix a type conversion warning" can be
> dropped, but I think the others are still needed.
> 
>         Arnd

Thanks for double checking! I will read through the rest of the series
and review as I can.

Cheers,
Nathan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
