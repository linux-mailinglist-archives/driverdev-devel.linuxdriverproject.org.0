Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F03C31622C
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 10:27:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DA04B85608;
	Wed, 10 Feb 2021 09:27:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hcLmAH79YWB0; Wed, 10 Feb 2021 09:27:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4012E858B3;
	Wed, 10 Feb 2021 09:27:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 945131BF3A7
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 09:27:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 87B3987228
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 09:27:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cXPCFolJ85YI for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 09:27:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com
 [209.85.210.172])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EAF9A87227
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 09:27:32 +0000 (UTC)
Received: by mail-pf1-f172.google.com with SMTP id 189so880289pfy.6
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 01:27:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zu62HP9m63yZE307VzYXxI9D7LUnBeJ+ipjKTDKOcS0=;
 b=Gl0/MK8Ia125V6rxU6YRdy+GdRjKdrmWJJrqp4QGO4FmRGks4C0PgxcLADrp2Q6xv2
 dI83gC+/4BkvR507pdmowYYLTPD9yddPCiYVtkG2qxkBV43G3/dhfCceSwad0uTQN/Ck
 8fxRPDK53thfPiqHj9vyNCnWHaAo7tfLXL5a5txDjq6bjSfa2lGG798543Lm2nH/OKpO
 k4FuGmEnlMeCaHxqH+AkZLJx45kEzNaMb2X8ht0WXpdSdMG40qwe5CkjvZuqwS8U5bQH
 zfEoGZP83M5Axsu75y0g/OMbNGvgFb3NfVa+Uesyy34zzNSexLCXZ0X+8LBa/+ZJM6sg
 KX+A==
X-Gm-Message-State: AOAM5335pw6B94MFaWH8EtKQM1ZhvK5/MBFjKSf+SAiHusd394p52k3X
 gDXgC5RgdpInycbnCxQnSqY=
X-Google-Smtp-Source: ABdhPJxSnmaDqTA9myTTiCWdo0YZbdY1NjfXetCIwjvCv7m+cN+YPJCUIyJnIY5CrDOhsh+TSx8i3w==
X-Received: by 2002:a63:2d3:: with SMTP id 202mr2236181pgc.438.1612949252571; 
 Wed, 10 Feb 2021 01:27:32 -0800 (PST)
Received: from karthik-strix-linux.karthek.com ([192.140.154.101])
 by smtp.gmail.com with ESMTPSA id y15sm1635433pju.20.2021.02.10.01.27.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 01:27:31 -0800 (PST)
Date: Wed, 10 Feb 2021 14:57:27 +0530
From: karthek <mail@karthek.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: rtl8723bs: fix function comments to follow
 kernel-doc
Message-ID: <YCOm/1Tu5Su3BZ9c@karthik-strix-linux.karthek.com>
References: <YCL6vrGPQ0uDZUI8@karthik-strix-linux.karthek.com>
 <20210210080636.GT2696@kadam>
 <CAJ5zXr1hJ6ts7Gqi_vfaJceZ8qKPgFk479h4sA9AxFrAdB8vHw@mail.gmail.com>
 <20210210090120.GU20820@kadam>
 <CAJ5zXr1OW+RfNNuXOZDjUvm=EKz5C9=GPc243z3Wk_qc3N=6sQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ5zXr1OW+RfNNuXOZDjUvm=EKz5C9=GPc243z3Wk_qc3N=6sQ@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 10, 2021 at 02:38:28PM +0530, karthek wrote:
> On Wed, Feb 10, 2021, 2:31 PM Dan Carpenter <dan.carpenter@oracle.com>
> wrote:
> 
> > On Wed, Feb 10, 2021 at 02:28:31PM +0530, karthek wrote:
> > > On Wed, Feb 10, 2021 at 1:37 PM Dan Carpenter <dan.carpenter@oracle.com>
> > wrote:
> > > > > @@ -789,7 +759,7 @@ static void phy_PostSetBwMode8723B(struct
> > adapter *Adapter)
> > > > >
> > > > >               PHY_SetBBReg(Adapter, rFPGA1_RFMOD, bRFMOD, 0x0);
> > > > >
> > > > > -/*                   PHY_SetBBReg(Adapter, rFPGA0_AnalogParameter2,
> > BIT10, 1); */
> > > > > +     /*PHY_SetBBReg(Adapter, rFPGA0_AnalogParameter2, BIT10, 1); */
> > > >
> > > > This format is wrong.  Anyway, just delete the commented out code.
> > > >
> > > > regards,
> > > > dan carpenter
> > > >
> > >
> > > how can i delete that, i have no idea what this driver does
> > > i'm just fixing coding style issues for eudyptula challenge.
> > > i dont think its a good idea to delete the code without knowing its
> > > purpose even though its commented out
> >
> > Commented code obviously doesn't do anything at all?
> >
> > regards,
> > dan carpenter
> >
>
sorry for that html mail, im onthego,i sent it from phone
anyway here is the original message:

Ofcourse it does nothing

But why does it exist in the first place,
 
Why maintainer decided to comment it out without just deleting it?
Maybe there is some reason which i don't know
So i decided not to touch it
 
Anyway I'm new to this so just say what should i do now?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
