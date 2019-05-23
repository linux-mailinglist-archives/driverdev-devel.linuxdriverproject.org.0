Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C5627799
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 10:03:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 71B8887ED9;
	Thu, 23 May 2019 08:03:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d9wJLLRO8MqA; Thu, 23 May 2019 08:03:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5E55885F4B;
	Thu, 23 May 2019 08:03:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 76B381BF5F5
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 08:03:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 705D32152A
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 08:03:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CRrvTDsfqbBJ for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 08:03:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by silver.osuosl.org (Postfix) with ESMTPS id D4EE5207A9
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 08:03:04 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id a10so4562328ljf.6
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 01:03:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=GPOuorQ32uJ+YRQwwZE95bT2omKKOwwwtpWjGVHMWoc=;
 b=Heyrg98N4Wo26gnY/JVGTBNNmNoWbhwP0yo4dKt8H+O8ILQDm1qKexfQsxO7gNi1GT
 S7SHMEETOSgo5Joz3ay/FP4fFXkduXjtlpBbDX5lk3eWOKhg5xaH6fhamfXysIWm+kUh
 Hmwp5bh9RrKnQDbQwhrnGQsIGG9WNAPMdomWdMGEEvTMNO+zbduR3Mpx83FcWC3ZLTDp
 cmlMeY9LFjqiDOV9m6NVxZcIhiwBFgFdg1+fmVBbhfSR4tCRcVzxRGoOuOKGllD9rYZ/
 YQhOeOnC19jtgPxSN4yqu/3vMsT6tdGJFQrXx69LNdX8TJtbYyEediVig3ukUfUgYKgB
 w/hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GPOuorQ32uJ+YRQwwZE95bT2omKKOwwwtpWjGVHMWoc=;
 b=VUQN1ghzBtV1PlmcqOqswn+Sy1spUNTZw+J7zrxvKTB/nXY4/yqFdFba5YT8jsgeSu
 yhLQv0e7k416Lg5A6XGqAzIWK9OrgcuIkVCcxpGuU1HcxuO0J96RTM+WQWfeU41FSL0t
 IwNNsTASsiVRDKb3gG/pDiwQ1IOVZ0sZggtWv/WXtOluybEYu2mF/vihOz4Dtx/nRU5G
 vi1ZCDzynHW4fYQvuft6iWsNwS5O8FmCrPs3CUZEledsAWOkbx+FtjclgHc/K2W7k9rh
 pVUvU6ofDvMMWudQk6H5A3YazeNqgskLW7wyjg6JVpvGY053Hbtol8IseXKwC37U3poF
 3D3A==
X-Gm-Message-State: APjAAAXFUGsUVmfMbnm7huYcTsS/F9ZgwtTyf1DBGcN7wNk+dNO45mbr
 0bufevXBRd1H6HU8bkZQ0XRQuQ==
X-Google-Smtp-Source: APXvYqyoOD/ptktk0ASGAWXNuvhw2DiZr5qttk4R7BCV+c0nQHZ/sm8WqfO9PEdrq6z1NP1e4oRcpg==
X-Received: by 2002:a2e:5bca:: with SMTP id m71mr45364215lje.116.1558598582716; 
 Thu, 23 May 2019 01:03:02 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id p5sm5891662lfc.80.2019.05.23.01.03.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 23 May 2019 01:03:02 -0700 (PDT)
Date: Thu, 23 May 2019 10:03:00 +0200
From: Simon =?utf-8?Q?Sandstr=C3=B6m?= <simon@nikanor.nu>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 1/6] staging: kpc2000: fix indent in cell_probe.c
Message-ID: <20190523080300.kri23fma2sqabvh4@dev.nikanor.nu>
References: <20190522205849.17444-1-simon@nikanor.nu>
 <20190522205849.17444-2-simon@nikanor.nu>
 <20190523072625.GA16429@kroah.com>
 <20190523072759.GA16656@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523072759.GA16656@kroah.com>
User-Agent: NeoMutt/20180716
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 23, 2019 at 09:27:59AM +0200, Greg KH wrote:
> On Thu, May 23, 2019 at 09:26:25AM +0200, Greg KH wrote:
> > 
> > This chunk does not match what you said this commit did :(
> > 
> > Please fix up and resend.
> 
> Actually, wait, rebase and resend after I apply your other patches.
> I'll hand-edit this patch to remove this chunk as your other fixes are
> good...
> 
> thanks,
> 
> greg k-h

Wops. OK, will do.

Thanks

- Simon
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
