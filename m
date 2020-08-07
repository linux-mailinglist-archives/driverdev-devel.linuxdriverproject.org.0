Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5709023E5A8
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Aug 2020 03:56:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 625E8871F3;
	Fri,  7 Aug 2020 01:56:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 57456omKKPKZ; Fri,  7 Aug 2020 01:56:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 352EF871C7;
	Fri,  7 Aug 2020 01:56:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 580511BF29F
 for <devel@linuxdriverproject.org>; Fri,  7 Aug 2020 01:56:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3BC9D25281
 for <devel@linuxdriverproject.org>; Fri,  7 Aug 2020 01:56:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xBj2CAKAQo4y for <devel@linuxdriverproject.org>;
 Fri,  7 Aug 2020 01:56:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by silver.osuosl.org (Postfix) with ESMTPS id D72682156C
 for <devel@driverdev.osuosl.org>; Fri,  7 Aug 2020 01:55:59 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id v9so483360ljk.6
 for <devel@driverdev.osuosl.org>; Thu, 06 Aug 2020 18:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cD8jsk4+SBG8xPQfCCj2wmUpFVhawKwctfW4av5cjwU=;
 b=j7HC3Z5KWqeecaZcmC3YJkQ+9fE581GofeymgTxpCPrJdWE+UU1MMGXjGjBL3tQfy8
 537lS5kxtZrY9X0agbW+fq+ASnx+ufvq5xYa5fBh5z/aOOGPSrTa23sW4U1ceMrhFzSK
 J4cuZa2LhzUuuEnzgxPFjP4K8a/30hM5cSK5Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cD8jsk4+SBG8xPQfCCj2wmUpFVhawKwctfW4av5cjwU=;
 b=uJqY6tGqUDmGSXKX0rCbQ/JPnp+Dlvl1rF7uK46RYqVB0pEJAm3vkNw31D0uS1lClg
 qv/R3QHy93eFXABgIvm/vsNo1gdtRrsmes5YMUZ5EOAzKD28MuZ6FvZlwV/IFD5nRlwo
 J24Gy/CnUmfO9gXLwMODiwYxtXxPdi0QUdILNnBMtQ/IFaANi0DkG/ASjb8G+pOFvqzt
 3plmHzXfEi0+gFXEHdu9CM7sF/VKSC3T+2seDRUe9UqaSt1PFFgUXW8AfgyKyZbLB0H+
 OhJhhuP33UTaQ/wTNcWGqi9ALr0rwLupFwuKNxPYVydHPqfh4jFGJVm4JRITLBLac+q8
 qcFQ==
X-Gm-Message-State: AOAM5325vSmAuHiCS+8eYA5TM7QrziWD6bfZ86+H15FQLaUHc2R3G4KP
 yR4DhVAvnTqrQIhlACT63hkiBXCob2VTEH2JjKlRsdyK
X-Google-Smtp-Source: ABdhPJw8niI7X7Sw8klc/4xbPNLsxrK/3t5hOTwIymbgO2pDc9aWiI0yYJOrcmGNz7OW7xrCLVM1Q6LDAFSnP9cYNMA=
X-Received: by 2002:a17:907:208e:: with SMTP id
 pv14mr7578996ejb.438.1596765034757; 
 Thu, 06 Aug 2020 18:50:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200710144520.RESEND.1.Id0f52f486e277b5af30babac8ba6b09589962a68@changeid>
 <20200710070332.GA1175842@kroah.com>
 <CANMq1KDcKWgyYYP_m0-WV7602g7zUbU0PPkvwXxbSTF5vFfKGQ@mail.gmail.com>
In-Reply-To: <CANMq1KDcKWgyYYP_m0-WV7602g7zUbU0PPkvwXxbSTF5vFfKGQ@mail.gmail.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 7 Aug 2020 09:50:23 +0800
Message-ID: <CANMq1KC7CgUT+neoOUZbnr8MbDgqEikqt2vn8dxAS1rpX=C2aA@mail.gmail.com>
Subject: Re: [RESEND PATCH] media: atomisp: Replace trace_printk by pr_info
To: Mauro Carvalho Chehab <mchehab@kernel.org>
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
 lkml <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jul 24, 2020 at 8:41 PM Nicolas Boichat <drinkcat@chromium.org> wrote:
>
> On Fri, Jul 10, 2020 at 3:03 PM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > On Fri, Jul 10, 2020 at 02:45:29PM +0800, Nicolas Boichat wrote:
> > > trace_printk should not be used in production code, replace it
> > > call with pr_info.
> > >
> > > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> > > ---
> > > Sent this before as part of a series (whose 4th patch was a
> > > change that allows to detect such trace_printk), but maybe it's
> > > easier to get individual maintainer attention by splitting it.
> >
> > Mauro should take this soon:
> >
> > Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>
> Mauro: did you get a chance to look at this? (and the other similar
> patch "media: camss: vfe: Use trace_printk for debugging only")

Mauro: Another gentle ping. Thanks.

> Thanks!
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
