Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C741CC3B8
	for <lists+driverdev-devel@lfdr.de>; Sat,  9 May 2020 20:47:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5AAF722DEC;
	Sat,  9 May 2020 18:47:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Iu5lGipumeBS; Sat,  9 May 2020 18:47:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E8E0C20484;
	Sat,  9 May 2020 18:47:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 765551BF83B
 for <devel@linuxdriverproject.org>; Sat,  9 May 2020 18:47:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6969820484
 for <devel@linuxdriverproject.org>; Sat,  9 May 2020 18:47:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8jaZA5ql1Fw3 for <devel@linuxdriverproject.org>;
 Sat,  9 May 2020 18:47:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 82EB820481
 for <devel@driverdev.osuosl.org>; Sat,  9 May 2020 18:47:13 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id h26so4068789lfg.6
 for <devel@driverdev.osuosl.org>; Sat, 09 May 2020 11:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc;
 bh=r2VqzdQ3t3l9GLlfIblPu8fIc2SHZonPe2y2Y9yrzwA=;
 b=GNin6+nWM1QP0m2z2hzY8zsRxqDBXtplG9wjFmOI1ojkUNRLK/92I4+Q7OAX+WzfxJ
 jeP6kJWDxAzjEZPTJifP7QYUSRiOgFJ0ke4eAeXHoWxJc0jOMZjK1g5wF0zWOpZxTuhv
 sv0T/R7VPmB2U+RjECSIWuLjjX+Gx2KuWI36/teOaZZHLHYxC3t51ccoY/x9Hv9XdvK6
 jV09Kal555yn4AtGCKL0piKHqimwgL45NBm2bp5fgO9slMCOhh0JzQ+CHBC4lhDoLPvp
 i4ihRv9OUGLBDyKhHPev4lxHDLhsTsxQ34cMV7CmmZYgwfYd/TG5gdUR7BY59qve9I0v
 uyew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc;
 bh=r2VqzdQ3t3l9GLlfIblPu8fIc2SHZonPe2y2Y9yrzwA=;
 b=TcLjuBQGKu0hyvq317z4quzTqrHmpPHPAOTtDlz1+Lza7/XwJ9pPQo+q/3Z2bs70S4
 QC9IeNaXiSjnSvyFnwnGz3AAcaS7x6Ph28jYo+/nHKZ6TDF2xD9dH2SBm8Y+5bHavyWC
 Wpo3VYVJw3z2ZFn1pV6m7Q5OJnDwCcTQzv7d9iTsR+VqozNxVe11EkKh2PJVPovtBdRZ
 ffRzubZ0hVJiKhLrfE73X1f7XTF1CEsyDPNf88WckR04cCcR+sbnhDU6XpzA1Po/xZQB
 +XKqaGK+Os8Mobx+34MyDMybVfeZNDS5x/nIiBoEQ17hxjvqp7ocej+Z8gagEbS15LYm
 AS7A==
X-Gm-Message-State: AOAM532bioosBLc+IgHNy0NHdHUmehFuRXL70pJEbY/rnI3yGTOxUHq5
 A4fpGxnIJXUGhyvd3jm9/N2CY4Lze9bPS48Xsrs=
X-Google-Smtp-Source: ABdhPJy9gyB1ktrqC1Zd3HyibZp0l6obehCp4vpCDO0qkgRUMj3Vjub/ykfUERbE41LdjhQm/0RhnA0bO0Yeti7gp9Q=
X-Received: by 2002:ac2:4945:: with SMTP id o5mr5705467lfi.21.1589050031766;
 Sat, 09 May 2020 11:47:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200509130714.10586-1-john.oldman@polehill.co.uk>
 <20200509171131.GA2495033@kroah.com>
In-Reply-To: <20200509171131.GA2495033@kroah.com>
From: John Oldman <john.oldman60@gmail.com>
Date: Sat, 9 May 2020 19:47:00 +0100
Message-ID: <CAMJX__Skgr+1ZO5JxwnwRt6A1C5rBc50cUDSN+6BM4pmYGPY4w@mail.gmail.com>
Subject: Re: [PATCH] staging: vc04_services: interface: vchiq_arm:
 vchiq_connected.c: Block comments should align the * on each line
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
Reply-To: john.oldman@polehill.co.uk
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 John Oldman <john.oldman@polehill.co.uk>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg

Yea, thanks for the feedback.

Will fix and resend...

John


On Sat, 9 May 2020 at 18:11, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Sat, May 09, 2020 at 02:07:14PM +0100, John Oldman wrote:
> > Coding style issue
>
> Your subject line needs to be much shorter, don't you think?
>
> Please fix up and resend.
>
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
