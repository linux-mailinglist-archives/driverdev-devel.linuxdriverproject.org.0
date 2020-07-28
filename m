Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0775B23136E
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jul 2020 22:03:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EA6B685A92;
	Tue, 28 Jul 2020 20:03:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WpCW4nxk7rvb; Tue, 28 Jul 2020 20:03:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A6516859BA;
	Tue, 28 Jul 2020 20:03:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 49BDC1BF57F
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 20:03:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 453D7878F1
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 20:03:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rt5cRDJuUvAj for <devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 20:03:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4468D816FA
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 20:03:14 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id r2so14377105wrs.8
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 13:03:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ohmu0vMfdHex2xZPcqloEiP8YaJLK572pyUwrwcZ6J4=;
 b=K7KB80y7j7VxdM3l4Ffe2vwCHW7hkhWHpMpHYP8eEB3sm/QGVjG4PlAgSU+RkMzCRR
 a18FB+5kqWpmo8cUQuDq8FBBInqiTBszV57NxvPeNkiKP6Sn5RImHi8+f96EgBFNj0T5
 AdSMifwLG37EskhoPeXKbm57FR6M+6ixA3LY//InU8beSCmXAxbq2vHAvlQ1gDcyyAaS
 E7bL7mYA0DMpE3y1JHn9LPsnOaH4jghUaNZaWPh3S5URbA1GJT85pglkFYicv0EYxdae
 8vcGxjemYAu2Tl7QwfaJKi+aiWou4Lzdx7YL3kOBmRnuUpRc+dI/ZDPAos+bunasKGxK
 xRsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ohmu0vMfdHex2xZPcqloEiP8YaJLK572pyUwrwcZ6J4=;
 b=Pk0LYuEOnJiYAnytnCtpvKKMR/6MwmDQ3SSWCGC8hKxNlQidtj8x1pE4vsGEzOdm6i
 WxTdOXnxoIZiGoC1jb4uMy01FMyPL5VhbOKzQr9z4FQK2VeaccXDt54L+M0mG+Sq8z8q
 XhDIhbpuJbzjcsJvjEyPRmGRkXYliBeE8CbDgJ5KYHzB8kyGeuWatW1mfgPUnZ4peoQD
 f+QGkLUASwHKtK5AiiM3sCaD2MpTyE0jRlVLnSrBzUZcUMzdRL0LVRRZvUW3x8O6po5C
 RzDKMV8xRAvcUw9hgfYmUkDByjJjFc0CyRi/WfsMbWRmx/cS73k53L4uFuSA5jM0wO6N
 HyVA==
X-Gm-Message-State: AOAM531sbdQuIDjm184n+GInb5XPT4yIEfgWnIjz3QV/v+WaTayHNiqQ
 SomXSzez/+hk4wvG3CIHzBx6rtOBjUvwotyVRGonwnBG
X-Google-Smtp-Source: ABdhPJy52DXVGn4HR6bSg2SgU93VxhjyIOqA2rpkG0SEKuDIQOBIQowUnerJP2o1ESdA/mdZ50ZiOfVas6U7logwU80=
X-Received: by 2002:adf:dfcf:: with SMTP id q15mr15043913wrn.345.1595966592536; 
 Tue, 28 Jul 2020 13:03:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200726141831.2662-1-aditya.jainadityajain.jain@gmail.com>
 <20200726142013.2891-1-aditya.jainadityajain.jain@gmail.com>
 <20200726142013.2891-3-aditya.jainadityajain.jain@gmail.com>
 <20200726150244.GD452766@kroah.com>
 <1177f80aa848a294f65e305729304b76d1e5ee98.camel@perches.com>
 <CAJAoDUjRZTxcOJGs2wqPPYyVCYJJTs1NWtmD0+yMXLttgCCQyA@mail.gmail.com>
In-Reply-To: <CAJAoDUjRZTxcOJGs2wqPPYyVCYJJTs1NWtmD0+yMXLttgCCQyA@mail.gmail.com>
From: Aditya Jain <aditya.jainadityajain.jain@gmail.com>
Date: Wed, 29 Jul 2020 01:33:01 +0530
Message-ID: <CAJAoDUhcXmmVs1f30bcMrvLoAjoaM+UnFHqueQUqLWAy88bNdA@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] staging: rtl8723bs: include: Further clean up
 function declarations
To: Joe Perches <joe@perches.com>
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 Larry Finger <Larry.Finger@lwfinger.net>, linux-kernel@vger.kernel.org,
 hdegoede@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jul 26, 2020 at 11:45 PM Aditya Jain
<aditya.jainadityajain.jain@gmail.com> wrote:
>
> On Sun, Jul 26, 2020 at 10:45 PM Joe Perches <joe@perches.com> wrote:
> >
> > On Sun, 2020-07-26 at 17:02 +0200, Greg KH wrote:
> > > On Sun, Jul 26, 2020 at 07:50:12PM +0530, Aditya Jain wrote:
> > > > Cleaning up messy multiline function declarations in hal_phy_cfg.h
> > []
> > > > diff --git a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
> > []
> Ok, I'll merge this patch with the previous one. Had separated the two
> to make the diffs smaller thinking they'll
> be easier to review. But yeah, I get the point.
> > > > -void
> > > > -PHY_SetSwChnlBWMode8723B(
> > > > -struct adapter *Adapter,
> > > > -u8                         channel,
> > > > -enum CHANNEL_WIDTH         Bandwidth,
> > > > -u8                         Offset40,
> > > > -u8                         Offset80
> > > > +void PHY_SetBWMode8723B(struct adapter *Adapter,
> > > > +                   enum CHANNEL_WIDTH Bandwidth,   /*  20M or 40M */
> > > > +                   unsigned char Offset    /*  Upper, Lower, or Don't care */
> > >
> > > Those comments should go at the top of the function declaration, in
> > > kernel doc format.
> >
> > Not every external function needs kernel-doc.
> >
> > This is a realtek staging driver that likely it will never be
> > moved out of staging.
> >
> >
> Should I just remove the comments then? Sorry, but I'm a newbie, and
> not really sure what the function is or supposed to do.
> I can try looking it up if kernel-doc is required here.
Hi all,

Any directions on how I should continue?
>
> Regards,
> Aditya Jain

Thanks and Regards,
Aditya Jain
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
