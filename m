Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D5D230E59
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jul 2020 17:47:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A0B258618D;
	Tue, 28 Jul 2020 15:47:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dUbIPJRC3kT1; Tue, 28 Jul 2020 15:47:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8F3C585E07;
	Tue, 28 Jul 2020 15:47:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6DC541BF573
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 15:47:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5978E87C9A
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 15:47:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id br1qo02IoVUB for <devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 15:47:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DB4EC879CF
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 15:47:24 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id v13so1243280oiv.13
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 08:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YCLgayXVR84rgFeMyBYYYRpAkGF7Ck+bhddMBVycb04=;
 b=cMJVZYUseob/GyYm/slYbGX7F8Nm5ECy0snr5+bGRfsWn8HC2dUbmghG5UDIsTrSSR
 8x0ItKdNvs85NKfK4qfcO36B0boH5tg+a9gswRmK2V+NxlgokEPiT8xTIDjvbxB2/da/
 I4YL4YbfIg3tAhgIJQzOSlfc9UlydG6BQiUZYETqUftJsIkQc1tPlVbbONQsOJxrdkCC
 RELXTSJsxvsPXTEUu24HF4+P1BhD/9m5OAle1WfYTHywf8uOaBoXEghmPBxvwlKPZY41
 w2Re/IabeFqMyp75VmjBGkiJRDBRqPjon0D5eUa1N6IPBpnEKjgSzrwZ05oae5j/cvJQ
 uPDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YCLgayXVR84rgFeMyBYYYRpAkGF7Ck+bhddMBVycb04=;
 b=o3S4t19h1LIM+ssQq1kL1jW2uS1LSfZ0yngBR4tNysUDMyOreod01k+EvfioNy0x9Z
 or0Tem+qpCH/hOgbWYetPWAoF+WJMSLUlPSHkSi2BzQqPHHYpn4TwHZ2xM6PjqP30og2
 mXn1Dod+Te3mSp9ncq/JGxc8tHWsVzJBMBG7mGe68kLBVOVvfQ5DMnCA+r7iFaU9+l2u
 4qETdMR1dohY0lfwhv1SXFK0/55ixuGycutZFRhtcRPdEq7b5NfkoloNFMCpusiF7gs2
 mW4tuh5iijtizKyJVI7nOqqPcrqvRVZBcWYzCKYftdWVltOVnP9AdILZB66l2xAaXXOf
 ywPA==
X-Gm-Message-State: AOAM531yLOU13YhvDrFVbyYarZLZ2fmJ8IYfQBndBy0ZuKGvpUbMl5zZ
 iyo2EYaI9jdMTTnKMCa+X7D2Mvvvlx3s95hwmjk=
X-Google-Smtp-Source: ABdhPJyS7mrzx8DGeBh07Zri8yZLkxWNUUJWMY7Z5K/tddbNBKhDPUNoIvoOAGnCP4K4OomxSuELQP2R4UDNmGX56YA=
X-Received: by 2002:aca:c5d6:: with SMTP id v205mr4223108oif.143.1595951244137; 
 Tue, 28 Jul 2020 08:47:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200728143004.3228-1-dhiraj.sharma0024@gmail.com>
 <b357f49c-0ce6-18f5-9f3c-fdead5e4c838@xs4all.nl>
In-Reply-To: <b357f49c-0ce6-18f5-9f3c-fdead5e4c838@xs4all.nl>
From: Dhiraj Sharma <dhiraj.sharma0024@gmail.com>
Date: Tue, 28 Jul 2020 21:17:11 +0530
Message-ID: <CAPRy4h0sZRuYSJr5+Au-H5iaL-73m9b02wAkL5xY-qMvvZY=VA@mail.gmail.com>
Subject: Re: [PATCH] media: usbvision: fixed coding style
To: Hans Verkuil <hverkuil@xs4all.nl>
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
Cc: devel@driverdev.osuosl.org, arnd@arndb.de,
 Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 stern@rowland.harvard.edu, jrdr.linux@gmail.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Sorry I had committed a mistake by not replying to all.

> Hi Dhiraj,
>
> On 28/07/2020 16:30, Dhiraj Sharma wrote:
> > As per eudyptula challenge task 10 I had to fix coding styles. Thus I
> > used checkpatch.pl script and fixed a chunk of warnings and few errors.
>
> As both drivers/staging/media/usbvision/Kconfig and .../TODO say, this
> driver is deprecated and will be removed by the end of this year.
>
> So don't bother with this driver.
>
> Regards,
>
>         Hans

Alright Sir, I read that and thought that it can be merged this year
though. Next if i see such sentences I will not do that
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
