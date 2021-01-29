Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E7928308971
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 15:04:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7B081870A3;
	Fri, 29 Jan 2021 14:04:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cHIixtsWX4EP; Fri, 29 Jan 2021 14:04:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 59913869BA;
	Fri, 29 Jan 2021 14:04:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 75F651BF399
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 14:04:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 70A7B8747B
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 14:04:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SfoHhOBiz926 for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 14:04:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com
 [209.85.215.180])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8DD4A8739C
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 14:04:39 +0000 (UTC)
Received: by mail-pg1-f180.google.com with SMTP id t25so6753697pga.2
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 06:04:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2HvMuSQuok3SxIwyh3VLvvIEGSa363+ZDsGak3OB2UY=;
 b=ALiKoCrdDwt8AS06d21H4u1TK0pIPrseT+wzfjYy166kpAnVAeShq36PpQ10AFYB8p
 kJzZC0yUvsmD7jc+ymLlGeL8H0kqm2D3sxtA2buaKAbxV0tDm16pIM+FEZbQnkXx7bCs
 U1LRB8Efwokpm0XKdPPW1QLxJkalaJtvp20zv3jtxm19QX1PsC91geRNG65fsLTAsUaB
 FtqaaywyPJuQ3slXtuJlCA7JiQoANy6Artj0XtsXjWZgvG7ly/oEnltVMgv/QQ9zHdG+
 IpUBByf0VNxc9rUwrDRoNKYTxZYz3vncH600Txee/iCCrt7vsB8jsVW7ZWNelFTxq5Th
 DEZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2HvMuSQuok3SxIwyh3VLvvIEGSa363+ZDsGak3OB2UY=;
 b=OuAfm30SQ4k13DHr5Fhbq96k3hGr0Vs9cN94XGqu63lDGxb1uQtBMacCt8qqtMZHfp
 WTQmjNycX7bVYMsp569/xC9vrHHj7Vr5hyoX73jp3/S4vhqzn2tCTyTCwgRP30ZFFYaG
 quqHS0QNdUpIEKJXumn64hqwiF6UOXTTXZrE/CHQYH3NbdGD0Y8Mt3ZwGpQnBsVuKdUj
 5FEbjHfyhrXtrBlKuODBQYPH0gUQcuP9nVmz1ZurmaN5bL/ODltiux4wQW+fjkBv7c/0
 zwhIrhivDQuSj1AmZSfxMDX/dYTp3XD7LCXl5zbCuWvFCEj+pzRzXxlRR3WAlhhwh3Hc
 ln8A==
X-Gm-Message-State: AOAM532zQekOBaS7qDr/S7cxDz2yF+FMbm5RaZtJcg3YaJaTaB2mvUnx
 lOT5yq0lUE6rC1BfdEg5/sZvJ0PHov8OEy7N2B0=
X-Google-Smtp-Source: ABdhPJxw061PU6908QgfoAUJstvhxaahvZZ6H9ZS4oW2+gLfQwwyqDKviRNcnNYL9evlmb6KqWQFI39LTyTWSDr1s/I=
X-Received: by 2002:a63:fc56:: with SMTP id r22mr4893662pgk.203.1611929079216; 
 Fri, 29 Jan 2021 06:04:39 -0800 (PST)
MIME-Version: 1.0
References: <1611838435-151774-1-git-send-email-zhangxuezhi3@gmail.com>
 <CAHp75Vd=ijxnamuSYuxNLeyhGMCod=HaXWrQ0W0+3QCsQAychg@mail.gmail.com>
 <20210129130110.00003bb1@gmail.com>
 <CAHp75Vdi4H_zY3+QPSq_wmdf20B9xPeqsOT10JHfMLJESX77gA@mail.gmail.com>
 <20210129205447.0000464f@gmail.com>
In-Reply-To: <20210129205447.0000464f@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 29 Jan 2021 16:04:23 +0200
Message-ID: <CAHp75Vc5G1jOjGe8AzLgNtYrPi8zbO4niQ58CLU0iPhJfiw0Ag@mail.gmail.com>
Subject: Re: [PATCH v12] staging: fbtft: add tearing signal detect
To: carlis <zhangxuezhi3@gmail.com>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 "open list:FRAMEBUFFER LAYER" <linux-fbdev@vger.kernel.org>,
 Deepak R Varma <mh12gx2825@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 oliver.graute@kococonnector.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Stefano Brivio <sbrivio@redhat.com>, Colin King <colin.king@canonical.com>,
 zhangxuezhi1@yulong.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jan 29, 2021 at 2:54 PM carlis <zhangxuezhi3@gmail.com> wrote:
> On Fri, 29 Jan 2021 12:23:08 +0200
> Andy Shevchenko <andy.shevchenko@gmail.com> wrote:
> > On Fri, Jan 29, 2021 at 7:01 AM carlis <zhangxuezhi3@gmail.com> wrote:
> > > On Thu, 28 Jan 2021 16:33:02 +0200
> > > Andy Shevchenko <andy.shevchenko@gmail.com> wrote:

...

> > This one is not like I suggested.
> I don't think I have a problem here, if te GPIO is not configured, it
> should return NULL, if it is configured, it should be greater than 0

Pointers are always greater than 0 or a special NULL case. The
rationale I explained in the previous mail.

...

> > >                         rc = devm_request_irq(dev,
> > >                                               par->irq_te,
> > >                 panel_te_handler,
> > >                                               IRQF_TRIGGER_RISING,
> > >                 "TE_GPIO", par);
> >
> > Try to use less LOCs.
>
> LOCs???? i can not get you

Lines Of Code. Above can occupy less LOCs.

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
