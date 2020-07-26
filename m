Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E95622E1ED
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jul 2020 20:15:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 31D0988572;
	Sun, 26 Jul 2020 18:15:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e+vwvvKVY5JV; Sun, 26 Jul 2020 18:15:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9C0D18816A;
	Sun, 26 Jul 2020 18:15:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ABEE01BF314
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 18:15:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A8B5C8604A
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 18:15:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sEdmyB0WcjJd for <devel@linuxdriverproject.org>;
 Sun, 26 Jul 2020 18:15:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CAE5D86049
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 18:15:47 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id k20so4937536wmi.5
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 11:15:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PiMm1yyj8Q6tWrjven5zlrS3Z6213SZfjWTHd4vlUEs=;
 b=CmLMxf6kuw6cGyk+BN9PWV10v+ZIuKboIGE4KjhBEWxLqJBNXjSI3lzOYhcEDLn2+I
 5gBkC+WleShAEybkvXkPE+M34ocghl9dpoyI9grS8J+/xnGSTfAtfg2o4j57uXxRaxzq
 sz7efvYjguxQiemKygzsreiedWNkvEyW5uJACcZUCa8CK8Dj3CDRW3wlAIMyyFPUUfzu
 shOycahC9xmGXJRnp7SeVGmlgKLE89yQxsyDJZsu42FUwE/1XIS4DsgohQbGTCWx1OC5
 yICgBnq0Q8arxcc5D4LXLSESoE6dzHIe2k+ZStnawTRkp9X9KX0DPtmENs6o27Sp0tLp
 VZeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PiMm1yyj8Q6tWrjven5zlrS3Z6213SZfjWTHd4vlUEs=;
 b=C7eAfLuj23Of5/GSgrMjn84ZyUkZN3jBUVZCSHdyek+vOSHzcGuGXJSsYWUaR/2dSo
 NIAuM/H9gC96lu/ph1l2J0mnQKee/C6iGoLiSfe7h/58d/HtpDG0i7alxJx9GI/fgzty
 3RQzZGUQVzmfj4lLKCZewHUwGUxNFTwWSDc96zeFOVOfj1cLhC+E5r6BdVgDMG88T9nJ
 bokFb+iSb60QtGZNCM760jXUo67Lns1DPkTjBAut48EN/F3jd/d77Fb2TrzOTFkRI/K6
 Hm3LA180Oh53acBN9gV6oqkiQHMjcLS9s0cwgNsPZMlumT9/H1jw98wUgXDxsbkg65Q6
 Qo+g==
X-Gm-Message-State: AOAM53307GeRmpBLpiEAQCx5DE8F5H0VmSZhcnNShn2ILuxDAu+zmlIH
 oeCKaToctYI4mJY+uYXnrjaPruUnU4YQVw0M9Bo=
X-Google-Smtp-Source: ABdhPJwkNpZuNMVrZC51FWF7gZY8qO0E3BYnZEcsXKTs5g22I6lRW5H9rVnp97x89RgJscB5uaGUnmkuzahbN7KpyRY=
X-Received: by 2002:a1c:3b02:: with SMTP id i2mr16770291wma.24.1595787346092; 
 Sun, 26 Jul 2020 11:15:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200726141831.2662-1-aditya.jainadityajain.jain@gmail.com>
 <20200726142013.2891-1-aditya.jainadityajain.jain@gmail.com>
 <20200726142013.2891-3-aditya.jainadityajain.jain@gmail.com>
 <20200726150244.GD452766@kroah.com>
 <1177f80aa848a294f65e305729304b76d1e5ee98.camel@perches.com>
In-Reply-To: <1177f80aa848a294f65e305729304b76d1e5ee98.camel@perches.com>
From: Aditya Jain <aditya.jainadityajain.jain@gmail.com>
Date: Sun, 26 Jul 2020 23:45:34 +0530
Message-ID: <CAJAoDUjRZTxcOJGs2wqPPYyVCYJJTs1NWtmD0+yMXLttgCCQyA@mail.gmail.com>
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
 Larry.Finger@lwfinger.net, linux-kernel@vger.kernel.org, hdegoede@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jul 26, 2020 at 10:45 PM Joe Perches <joe@perches.com> wrote:
>
> On Sun, 2020-07-26 at 17:02 +0200, Greg KH wrote:
> > On Sun, Jul 26, 2020 at 07:50:12PM +0530, Aditya Jain wrote:
> > > Cleaning up messy multiline function declarations in hal_phy_cfg.h
> []
> > > diff --git a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
> []
Ok, I'll merge this patch with the previous one. Had separated the two
to make the diffs smaller thinking they'll
be easier to review. But yeah, I get the point.
> > > -void
> > > -PHY_SetSwChnlBWMode8723B(
> > > -struct adapter *Adapter,
> > > -u8                         channel,
> > > -enum CHANNEL_WIDTH         Bandwidth,
> > > -u8                         Offset40,
> > > -u8                         Offset80
> > > +void PHY_SetBWMode8723B(struct adapter *Adapter,
> > > +                   enum CHANNEL_WIDTH Bandwidth,   /*  20M or 40M */
> > > +                   unsigned char Offset    /*  Upper, Lower, or Don't care */
> >
> > Those comments should go at the top of the function declaration, in
> > kernel doc format.
>
> Not every external function needs kernel-doc.
>
> This is a realtek staging driver that likely it will never be
> moved out of staging.
>
>
Should I just remove the comments then? Sorry, but I'm a newbie, and
not really sure what the function is or supposed to do.
I can try looking it up if kernel-doc is required here.

Regards,
Aditya Jain
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
