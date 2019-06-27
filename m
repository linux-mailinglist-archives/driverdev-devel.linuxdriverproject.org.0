Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7985357CBD
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 09:06:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CAA9B86101;
	Thu, 27 Jun 2019 07:06:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TSQoqIwfHVfl; Thu, 27 Jun 2019 07:06:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4044E85F88;
	Thu, 27 Jun 2019 07:06:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C47791BF36E
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 07:06:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C03332042F
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 07:06:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cFG+zTwNCNeP for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 07:06:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 2B3F82042A
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 07:06:21 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id u13so2527831iop.0
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 00:06:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LRr+uF1QUQRJ7/F9/T5M30/xxy4B4+/9v+X/o1cToug=;
 b=RfOIL0lOlaZDUF7NWRsawph/bbFNFqJ+tXE5LxfXJCn8qiRwkS4Ecggkv/T5AZItm/
 pc1Xiz9po2siM475iIteHwCSDSkDuj0Y9wEv/H/qJ7vEl2plSf/1kyJPftnmBDUEDibH
 4eeQzoIFss3yffIwTdSl2EP3GBVEMOdM8C/YdtRxi51oa+iWXzsuCfggtOdUn1dyH+ZT
 EjqBuc5p+fNOMxKmrLknPGQZVyEbp4NQUSyJGtGj7JF7OtutTtQttCTK6btdLEg1Djd3
 JyET+4QtL0nZBUIPWQjRJ8wJmrVbHhMJaQ1OogMrVwW8UbOPTHXQz9hmRm2ZzP0f4b6S
 0kUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LRr+uF1QUQRJ7/F9/T5M30/xxy4B4+/9v+X/o1cToug=;
 b=GGWj4Z0KXQ2xDmMGFbzK6oT2g9gpDYkJGRi2gFEUFDMg0hnm2SMam6bAgbbFnxeIV4
 rWv/+bpAtfOkVQYJ40IqI3FXbnV7VCzz0abIfCpkH35ZV7aSL6djfiMqLuU6V8xxudN9
 CIqzrLMja4Y4DHlTCLYdyCQyR4z5IRDQq8AariRqK77dp6o3GPthtfeNvPjLYvp7Voxz
 +r/s486Ubc+tPzdAkcwI37t5D+Z+RdWdgh5t0Nhlunqm7tymVuV3EEHRYia8CJRAWIhL
 7HsEdRMsolYBg8I0AGchrGVOW4FOKvPd13dmPokjf1MGW0u3ab0IFBuylmNM6pm513Ul
 RgCA==
X-Gm-Message-State: APjAAAX+qh/7aJcLMjqmPO8H2OK/GBCgyrnRapXlsxF09M6zohoa7gbj
 O2Oidab3t9GGsyKiMcm0eZCXHAXS6MCURVEJ7aw=
X-Google-Smtp-Source: APXvYqzU4jVA9BLDxzgmTgjUZqDqrJZqJr+0QgODw/agJoAacTv8dQXvqOSFDC5M6zdEAP1pGvH+vzh2jDBhiwJ2bC8=
X-Received: by 2002:a02:c7c7:: with SMTP id s7mr2803109jao.37.1561619180028;
 Thu, 27 Jun 2019 00:06:20 -0700 (PDT)
MIME-Version: 1.0
References: <1561414395-12518-1-git-send-email-wahrenst@gmx.net>
 <20190625075558.GY28859@kadam> <27ed9c22-1d36-7c3e-a81b-5fa1e8245d1e@gmx.net>
 <CAAoAYcNhwoCwRrac7ek+5XfjqJyBUj1jHefidSoLmj_XG7jPHw@mail.gmail.com>
In-Reply-To: <CAAoAYcNhwoCwRrac7ek+5XfjqJyBUj1jHefidSoLmj_XG7jPHw@mail.gmail.com>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Thu, 27 Jun 2019 08:06:08 +0100
Message-ID: <CALeDE9Pz9m3C5sUUOjgbgzH+cxhSByxj1ebHzoUjDVw6gW07zw@mail.gmail.com>
Subject: Re: [PATCH] staging: bcm2835-camera: Restore return behavior of
 ctrl_set_bitrate()
To: Dave Stevenson <dave.stevenson@raspberrypi.org>
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
Cc: devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Stefan Wahren <wahrenst@gmx.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

>   Dave
>
> PS Is linux-rpi-kernel actually behaving for other people? I didn't
> see this patch when it was submitted, and it isn't showing in the list
> archive either.

No, but it never really has for me, it's always been weird in what it
allows through by default and the admin has to approve a lot of things
so sometimes you'll get 100s of mails at once when who ever the admin
is catches up.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
