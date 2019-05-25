Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5605F2A48D
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 May 2019 15:28:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C218A88A05;
	Sat, 25 May 2019 13:28:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9Vgn6EoTH9my; Sat, 25 May 2019 13:28:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 46E9F884F3;
	Sat, 25 May 2019 13:28:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 860F41BF2E3
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 13:28:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 78D88884F7
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 13:28:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dMMtRkLlg1ou for <devel@linuxdriverproject.org>;
 Sat, 25 May 2019 13:28:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C5076884F3
 for <devel@driverdev.osuosl.org>; Sat, 25 May 2019 13:28:28 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id s19so11153223otq.5
 for <devel@driverdev.osuosl.org>; Sat, 25 May 2019 06:28:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9qj1HvIOBrDiTk1oOhNlE+ryU/65VrTB2Fp4BYdFFTY=;
 b=OEw+jbrAZtZ91LNARltGnB0Ee8aP0JV8ce+cfRyKDZWvmimQWWRSIB/eFSiPqWH/qJ
 KNCI9k3RURHl8m7qbIKe/1XI/6n/Qqs9BRNN9a9UURS8+LN2OtDDXiqGTPvCCq0gpyR7
 h0quJgTZUo1OA/D/ALJcGigWfKLCMysuHHcEWaKRvb7e87TbK9bIMcYvY8igZYmaZXto
 rdYdqmcDqq1NOtDYcNAnbZY17/jjEgCYoi26qeAzQK2WVWbMB5FW/F4UgncBw9mob74M
 DxI1I48cZg5zsxCuAqtzkXKWadGHFoxdT+eOn1iF2WC+dqnmp/WXabrwshj8oawa1oOY
 ItOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9qj1HvIOBrDiTk1oOhNlE+ryU/65VrTB2Fp4BYdFFTY=;
 b=R8FBoRXXGPbq0EM2iDxQ+Vv7ArALcq+TUgYqWGEmW/SDbSdxwQmqPM969w3NKKfvps
 gr1F97so8vw30hb30Q0iM79eSRKRCZPUNiUAZlCHfy4jLa/8JR9dTkXO3V09H7CS7lDO
 j3gGsD5tII8x/pSyHt2dct8znRjZ3TTAieHgtuSowNTJ42/rW7v17559mojJFp/nB9UY
 5dY98U7cNIeZG+sL9DZxOINegYu6WRAUSSPGEDv2P8aPIlWm7nrg76c8HQ6D0MqpZrtQ
 l+Yb+XPSEphWVtvxseLr5NKex/70g6h5h93SUP6qi0RkJhPYfDxIu2vpgjaaHoso+yiG
 KGAg==
X-Gm-Message-State: APjAAAWS8cRpFoTVg4pX66XEzkIs0wN7096Y0OTe7AtkAPuh3zDUNBfu
 X+G0Pu6UzLuUkuyYjfNSn1OcDHMwSeQq2kVEl+o=
X-Google-Smtp-Source: APXvYqyv/W7CWZEFDJjPt4W8CmN8QSTDN/a1KF93wl7C/cqTB7j2BCU+AoHao8d64vsYOF3FxneCBLtGmh1bD8B6jTo=
X-Received: by 2002:a05:6830:209a:: with SMTP id
 y26mr36098774otq.232.1558790907820; 
 Sat, 25 May 2019 06:28:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190524060026.3763-1-nishkadg.linux@gmail.com>
 <20190524060026.3763-2-nishkadg.linux@gmail.com>
In-Reply-To: <20190524060026.3763-2-nishkadg.linux@gmail.com>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Sat, 25 May 2019 09:28:16 -0400
Message-ID: <CAGngYiWXH-kjL1wvrH0LcEJ2ADCDBQBCNYh2z4jcsdnixN+HrA@mail.gmail.com>
Subject: Re: [PATCH 2/2] staging: gdm724x: Remove variable
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 colin.king@canonical.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 24, 2019 at 2:04 AM Nishka Dasgupta
<nishkadg.linux@gmail.com> wrote:
>
> The return variable is used only twice (in two different branches), and
> both times it is assigned the same constant value. These can therefore
> be merged into the same assignment, placed at the point that both
> these branches (and no other) go to. The return variable itself can be
> removed.

>  fail:
>         release_usb(udev);
> -       return ret;
> +       return -ENOMEM;
>  }

At the risk of sticking my nose where it doesn't belong...

AFAIK it's a well-established pattern to have a success path returning 0,
and an error path returning ret, where ret gets assigned the err value.

This patch removes the pattern, making it slightly harder for developers
to read. And if the function needs to return different err values in the
future, that future patch will need to add the ret variable back in.

Modern compilers optimize ret away, so the patch won't result in
smaller or more efficient code.

This particular patch sounds like negative work to me.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
