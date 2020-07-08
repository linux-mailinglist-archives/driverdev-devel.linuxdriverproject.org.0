Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C8739217DB6
	for <lists+driverdev-devel@lfdr.de>; Wed,  8 Jul 2020 05:43:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 56D278776D;
	Wed,  8 Jul 2020 03:43:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pmNIaCYccXua; Wed,  8 Jul 2020 03:43:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 40A2B87701;
	Wed,  8 Jul 2020 03:43:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 340141BF8A8
 for <devel@linuxdriverproject.org>; Wed,  8 Jul 2020 03:43:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2EBAC88AE9
 for <devel@linuxdriverproject.org>; Wed,  8 Jul 2020 03:43:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a9bVAzLHe8CC for <devel@linuxdriverproject.org>;
 Wed,  8 Jul 2020 03:43:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3CC6588AE7
 for <devel@driverdev.osuosl.org>; Wed,  8 Jul 2020 03:43:42 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id w17so28104751otl.4
 for <devel@driverdev.osuosl.org>; Tue, 07 Jul 2020 20:43:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mHwnZGqBxO1eR5fw/gOLrflI6sKMZmZB5dQJW/fz1OI=;
 b=Fe+Nkt75c5SHX6EoJc25ohkfwpVvt9Shez4gGJsFcnlofCj1p4EV0/9LYeXnB7Ps5I
 GbuUp7Z9dTQ77ECCS2E3WkR/9ObL4djO5nw+5lALHOqtF+X3XwCoWSAyNqBy41djgYc+
 E36Ge2uQyBowWhOaERpqgUrExPkfmEUp60YAiYcfYIoCEJ4GxhSXJM4C44UUVdAKgptU
 BzkgjU5yxVVL/jD+u5cU4WT57KieNFDZ/83O+CbyRoYpVJ5FSBPy6+vLcAmH+5aLHsrU
 2d644BAm8cYMwpkzlShwpkcSY0FWHEBC8SU+QSuKgaTjXfzcJJnkF3rYniKnfCr8PmW8
 LRjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mHwnZGqBxO1eR5fw/gOLrflI6sKMZmZB5dQJW/fz1OI=;
 b=cLfrbRFSgpmmGsY+29prMyyh8/vbvyisBXwXeX8BRSFyLnEh8p3vb3o/2YJJYhL4iE
 aPuUxEA5tOFlphuZi93YVCSYTrGKEMzNWMfF4giEygnegi0KEiwLvckhclfXlByTVSOn
 qW6xsgLIPR8x27T3XBAE3liTnToqgxFflqlNCDKbTZfvCEBSqEVEP0VjzbV6Jfw4Bwpn
 jH5sDRX/dFZnoNWSQNVQ7UoBeXFzZncTFlIwpcSLsiSUPqOOlNl9ARH1JFeUIPOy6x98
 yGv9v8VqAfsPmfM44n/FjeRZz8Bt+N7Wwm8vmQQX83ZtipB26AXzNoiruG6KTRlhQHPm
 Nx/Q==
X-Gm-Message-State: AOAM531MsNDDyHnnEfPaLEzasC+XOPV38SWt+yh95CsxSedzRGDMMTcY
 pCvS2TWEEXn7EEi0cDBecd7/FqAelscA60m1dNgvpA==
X-Google-Smtp-Source: ABdhPJzAu9QJrh4zqPuK1ULgvhkk3S7kmolCzNiGAneauQgVnQWUl8xkvWerju6/BQBeQKcs2e83J8fINMSb4CvYdms=
X-Received: by 2002:a9d:7303:: with SMTP id e3mr40868563otk.221.1594179821275; 
 Tue, 07 Jul 2020 20:43:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200414134629.54567-1-orjan.eide@arm.com>
 <20200414141849.55654-1-orjan.eide@arm.com>
 <20200414142810.GA958163@kroah.com>
 <CALAqxLX-SUhHPH6ewt-s9cEMc8DtMTgXem=JruAkLofuJf1syg@mail.gmail.com>
 <20200416102508.GA820251@kroah.com>
 <20200420082207.ui7iyg7dsnred2vv@wittgenstein>
 <CALAqxLW-txNEqW=P_9VTxvOVu_fgpjzHHDbR5BhtpYwhg1SXgw@mail.gmail.com>
 <20200421080544.GA611314@kroah.com> <20200703070403.GB2221524@kroah.com>
In-Reply-To: <20200703070403.GB2221524@kroah.com>
From: John Stultz <john.stultz@linaro.org>
Date: Tue, 7 Jul 2020 20:43:30 -0700
Message-ID: <CALAqxLUHT=CGNxffz+3G-bUNc2FM_TawDrymFN+S=ZiPcM9pkg@mail.gmail.com>
Subject: Re: [PATCH] staging: android: ion: Skip sync if not mapped
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
Cc: driverdevel <devel@driverdev.osuosl.org>, nd <nd@arm.com>,
 Todd Kjos <tkjos@android.com>, Lecopzer Chen <lecopzer.chen@mediatek.com>,
 Arnd Bergmann <arnd@arndb.de>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Christian Brauner <christian@brauner.io>,
 Anders Pedersen <anders.pedersen@arm.com>, Laura Abbott <laura@labbott.name>,
 Joel Fernandes <joel@joelfernandes.org>,
 "Darren Hart \(VMware\)" <dvhart@infradead.org>,
 =?UTF-8?Q?=C3=98rjan_Eide?= <orjan.eide@arm.com>,
 Laura Abbott <labbott@redhat.com>, Martijn Coenen <maco@android.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Brauner <christian.brauner@ubuntu.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jul 3, 2020 at 12:03 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> On Tue, Apr 21, 2020 at 10:05:44AM +0200, Greg Kroah-Hartman wrote:
> > On Mon, Apr 20, 2020 at 01:03:39PM -0700, John Stultz wrote:
> > > The dmabuf heaps have been in an official kernel now for all of three
> > > weeks. So yea, we can "delete [ION] and see who even notices", but I
> > > worry that may seem a bit like contempt for the folks doing the work
> > > on transitioning over, which doesn't help getting them to participate
> > > within the community.
> >
> > But they aren't participating in the community today as no one is
> > touching the ion code.  So I fail to see how keeping a dead-end-version
> > of ion in the kernel tree really affects anyone these days.
>
> So, any thoughts here?  What's the timeline for ion being able to be
> removed that you are comfortable with?

Sorry for the slow reply.  So my earlier plan was to drop it after the next LTS?

thanks
-john
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
