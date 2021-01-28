Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B46307345
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 Jan 2021 10:59:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5531686B5C;
	Thu, 28 Jan 2021 09:59:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IZrv1ugu1JSU; Thu, 28 Jan 2021 09:59:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EC10F86B2F;
	Thu, 28 Jan 2021 09:59:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6E3801BF27C
 for <devel@linuxdriverproject.org>; Thu, 28 Jan 2021 09:59:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 561C52043A
 for <devel@linuxdriverproject.org>; Thu, 28 Jan 2021 09:59:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jsS4fYySK+bt for <devel@linuxdriverproject.org>;
 Thu, 28 Jan 2021 09:59:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
 [209.85.208.175])
 by silver.osuosl.org (Postfix) with ESMTPS id 195942037E
 for <devel@driverdev.osuosl.org>; Thu, 28 Jan 2021 09:59:13 +0000 (UTC)
Received: by mail-lj1-f175.google.com with SMTP id e18so5556403lja.12
 for <devel@driverdev.osuosl.org>; Thu, 28 Jan 2021 01:59:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=7pfzxki9lheHgOLLzQUHgmk1QHH49lwL5Xi6bGveKqI=;
 b=C5iQTW3T8+J3IZWK6A5QNut7MFv+TbeI1f0Zb7Qjo0SxH2FThG4KpFizCyByRiNb7s
 viTeDmowChDcQ8aNRy0KxaHpOKiDumWRod4N7OszB2XwnahAhLDBiP1p4Eh34nW9ck4X
 c6iMTE2SUHtlRzSq+GVvJrsQ8z4Nq40YZxt+Kp2UpvrTqwnXiR166LxKfl+FW9AUTrt+
 JInyKlot+NlBlvaaK5w6QO1+VeOP2O9MDEz8rYLSbCf8hQH4g+z4p9ZJxPMG0wj+EB+V
 AeR5Qn+WmIUDJ0NS/fYzIauFxJ0PXLlubrIEPMNzFhJiJlCugY/kiim2oHuYgpnnxZAv
 V2yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=7pfzxki9lheHgOLLzQUHgmk1QHH49lwL5Xi6bGveKqI=;
 b=S0dRHUaL9KUD6ikEszK8NyaKxQAq2iC5LROpaIYK6/0jrsgaAGzlUXjDiMvEkoXCfS
 lxQzEALWboUXgLH9cAEqbN+7skexhWQfz6DBtiOylLm6LQdoUCVME9c2Wvp4ujeVS5iw
 TpU93eui08mvDXQ8rkfmaHvy45QxQRC774UK/RfwqxMcxuK7HMcncPNfusznUTdyIym2
 uC1wSJTLJxkvhtgP+yJW1VJf8NPOxlds+sPy/hLypnwuG8IKyDbjnCAnVJv0YlznjLJV
 H18SbFdp2EfHaIwwu/e9fh/ffXPZPjKNx854x2dMsm4jRmoRRckMOtgCoemrNyzgoTV0
 vxwg==
X-Gm-Message-State: AOAM532H+LcbJEMfCmyDs48BGofpJOwO2EdwUZGs/GVCWjakmykqOXCw
 qAGNbsq8lM3REnHYa6ZKC/8=
X-Google-Smtp-Source: ABdhPJyQahjeVdQ9RR/Pj8A7PCSfRelscgLOEjJP1Tv1tX+t766D1pvJb3mrXoIpOblsSeRBhdN7Rg==
X-Received: by 2002:a2e:b8c7:: with SMTP id s7mr7574137ljp.397.1611827951312; 
 Thu, 28 Jan 2021 01:59:11 -0800 (PST)
Received: from kari-VirtualBox ([31.132.12.44])
 by smtp.gmail.com with ESMTPSA id k20sm1814663ljb.73.2021.01.28.01.59.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Jan 2021 01:59:10 -0800 (PST)
Date: Thu, 28 Jan 2021 11:59:08 +0200
From: Kari Argillander <kari.argillander@gmail.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v10] staging: fbtft: add tearing signal detect
Message-ID: <20210128095908.nm5kh4yspza2v27q@kari-VirtualBox>
References: <1611754972-151016-1-git-send-email-zhangxuezhi3@gmail.com>
 <20210127223222.3lavtl3roc4cabso@kari-VirtualBox>
 <20210128094258.000012c3@gmail.com>
 <20210128065233.ji4b7ea54ihyu2l5@kari-VirtualBox>
 <CAMuHMdWK0wbMVJNwSW=pafsyjDVg14h2AX=haJeAkyivehP=JQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdWK0wbMVJNwSW=pafsyjDVg14h2AX=haJeAkyivehP=JQ@mail.gmail.com>
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
 Linux Fbdev development list <linux-fbdev@vger.kernel.org>,
 mh12gx2825@gmail.com, Greg KH <gregkh@linuxfoundation.org>,
 oliver.graute@kococonnector.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Stefano Brivio <sbrivio@redhat.com>, carlis <zhangxuezhi3@gmail.com>,
 Colin King <colin.king@canonical.com>, zhangxuezhi1@yulong.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jan 28, 2021 at 10:42:54AM +0100, Geert Uytterhoeven wrote:
> Hi Kari,
> 
> On Thu, Jan 28, 2021 at 7:53 AM Kari Argillander
> <kari.argillander@gmail.com> wrote:
> > On Thu, Jan 28, 2021 at 09:42:58AM +0800, carlis wrote:
> > > On Thu, 28 Jan 2021 00:32:22 +0200
> > > Kari Argillander <kari.argillander@gmail.com> wrote:
> > > > > @@ -82,6 +111,33 @@ enum st7789v_command {
> > > > >   */
> > > > >  static int init_display(struct fbtft_par *par)
> > > > >  {
> > > > > + int rc;
> > > > > + struct device *dev = par->info->device;
> > > > > +
> > > > > + par->gpio.te = devm_gpiod_get_index_optional(dev, "te", 0,
> > > > > GPIOD_IN);
> > > > > + if (IS_ERR(par->gpio.te)) {
> > > > > +         rc = PTR_ERR(par->gpio.te);
> > > > > +         dev_err(par->info->device, "Failed to request te
> > > > > gpio: %d\n", rc);
> > > > > +         return rc;
> > > > > + }
> > > >
> > > > You request with optinal and you still want to error out? We could
> > > > just continue and not care about that error. User will be happier if
> > > > device still works somehow.
> 
> devm_gpiod_get_index_optional() returns NULL, not an error, if the
> GPIO is not found.  So if IS_ERR() is the right check.
> 
> And checks for -EPROBE_DEFER can be handled automatically
> by using dev_err_probe() instead of dev_err().

Yeah. Thanks for pointing that clearly.

> > > You mean i just delete this dev_err print ?!
> > > like this:
> > >       par->gpio.te = devm_gpiod_get_index_optional(dev, "te",
> > > 0,GPIOD_IN);
> > >         if (IS_ERR(par->gpio.te))
> > >               return PTR_ERR(par->gpio.te);
> >
> > Not exactly. I'm suggesting something like this.
> >
> > if (IS_ERR(par->gpio.te) == -EPROBE_DEFER) {
> >         return -EPROBE_DEFER;
> >
> > if (IS_ERR(par->gpio.te))
> >         par-gpio.te = NULL;
> >
> > This like beginning of your patch series but the difference is that if
> > EPROBE_DEFER then we will try again later. Any other error and we will
> > just ignore TE gpio. But this is up to you what you want to do. To me
> > this just seems place where this kind of logic can work.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
