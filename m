Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6657722DDBE
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jul 2020 11:23:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AE4FD2154B;
	Sun, 26 Jul 2020 09:23:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v7MTl6XZWX2F; Sun, 26 Jul 2020 09:23:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AA9B32152A;
	Sun, 26 Jul 2020 09:23:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 616FA1BF35E
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 09:23:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5D2558836F
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 09:23:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rBvgPrpYlBNX for <devel@linuxdriverproject.org>;
 Sun, 26 Jul 2020 09:23:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9D7178836E
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 09:23:48 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id a14so11993372wra.5
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 02:23:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IRifPYsK+NVyPH264FNNiwkh83/Nree/BqnQLiW9d1c=;
 b=l1SPzlPpdGPY8mrIuX5HzscI1H+iU0B77BLfrJ+HTsHQpZ1CbpuBaxo5y5BQLbagzm
 ahNVMJV+XFViXN0810WuF+oXTSEuAjFRZhMh2tX3oEli8/sF1GKeQPjS6VaRloWiTwuG
 y28IJVlcYcob0iUkzDfsBzo05H/rOvI53pNhD1S2chvYHphbQ4iHLuLaPyzs56xv4OLc
 6pfF9Wcu7iZuNQsIs6oPa6CnupttvnAt/OeUwZWZ83le+KxxKXux0cyCTCSCl+fFdFiW
 GwYoF5CJC6VfOatv4g7JgtRHpXYViK+a4HWo2sNzcTPHAfMwo01uEIaCMjb6MMXPJypI
 QJKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IRifPYsK+NVyPH264FNNiwkh83/Nree/BqnQLiW9d1c=;
 b=fFS/8cxN71LeLO+BI2LYGZ8mPbHQtEPM1lwbcc5GJIBjCy/AEq7U7xfLYPqnU8YZal
 ipU9SuUtF0aPBnaSJ4W7bg0LF+R8Y9NkiACwRTd6jcrkLh4391cetLvkS/ErqFCu0tc/
 RgP47z9UStMKZs/WoY7dg5h9WO0SxM/SMhjbOLffWiumZ59yqXYl486Xl9ZfPWSkEDLv
 H5d6rw5CPDmLYdYfzdNyRdl2fE32qvTpDw+JiibO6ta5oAHtV/156LwfkdVcjAXa4zM0
 uIEaRHO4qzggtmsLIjVPGFM+H49ZE5Fbp89L7gOoGUKATwj/87tXSXyaY4H96s0Dn1ea
 WpPg==
X-Gm-Message-State: AOAM530KnjXdIR/6OyZP3Q+wfzTehBlJqSQVy24z77mklniGEwXoBLqb
 MEafqSMXjfnPOIfzycBjDVsAcoZ6CqZ2sfbsZQ8=
X-Google-Smtp-Source: ABdhPJzmRnX9GtgCQQSUsd47l+Xrw14S4/+hUnnzUXCooTdht3nSiu4kVe23GlLgaRmrU8M/CgnSsMp2RdaYTRNllqs=
X-Received: by 2002:adf:dfcf:: with SMTP id q15mr3987406wrn.345.1595755426875; 
 Sun, 26 Jul 2020 02:23:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200726080215.41501-1-aditya.jainadityajain.jain@gmail.com>
 <20200726082636.GA447282@kroah.com>
In-Reply-To: <20200726082636.GA447282@kroah.com>
From: Aditya Jain <aditya.jainadityajain.jain@gmail.com>
Date: Sun, 26 Jul 2020 14:10:58 +0530
Message-ID: <CAJAoDUjVBon2iiztdER82mHgJtVS6s5XYSajbCTne0KWAzoLvg@mail.gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: include: Fix coding style errors
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
Cc: devel@driverdev.osuosl.org, hdegoede@redhat.com,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jul 26, 2020 at 1:56 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Sun, Jul 26, 2020 at 01:32:15PM +0530, Aditya Jain wrote:
> > Fixing ERROR: "foo *  bar" should be "foo *bar" in hal_phy_cfg.h
> > as reported by checkpatch.pl
> >
> > Signed-off-by: Aditya Jain <aditya.jainadityajain.jain@gmail.com>
> > ---
> >  .../staging/rtl8723bs/include/hal_phy_cfg.h    | 18 +++++++++---------
> >  1 file changed, 9 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
> > index 419ddb0733aa..fd5f377bad4f 100644
> > --- a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
> > +++ b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
> > @@ -42,7 +42,7 @@ u32         Data
> >
> >  u32
> >  PHY_QueryRFReg_8723B(
> > -struct adapter *             Adapter,
> > +struct adapter               *Adapter,
> >  u8           eRFPath,
> >  u32                  RegAddr,
> >  u32                  BitMask
>
> Ick, these are all horrid.  How about just making these all on a single
> line like most functions have them instead of this one cleanup?
>
> Same for the other changes you made in this file.
>
> thanks,
>
> greg k-h

Agreed. I'll clean it up.

Regards,
Aditya Jain
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
