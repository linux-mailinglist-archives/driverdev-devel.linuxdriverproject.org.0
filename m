Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B11EF1470E
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 May 2019 11:04:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 088658742F;
	Mon,  6 May 2019 09:04:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A8OKaBcNWBqS; Mon,  6 May 2019 09:03:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DB8838733F;
	Mon,  6 May 2019 09:03:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6B1831BF3F2
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 09:03:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6661E862E8
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 09:03:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EgLvimAid1qA for <devel@linuxdriverproject.org>;
 Mon,  6 May 2019 09:03:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A354A86151
 for <devel@driverdev.osuosl.org>; Mon,  6 May 2019 09:03:53 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id d9so6045071pls.8
 for <devel@driverdev.osuosl.org>; Mon, 06 May 2019 02:03:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2zkFvMfXSuPxA7TswP4qZ+QIZKRpTzLAUwlBxIZ9PzU=;
 b=YiczZxhl+N5iLdzUGTmZ+vv61ahbfT5sYkO+ZKl1O183V89+BhJz/LVCYZW69Rs96I
 B9L09hT9RKBTMzQPy68tiva/wZUTF1HeqiQA0wgIQKQi9hc9wauqzRc3OKkCm1b+45xD
 /TIxR7gFTxFuR4TGryfYzNp53n1d0MoSOlSKqUI1PygQXIr4DIq/BsZfwXixIBOH9ZxQ
 yFa4fMS2Zky76vcoykF14xxJXsTp6HA89kojG6J76npL+WXgKQ2KtB8ZUuikGBrAHTkD
 gd51bYyzDfYbsyUC+pmkXYFFrzi2nJRQ6fAyiK8dpDyV02X1sRuhxEHafOiBQ4LbnHZJ
 uFzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2zkFvMfXSuPxA7TswP4qZ+QIZKRpTzLAUwlBxIZ9PzU=;
 b=paJDxRDZ2RCljFJAVRuyjs2oYyQJzXvKMgd1496976yA5BYx6USQoZZ8IQ73ZILLul
 bNWl+01EMTXeDHAN+Tr+jV/DBSCUi74nyn0Cqgh1GOUOleupqrW52IEGEWEK4rDJrnxP
 2spHZaR37IFdRv+GDEo44hHFDBCahH71hRVXvN7OYT+2G32Tio8Nn0Kv5ZhlgGE2rSMB
 cCsVB7Yc+PsmVGVNBmW48hI+i4bi5enRgBV/7kBkiUS2hVhA37RHS/zmFlLLYzk+bKbd
 Tcs1vc9I1LK7cOD4fKc0pkanByBJKecBnGVLAfk92/ZtZAj5r+Cl+3VeVJR0Uu/EG7Yv
 3xCw==
X-Gm-Message-State: APjAAAUZIAQIvZE7ALogXdPtSoPqaPnVyyQhXYRhSzlzROiR9VsSdsC6
 ZQaDxz12ajgePlUe0Z486wCfw278hdoRoMr2S84=
X-Google-Smtp-Source: APXvYqzcd/LiJVbbE8cCf+fOVIBhczP6XN4ND6V/1pkV1QnBDFee3E6dAicqEB0BMR5uY867+F0seVXH98gF0RaaX4M=
X-Received: by 2002:a17:902:8349:: with SMTP id
 z9mr30421370pln.144.1557133433288; 
 Mon, 06 May 2019 02:03:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190416202013.4034148-1-arnd@arndb.de>
In-Reply-To: <20190416202013.4034148-1-arnd@arndb.de>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 6 May 2019 12:03:42 +0300
Message-ID: <CAHp75Vc2-zzRYk0vpdPQm5duZwW+v=svEndTPV4Sr59QrGcMHg@mail.gmail.com>
Subject: Re: [PATCH v3 00/26] compat_ioctl: cleanups
To: Arnd Bergmann <arnd@arndb.de>
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
Cc: Linux NVMe Mailinglist <linux-nvme@lists.infradead.org>,
 linux-iio <linux-iio@vger.kernel.org>, linux-remoteproc@vger.kernel.org,
 linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 linux-ide@vger.kernel.org,
 "open list:MEMORY TECHNOLOGY..." <linux-mtd@lists.infradead.org>,
 sparclinux@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 linux-scsi <linux-scsi@vger.kernel.org>, linux-bluetooth@vger.kernel.org,
 y2038@lists.linaro.org, qat-linux@intel.com, amd-gfx@lists.freedesktop.org,
 linux-input <linux-input@vger.kernel.org>,
 Marcel Holtmann <marcel@holtmann.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 "open list:REAL TIME CLOCK \(RTC\) SUBSYSTEM" <linux-rtc@vger.kernel.org>,
 ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, ceph-devel@vger.kernel.org,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Karsten Keil <isdn@linux-pingi.de>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 USB <linux-usb@vger.kernel.org>,
 "open list:TI WILINK WIRELES..." <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:HFI1 DRIVER" <linux-rdma@vger.kernel.org>,
 linux-crypto <linux-crypto@vger.kernel.org>, netdev <netdev@vger.kernel.org>,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>,
 linux-integrity <linux-integrity@vger.kernel.org>,
 "open list:LINUX FOR POWERPC PA SEMI PWRFICIENT"
 <linuxppc-dev@lists.ozlabs.org>, "David S. Miller" <davem@davemloft.net>,
 linux-btrfs@vger.kernel.org, linux-ppp@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Apr 16, 2019 at 11:23 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> Hi Al,
>
> It took me way longer than I had hoped to revisit this series, see
> https://lore.kernel.org/lkml/20180912150142.157913-1-arnd@arndb.de/
> for the previously posted version.
>
> I've come to the point where all conversion handlers and most
> COMPATIBLE_IOCTL() entries are gone from this file, but for
> now, this series only has the parts that have either been reviewed
> previously, or that are simple enough to include.
>
> The main missing piece is the SG_IO/SG_GET_REQUEST_TABLE conversion.
> I'll post the patches I made for that later, as they need more
> testing and review from the scsi maintainers.
>
> I hope you can still take these for the coming merge window, unless
> new problems come up.

>  drivers/platform/x86/wmi.c                  |   2 +-

Acked-by: Andy Shevchenko <andy.shevchenko@gmail.com>

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
