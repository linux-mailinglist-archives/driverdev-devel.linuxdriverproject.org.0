Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C7B10EE7F
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Dec 2019 18:36:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 66D3285D35;
	Mon,  2 Dec 2019 17:36:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4LjHWseih-Pl; Mon,  2 Dec 2019 17:36:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6024185C7A;
	Mon,  2 Dec 2019 17:36:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 68ACB1BF395
 for <devel@linuxdriverproject.org>; Mon,  2 Dec 2019 17:36:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6572484543
 for <devel@linuxdriverproject.org>; Mon,  2 Dec 2019 17:36:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WVs-Upxb0kYc for <devel@linuxdriverproject.org>;
 Mon,  2 Dec 2019 17:36:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A6EDB86A70
 for <devel@driverdev.osuosl.org>; Mon,  2 Dec 2019 17:36:24 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id k196so437422oib.2
 for <devel@driverdev.osuosl.org>; Mon, 02 Dec 2019 09:36:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=H8ecUYHrlgXWC+SSFS9i4n7p04mhH9a7a/Cpt3ffH28=;
 b=Sf35EoFbsWOdMEu192XWwbMrCaO0l/uAPDrg0e504xYEkn5xLLYrLt3jMickShAHVT
 DH64F4wFjbKE/pHolttk9q+0XZ1ijugRzTfZ3/f4K9rjac7NGmFer9Q+FTfGuNjkU3HP
 IaTS5BSN7OzgHuJqLPQN2pdu0+xePaLprFm4d6/+TiqiVRVl1/uJPbZ6lI+XPImy5A8c
 EkgbB7Xuni64tFTY5huQ1ZXswF/cZicGNmmEOfDfvWZfNsQ2cOhIKzwGyAHIKyzzj63o
 uh2LYyF1XgQ11C0i3Un4mMxh+u5Bkp46ljMqAlzxMnug3NcL5rzApYkTR2KsyNQN3WLV
 tCRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=H8ecUYHrlgXWC+SSFS9i4n7p04mhH9a7a/Cpt3ffH28=;
 b=ktdPMpSp38fmdG2KUbFLhWPLJLtnZaayn/OvEX7gPm5OxBzIKk8hObhzwEHZ/J4XUH
 whQKm4NbE1BgvbkmFXs60noho1lEeKjds56aYxszUtRRlHrgpc6j53gI1cm+pEp37SfO
 7CelKB13NRKl5pGysNGLMa8jGrZzxjF8Im3S5qYxE5IGTa3EeX44i3XXfpytPr8akGeo
 lwZ9AjykWFuLN08et8kLZ3SP2GYbv/G0AiLcE3PdtbDXiBjEbtS09gNooMQpyR8Aar24
 keIMMw7XW71JAYpQPPx713cb9R/q89xp+qK5dyRSlhRTbwBEr2M/5Uyr5Sy+62RI3CD2
 BBNA==
X-Gm-Message-State: APjAAAWQr9MlU7MJzhpm1dZI7D+loy/g8QgRUe2eT0rx4MnG6TByueNz
 ovh+LeVVBI3t4YpCo1oCY3Y=
X-Google-Smtp-Source: APXvYqx7tXNNm+AI29xK9RC81iVgBoPBBGKztdz6XPDBAA1/IVCZuJ079W9XxpduM7rMKHViLKHPuw==
X-Received: by 2002:aca:1903:: with SMTP id l3mr184063oii.16.1575308183838;
 Mon, 02 Dec 2019 09:36:23 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id 47sm11060995otu.37.2019.12.02.09.36.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 02 Dec 2019 09:36:22 -0800 (PST)
Date: Mon, 2 Dec 2019 09:36:20 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging/octeon: Mark Ethernet driver as BROKEN
Message-ID: <20191202173620.GA29323@roeck-us.net>
References: <20191202141836.9363-1-linux@roeck-us.net>
 <20191202165231.GA728202@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202165231.GA728202@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, Julia Lawall <julia.lawall@lip6.fr>,
 linux-kernel@vger.kernel.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Dec 02, 2019 at 05:52:31PM +0100, Greg Kroah-Hartman wrote:
> On Mon, Dec 02, 2019 at 06:18:36AM -0800, Guenter Roeck wrote:
> > The code doesn't compile due to incompatible pointer errors such as
> > 
> > drivers/staging/octeon/ethernet-tx.c:649:50: error:
> > 	passing argument 1 of 'cvmx_wqe_get_grp' from incompatible pointer type
> > 
> > This is due to mixing, for example, cvmx_wqe_t with 'struct cvmx_wqe'.
> > 
> > Unfortunately, one can not just revert the primary offending commit, as doing so
> > results in secondary errors. This is made worse by the fact that the "removed"
> > typedefs still exist and are used widely outside the staging directory,
> > making the entire set of "remove typedef" changes pointless and wrong.
> 
> Ugh, sorry about that.
> 
> > Reflect reality and mark the driver as BROKEN.
> 
> Should I just delete this thing?  No one seems to be using it and there
> is no move to get it out of staging at all.
> 
> Will anyone actually miss it?  It can always come back of someone
> does...
> 

All it does is causing trouble and misguided attempts to clean it up.
If anything, the whole thing goes into the wrong direction (declare a
complete set of dummy functions just to be able to build the driver
with COMPILE_TEST ? Seriously ?).

I second the motion to drop it. This has been in staging for 10 years.
Don't we have some kind of time limit for code in staging ? If not,
should we ? If anyone really needs it, that person or group should
really invest the time to get it out of staging for good.

Guenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
