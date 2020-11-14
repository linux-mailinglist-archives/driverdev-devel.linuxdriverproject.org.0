Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDCE02B2BEF
	for <lists+driverdev-devel@lfdr.de>; Sat, 14 Nov 2020 08:24:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 30D2B879C2;
	Sat, 14 Nov 2020 07:24:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GDI0EQ1C75tr; Sat, 14 Nov 2020 07:24:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8BFA687964;
	Sat, 14 Nov 2020 07:24:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2E93E1BF2A9
 for <devel@linuxdriverproject.org>; Sat, 14 Nov 2020 07:24:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2961F87642
 for <devel@linuxdriverproject.org>; Sat, 14 Nov 2020 07:24:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O0CuNyHPjv5G for <devel@linuxdriverproject.org>;
 Sat, 14 Nov 2020 07:24:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D54528763F
 for <devel@driverdev.osuosl.org>; Sat, 14 Nov 2020 07:24:17 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id n11so11094702ota.2
 for <devel@driverdev.osuosl.org>; Fri, 13 Nov 2020 23:24:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kvTN7auzXu0LV2nC8uxpr4gfFZ6WKuaa9snLUwgGMU8=;
 b=NZ0SpOn8X6PLP9rVoAVyolZQou+dEHBfUCtyXCI2PBm3SiZRm/y0vJQvJzmGz166AT
 +A8T1LdrPD/KoNgzVHY/sekgHmC5Bynk/eGU5RNEjSmMoT+am5b3dNR5R6SaqX8Klzl5
 KSSOkdxKJ/Y+tj9vm98k7KAWZ0l6vyuiPJGEFUKMvedbsXDsKkc20AvM+A+0rKyRr3FI
 XDUX23plQUspXvC7SIxjVSX3Zs+FrvHlPcPpE4luuLRTWi4NqaZUSC3VaKajL4b+2KyP
 Vk5FsB0B6cBTX4qgSEXFojOjsf/uhkh1JbhKg74ycm+ZsAWL8oyuqvpdkTKHQMRWIHBK
 t6/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kvTN7auzXu0LV2nC8uxpr4gfFZ6WKuaa9snLUwgGMU8=;
 b=bA/Ut1ahtbTeECZ8Zx7eaFWCBjKWqr5RpQOB/S3DCTgLBHK3PyVRS5uU8N9ALlT+Iu
 Ixr3pnA0fqqfl6uXJWuXa2pbWclb8DBLNYMV0zshGj/WSaj5OA1/4lMJirN3ynKHxAv4
 aeBTFnWUqezrASYCSKl30WIxwRi4efW8zVe8vU669tQ+sC3flvdhpQeFtq1nYv54pKga
 xD4lkUjONsMw75diRIhGdEAXGDUsxzSRbXXlNLjWcqqS0xjRbIf0WC77GIpv68vm7m8y
 y8Exo7HUvh9w3UdUD9Ub/Xq0XoGIluRf83duuYxwmSAL/9mQx/1EsI3zC1QwYIbGrYlO
 QJuQ==
X-Gm-Message-State: AOAM530E4bHh9N9PCm9bFqy59FvkGY8VNPhiNxBtjpgkhZErxbDztUty
 l+AQYQGBoFkyrSLfMCU9sjyoPuH1jfpLfSlJ6eY=
X-Google-Smtp-Source: ABdhPJyCM4LXZm0G8cnaGOP2avZb4Q38JHTcUjyRbJ5IWMfK1S3VtRVUJUWv1aCqEfvCPkR8Pu2/8d0CXjLV9zB5qJk=
X-Received: by 2002:a05:6830:18c9:: with SMTP id
 v9mr4338102ote.74.1605338657113; 
 Fri, 13 Nov 2020 23:24:17 -0800 (PST)
MIME-Version: 1.0
References: <20201102202515.19073-1-sergio.paracuellos@gmail.com>
 <CAMhs-H9DRT6G0GQg-gpDT=q_BniDf3EbE3Qq2YbHCXZSK7nPqw@mail.gmail.com>
 <X68U0wyL0QHLfFbY@kroah.com>
In-Reply-To: <X68U0wyL0QHLfFbY@kroah.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Sat, 14 Nov 2020 08:24:06 +0100
Message-ID: <CAMhs-H9ThgWKD_kqTV6j3tHA7c1yEq7v0Oga6dJ76VVSMpw-Ag@mail.gmail.com>
Subject: Re: [PATCH] staging: mt7621-pci: avoid to request pci bus resources
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 NeilBrown <neil@brown.name>, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Nov 14, 2020 at 12:19 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Fri, Nov 13, 2020 at 04:26:08PM +0100, Sergio Paracuellos wrote:
> > Hi Greg,
> >
> > On Mon, Nov 2, 2020 at 9:25 PM Sergio Paracuellos
> > <sergio.paracuellos@gmail.com> wrote:
> > >
> > > After upgrading kernel to version 5.9.x the driver was not
> > > working anymore showing the following kernel trace:
> > >
> > > ...
> > > mt7621-pci 1e140000.pcie: resource collision:
> > > [mem 0x60000000-0x6fffffff] conflicts with pcie@1e140000 [mem 0x60000000-0x6fffffff]
> > > ------------[ cut here ]------------
> > > WARNING: CPU: 2 PID: 73 at kernel/resource.c:1400
> > > devm_request_resource+0xfc/0x10c
> > > Modules linked in:
> > > CPU: 2 PID: 73 Comm: kworker/2:1 Not tainted 5.9.2 #0
> > > Workqueue: events deferred_probe_work_func
> > > Stack : 00000000 81590000 807d0a1c 808a0000 8fd49080
> > >         807d0000 00000009 808ac820
> > >         00000001 808338d0 7fff0001 800839dc 00000049
> > >         00000001 8fe51b00 367204ab
> > >         00000000 00000000 807d0a1c 807c0000 00000001
> > >         80082358 8fe50000 00559000
> > >         00000000 8fe519f1 ffffffff 00000005 00000000
> > >         00000001 00000000 807d0000
> > >         00000009 808ac820 00000001 808338d0 00000001
> > >         803bf1b0 00000008 81390008
> > >
> > > Call Trace:
> > > [<8000d018>] show_stack+0x30/0x100
> > > [<8032e66c>] dump_stack+0xa4/0xd4
> > > [<8002db1c>] __warn+0xc0/0x134
> > > [<8002dbec>] warn_slowpath_fmt+0x5c/0xac
> > > [<80033b34>] devm_request_resource+0xfc/0x10c
> > > [<80365ff8>] devm_request_pci_bus_resources+0x58/0xdc
> > > [<8048e13c>] mt7621_pci_probe+0x8dc/0xe48
> > > [<803d2140>] platform_drv_probe+0x40/0x94
> > > [<803cfd94>] really_probe+0x108/0x4ec
> > > [<803cd958>] bus_for_each_drv+0x70/0xb0
> > > [<803d0388>] __device_attach+0xec/0x164
> > > [<803cec8c>] bus_probe_device+0xa4/0xc0
> > > [<803cf1c4>] deferred_probe_work_func+0x80/0xc4
> > > [<80048444>] process_one_work+0x260/0x510
> > > [<80048a4c>] worker_thread+0x358/0x5cc
> > > [<8004f7d0>] kthread+0x134/0x13c
> > > [<80007478>] ret_from_kernel_thread+0x14/0x1c
> > > ---[ end trace a9dd2e37537510d3 ]---
> > > mt7621-pci 1e140000.pcie: Error requesting resources
> > > mt7621-pci: probe of 1e140000.pcie failed with error -16
> > > ...
> > >
> > > With commit 669cbc708122 ("PCI: Move DT resource setup into
> > > devm_pci_alloc_host_bridge()"), the DT 'ranges' is parsed and populated
> > > into resources when the host bridge is allocated. The resources are
> > > requested as well, but that happens a 2nd time for this driver in
> > > mt7621_pcie_request_resources(). Hence we should avoid this second
> > > request.
> > >
> > > Also, the bus ranges was also populated by default, so we can remove
> > > it from mt7621_pcie_request_resources() to avoid the following trace
> > > if we don't avoid it:
> > >
> > > pci_bus 0000:00: busn_res: can not insert [bus 00-ff]
> > > under domain [bus 00-ff] (conflicts with (null) [bus 00-ff])
> > >
> > > Function 'mt7621_pcie_request_resources' has been renamed into
> > > 'mt7621_pcie_add_resources' which now is a more accurate name
> > > for this function.
> > >
> > > Cc: stable@vger.kernel.org#5.9.x-
> > > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> >
> > This patch have to be added also for stable 5.9.x because driver is
> > broken in all kernel 5.9.x releases. I noticed a new stable release
> > comes three days ago (5.9.8) and this was not added. I was wondering
> > if the way I marked this patch to be included is wrong.
>
> Is this patch in Linus's tree yet?  If not, we can't add it to any
> stable tree.  That has to happen first.
>

Ahh, ok I see. No, it is not in the linux tree yet. It is still in
your staging-linus branch.
I did not know that, thanks for let me know .

> thanks,
>
> greg k-h

Best regards,
   Sergio Paracuellos
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
