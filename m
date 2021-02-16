Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F1431CD1F
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 16:48:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 32A6D8584A;
	Tue, 16 Feb 2021 15:48:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aRZ-gLFWoP1v; Tue, 16 Feb 2021 15:48:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0B44A85593;
	Tue, 16 Feb 2021 15:48:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7E8551BF59E
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 15:48:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6BFAD6F479
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 15:48:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t57qHIKiXaFl for <devel@linuxdriverproject.org>;
 Tue, 16 Feb 2021 15:48:07 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 9B6C26F4F7; Tue, 16 Feb 2021 15:48:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6DB5A6F479
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 15:48:06 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id t26so6480310pgv.3
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 07:48:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=yKpUz4pp/u/PHJPYKcG1YaVfe5CKl2imPNvR4JyBFYE=;
 b=bfsYo575GoJd041ok+laM4Ze2S7KyjHJf0Srx5FyNMReJb74sZo75MjvzAVGc1anAQ
 6lgCnMT+leWn3V8hJesoG9eeQ93b7XrMlXcfyIXEc3idRL1auUm4wDo0TsTVBoPN0joV
 ou/TaTydMyNYRMIVv2ppEyXf0drLwBGQReum0gV/fhojLcA2Haz4I/f4RTFJldjbOrrI
 RyQ/mWRqnDQPSQMFjrvvhR//MY5L5O9CdzXq8v3nDW4Zb0x5GI7djRS8aWRV05sP8UKB
 yaX/6fsnhdA08FPa5rKljfhsuRJza+x8f/ZvF7c8VL5S4TOUIqfgsa16dah9NO2dMSr3
 QRkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=yKpUz4pp/u/PHJPYKcG1YaVfe5CKl2imPNvR4JyBFYE=;
 b=AjUiEb+xPN4fHzPiGkkFmYrNYo8mJoPjQmO68qHKpQjBKbInCPG7dm7V3scfQKDER9
 h8zN5GCG9uOdI6WChl4Xx+M/sc50UZoCBwCdaRrOBPnextDSvMUTYZzUKxskY+gaj77B
 4bB5Y4GFn94ArCNgAjWsUDmdwcEh9wrTf5tiwHH2uysX6j89kMCDBWng9L2ZjsHnBQC2
 hVQUXCNpVDVq2/u5K0kYgMcoHOhLCuiXIZ9Bl60uRnalze6GKouce5AH4Syp6JCHmJGh
 boZ99cVcSYP0hmE6fKdlF1eUm5wwEP7geJS+auIj9PN8nbZqQ3f7KLRExlZjxtZdoTyo
 /rsw==
X-Gm-Message-State: AOAM532ioNkJrKpsKsc6Udw1O6vKIAbYOqDSyW+VJDeL5J23c5KPeF2p
 7KQFbsuSIe0Nd9A1TV6W+RY=
X-Google-Smtp-Source: ABdhPJwaooUaIKDd1k8p39TS9r9FEuHlOTnCnoBBnatGbzSGokeWf0RqRcRmZatTM6RlcbYYacdx4w==
X-Received: by 2002:a63:c1d:: with SMTP id b29mr19918863pgl.9.1613490485842;
 Tue, 16 Feb 2021 07:48:05 -0800 (PST)
Received: from localhost ([2402:3a80:11ea:c83a:a2a4:c5ff:fe20:7222])
 by smtp.gmail.com with ESMTPSA id n142sm22804138pfd.82.2021.02.16.07.48.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Feb 2021 07:48:05 -0800 (PST)
Date: Tue, 16 Feb 2021 21:18:00 +0530
From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
To: Alex Elder <elder@ieee.org>
Subject: Re: [PATCH 02/13] staging: greybus: Switch from strlcpy to strscpy
Message-ID: <20210216154800.jg24ahfj52t6qgbd@apollo>
References: <20210131172838.146706-1-memxor@gmail.com>
 <20210131172838.146706-3-memxor@gmail.com>
 <b565bdae-10a9-9b6c-ae60-dcee88f7dedd@ieee.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b565bdae-10a9-9b6c-ae60-dcee88f7dedd@ieee.org>
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
Cc: linux-fbdev@vger.kernel.org, Jon Nettleton <jon.nettleton@gmail.com>,
 Mark Greer <mgreer@animalcreek.com>, Marc Dietrich <marvin24@gmx.de>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Thomas Gleixner <tglx@linutronix.de>,
 ac100@lists.launchpad.net, devel@driverdev.osuosl.org,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Florian Fainelli <f.fainelli@gmail.com>, Daniel Drake <dsd@laptop.org>,
 Jens Frederich <jfrederich@gmail.com>, Viresh Kumar <vireshk@kernel.org>,
 Robert Richter <rric@kernel.org>, Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 Johan Hovold <johan@kernel.org>, Ian Abbott <abbotti@mev.co.uk>,
 Al Viro <viro@zeniv.linux.org.uk>, linux-tegra@vger.kernel.org,
 William Cohen <wcohen@redhat.com>,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 Alex Elder <elder@kernel.org>, Teddy Wang <teddy.wang@siliconmotion.com>,
 greybus-dev@lists.linaro.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>, Mike Rapoport <rppt@kernel.org>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 16, 2021 at 08:24:59PM IST, Alex Elder wrote:
> This is a good change.  But while you're at it, I would
> appreciate if you would convert a few spots to use
> sizeof(dest) rather than a fixed constant.  I will
> point them out below.
> 
> If this is the *only* request for a change on your
> series, please tell me that and I can sign off on

So far, this has been the only request.

> this without you implementing my suggestion.  But
> if you post a version 2, please do what I describe.
> 

I will incorporate these if I end up sending a v2.

Alternatively, would a separate patch with your suggestions applied on top of
this be acceptable, if I don't?

-- 
Kartikeya
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
