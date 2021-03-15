Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C39CA33C74C
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 21:01:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5122B83842;
	Mon, 15 Mar 2021 20:01:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E8ovtB7LDrf0; Mon, 15 Mar 2021 20:01:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5179E83760;
	Mon, 15 Mar 2021 20:01:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D86B61BF95A
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 20:00:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D46A0430E6
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 20:00:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UWoMCJpeaDNk for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 20:00:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-il1-x12b.google.com (mail-il1-x12b.google.com
 [IPv6:2607:f8b0:4864:20::12b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2CED940003
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 20:00:28 +0000 (UTC)
Received: by mail-il1-x12b.google.com with SMTP id k2so10576914ili.4
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 13:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SaSOoIxes03bHpWUooj+6+ewuXi/Vmtw63TM+HLF9L8=;
 b=eS7HTA1CDl8ccn1pHkFmhPOk8/AlrZMfGwncoeCi7AQIQVOd79gAx9m6kj3QYnUb47
 MxlkV2rY2JMLdkoIdm6yz4mCVdgGgetyBtzMRVAis1d1g73dH5hjfofSB1CR5qCKLvJo
 8TfKD/SIC92DISesqp7OPW25vs9bXG6kB+vHRLoZ4u6MO5JhIyCxwu/3ntQp4DB3KcY9
 yRKoTRYgguy5FukC/xT47rA0l5Se1jhjRTH91kzkMwMnCGiqwVsDtZYpZ9pRPOzF80yh
 vugMKOjJHGWs/UcaarhoQpq1ZKnHzeFvik4XQlwrat8noWxZP5ZfA0mSZdFjFFFPEvn5
 0D1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SaSOoIxes03bHpWUooj+6+ewuXi/Vmtw63TM+HLF9L8=;
 b=E+BgJ2Uy2c4UK6e5FOElnLB/Lfq3YfjvzP7a2W9MGj8fDTZaD+FvSJxjae5woLjPx1
 2zlcpAnj13zN5z662S9IUT7YSvllalvCTZAhIVcASKqzFKwkXDM2jV+QqIqkjTBh8SDn
 6xPz97tausrNCgEAIuCod8Idht/kxnt4q9pLOgDe1iDP482/YhSDCkxiIKdvC2DS3DR6
 H3HI9AL+Qo+r6GVG2HWiGzTwt6vIRJvGC/iQVLsqRqW2Z7GhCB3kKx0+ouOIKxmqyaZb
 lkXHyBCyQ8cgdxre5OLJuBwANq5nFT6lEU5qHypHpqjqtG5tohmSVsBiztaHdMafOC0o
 UUEA==
X-Gm-Message-State: AOAM533UkHitUnpAxyl+reF4mCqCFKiVTR+qnbbaQOdRW0Ku9r2TtaqF
 0iUOBn0nUxU8y2WEa2fIyadnzHq6VfsOy2VkbzU=
X-Google-Smtp-Source: ABdhPJypLcpbSKR4xnoaFP9F3f6VMO35r0f7ds36bijQO3NVnMxR3QAoAM5VGva8qRnVO5/aYWJWaZoKjg1/sdQSXEE=
X-Received: by 2002:a92:740c:: with SMTP id p12mr1052065ilc.9.1615838427364;
 Mon, 15 Mar 2021 13:00:27 -0700 (PDT)
MIME-Version: 1.0
References: <20210314035757.2740146-1-ztong0001@gmail.com>
 <5d7a5e1c-35ab-58cb-ebcd-da5b280c802e@mev.co.uk>
 <858341a6-c105-1440-aa4d-ea0217f2ec89@mev.co.uk>
In-Reply-To: <858341a6-c105-1440-aa4d-ea0217f2ec89@mev.co.uk>
From: Tong Zhang <ztong0001@gmail.com>
Date: Mon, 15 Mar 2021 16:00:16 -0400
Message-ID: <CAA5qM4AJRYndkXSiW5Y4OCFcH97mf6UiiEEox+TQs8-N957mJA@mail.gmail.com>
Subject: Re: [PATCH] staging: comedi: replace slash in name
To: Ian Abbott <abbotti@mev.co.uk>
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
Cc: devel@driverdev.osuosl.org, open list <linux-kernel@vger.kernel.org>,
 "Alexander A. Klimov" <grandmaster@al2klimov.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Thanks Ian,
I have submitted a v2 patch based on your suggestions.
Thanks,
- Tong

On Mon, Mar 15, 2021 at 6:48 AM Ian Abbott <abbotti@mev.co.uk> wrote:
>
> On 15/03/2021 10:44, Ian Abbott wrote:
> > On 14/03/2021 03:57, Tong Zhang wrote:
> >> request_irq() wont accept a name which contains slash so we need to
> >> repalce it with something else -- otherwise it will trigger a warning
> >> and the entry in /proc/irq/ will not be created
> >>
> >> [    1.565966] name 'pci-das6402/16'
> >> [    1.566149] WARNING: CPU: 0 PID: 184 at fs/proc/generic.c:180 __xlate_proc_name+0x93/0xb0
> >> [    1.568923] RIP: 0010:__xlate_proc_name+0x93/0xb0
> >> [    1.574200] Call Trace:
> >> [    1.574722]  proc_mkdir+0x18/0x20
> >> [    1.576629]  request_threaded_irq+0xfe/0x160
> >> [    1.576859]  auto_attach+0x60a/0xc40 [cb_pcidas64]
> >>
> >> Signed-off-by: Tong Zhang <ztong0001@gmail.com>
> [snip]
> > Userspace applications can use these strings to determine the board
> > type, so changing the strings would break those applications.
> >
> > I suggest passing the comedi driver name "cb_pcidas" to request_irq()
> > for now.
>
> Oops, I meant "cb_pcidas64".  But you could reach that via
> dev->driver->driver_name if you want (where dev is the struct
> comedi_device * parameter).
>
> --
> -=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
> -=( registered in England & Wales.  Regd. number: 02862268.  )=-
> -=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
> -=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
