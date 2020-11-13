Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A032B1E93
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Nov 2020 16:26:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A98887589;
	Fri, 13 Nov 2020 15:26:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nT06ZseEh1ok; Fri, 13 Nov 2020 15:26:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 80F7287586;
	Fri, 13 Nov 2020 15:26:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D49041BF299
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 15:26:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CAA1B871D3
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 15:26:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OUiXxhb5CglS for <devel@linuxdriverproject.org>;
 Fri, 13 Nov 2020 15:26:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AD53C871E1
 for <devel@driverdev.osuosl.org>; Fri, 13 Nov 2020 15:26:25 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id k3so9202588otp.12
 for <devel@driverdev.osuosl.org>; Fri, 13 Nov 2020 07:26:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=T/8hKup0PEqekEDnlVknos01eVeSf0vMGU/zIaJqCHk=;
 b=Yd9R5EBka93rwJzrwnksydn8gLHx2y8OoIXhmAUK9eLDFV59JRNvFvlCDzyZm+t76d
 Whk0yYaiY7dBvLhOX3H1byoZOsGHJXsBQLD3N23CoRfbI+mgEHfNvbsEMybK3Gme4rR3
 lRTAyS61/1rEuoUXKQbNtwOsR5U7eDlciay5LpfMAZ5hMf6MUvKeOYG/szMjx/1tOJIM
 3Gl5n54I7W5rWsjNFfB6uXG/e4uzaoMfZKQ664erakI2MsEfDrGngXW5dUV+M4QptiY8
 S2gGEPINplvA3E5ac7Nb1t6zkg18W/AphhvICXAC6biAvf1BBWMqFa8u4yDaIxhfdP4C
 nGhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=T/8hKup0PEqekEDnlVknos01eVeSf0vMGU/zIaJqCHk=;
 b=rl0wd+ad3MvqrhYAwrZQadQ5QwCwr9rpVL0C7fuq8b60ywVFYsW2ScUqn/5sIDnzu5
 /JnVViApuFlqXUcNecKC3829WlY5YhGsg84mMMp94LWrPrs0AH6LtAMMbDokIfw9yF2i
 kdMRKGP9mYwpUjYD4XKrHSNMopjpwKqOm3qEusVuoB+7OvzwIjyr7I0Ao+swY0Te1voz
 pld+daFY0N1bRseBYlPfBMW0FeQO4PaOpGhXEy65uGRKAPZwSRNK5quB3QJVNgDcvQ55
 oKmQCNOp1C1+la47X/GcJScd2/3xElcfSPzSNqFHh5yxqlKo+hRmx2XClKg38UqKKIhM
 AZQQ==
X-Gm-Message-State: AOAM533fGTdtUhRpTGybIN2vjyARLE1pb2PwPdOfTJ5D+BI+usmy2/Pf
 EwmEzI86UvJStDot+P805xB8Sbt7O/aV9t9oa19toCZHwIo=
X-Google-Smtp-Source: ABdhPJy9PVc0+ZSspoGbwKfp07dpaRuznwzwcJdj3RTuxqTgcaq4vyMZcKdvOyRySpDz4EPITx9Pf0Zu727JvVB7F0E=
X-Received: by 2002:a9d:22e4:: with SMTP id y91mr1855412ota.72.1605281179814; 
 Fri, 13 Nov 2020 07:26:19 -0800 (PST)
MIME-Version: 1.0
References: <20201102202515.19073-1-sergio.paracuellos@gmail.com>
In-Reply-To: <20201102202515.19073-1-sergio.paracuellos@gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Fri, 13 Nov 2020 16:26:08 +0100
Message-ID: <CAMhs-H9DRT6G0GQg-gpDT=q_BniDf3EbE3Qq2YbHCXZSK7nPqw@mail.gmail.com>
Subject: Re: [PATCH] staging: mt7621-pci: avoid to request pci bus resources
To: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>
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
Cc: NeilBrown <neil@brown.name>, Greg KH <gregkh@linuxfoundation.org>,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg,

On Mon, Nov 2, 2020 at 9:25 PM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:
>
> After upgrading kernel to version 5.9.x the driver was not
> working anymore showing the following kernel trace:
>
> ...
> mt7621-pci 1e140000.pcie: resource collision:
> [mem 0x60000000-0x6fffffff] conflicts with pcie@1e140000 [mem 0x60000000-0x6fffffff]
> ------------[ cut here ]------------
> WARNING: CPU: 2 PID: 73 at kernel/resource.c:1400
> devm_request_resource+0xfc/0x10c
> Modules linked in:
> CPU: 2 PID: 73 Comm: kworker/2:1 Not tainted 5.9.2 #0
> Workqueue: events deferred_probe_work_func
> Stack : 00000000 81590000 807d0a1c 808a0000 8fd49080
>         807d0000 00000009 808ac820
>         00000001 808338d0 7fff0001 800839dc 00000049
>         00000001 8fe51b00 367204ab
>         00000000 00000000 807d0a1c 807c0000 00000001
>         80082358 8fe50000 00559000
>         00000000 8fe519f1 ffffffff 00000005 00000000
>         00000001 00000000 807d0000
>         00000009 808ac820 00000001 808338d0 00000001
>         803bf1b0 00000008 81390008
>
> Call Trace:
> [<8000d018>] show_stack+0x30/0x100
> [<8032e66c>] dump_stack+0xa4/0xd4
> [<8002db1c>] __warn+0xc0/0x134
> [<8002dbec>] warn_slowpath_fmt+0x5c/0xac
> [<80033b34>] devm_request_resource+0xfc/0x10c
> [<80365ff8>] devm_request_pci_bus_resources+0x58/0xdc
> [<8048e13c>] mt7621_pci_probe+0x8dc/0xe48
> [<803d2140>] platform_drv_probe+0x40/0x94
> [<803cfd94>] really_probe+0x108/0x4ec
> [<803cd958>] bus_for_each_drv+0x70/0xb0
> [<803d0388>] __device_attach+0xec/0x164
> [<803cec8c>] bus_probe_device+0xa4/0xc0
> [<803cf1c4>] deferred_probe_work_func+0x80/0xc4
> [<80048444>] process_one_work+0x260/0x510
> [<80048a4c>] worker_thread+0x358/0x5cc
> [<8004f7d0>] kthread+0x134/0x13c
> [<80007478>] ret_from_kernel_thread+0x14/0x1c
> ---[ end trace a9dd2e37537510d3 ]---
> mt7621-pci 1e140000.pcie: Error requesting resources
> mt7621-pci: probe of 1e140000.pcie failed with error -16
> ...
>
> With commit 669cbc708122 ("PCI: Move DT resource setup into
> devm_pci_alloc_host_bridge()"), the DT 'ranges' is parsed and populated
> into resources when the host bridge is allocated. The resources are
> requested as well, but that happens a 2nd time for this driver in
> mt7621_pcie_request_resources(). Hence we should avoid this second
> request.
>
> Also, the bus ranges was also populated by default, so we can remove
> it from mt7621_pcie_request_resources() to avoid the following trace
> if we don't avoid it:
>
> pci_bus 0000:00: busn_res: can not insert [bus 00-ff]
> under domain [bus 00-ff] (conflicts with (null) [bus 00-ff])
>
> Function 'mt7621_pcie_request_resources' has been renamed into
> 'mt7621_pcie_add_resources' which now is a more accurate name
> for this function.
>
> Cc: stable@vger.kernel.org#5.9.x-
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>

This patch have to be added also for stable 5.9.x because driver is
broken in all kernel 5.9.x releases. I noticed a new stable release
comes three days ago (5.9.8) and this was not added. I was wondering
if the way I marked this patch to be included is wrong.

Thanks in advance for your time.

Best regards,
    Sergio Paracuellos

> ---
>  drivers/staging/mt7621-pci/pci-mt7621.c | 15 +++------------
>  1 file changed, 3 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
> index f961b353c22e..8831db383fad 100644
> --- a/drivers/staging/mt7621-pci/pci-mt7621.c
> +++ b/drivers/staging/mt7621-pci/pci-mt7621.c
> @@ -653,16 +653,11 @@ static int mt7621_pcie_init_virtual_bridges(struct mt7621_pcie *pcie)
>         return 0;
>  }
>
> -static int mt7621_pcie_request_resources(struct mt7621_pcie *pcie,
> -                                        struct list_head *res)
> +static void mt7621_pcie_add_resources(struct mt7621_pcie *pcie,
> +                                     struct list_head *res)
>  {
> -       struct device *dev = pcie->dev;
> -
>         pci_add_resource_offset(res, &pcie->io, pcie->offset.io);
>         pci_add_resource_offset(res, &pcie->mem, pcie->offset.mem);
> -       pci_add_resource(res, &pcie->busn);
> -
> -       return devm_request_pci_bus_resources(dev, res);
>  }
>
>  static int mt7621_pcie_register_host(struct pci_host_bridge *host,
> @@ -738,11 +733,7 @@ static int mt7621_pci_probe(struct platform_device *pdev)
>
>         setup_cm_memory_region(pcie);
>
> -       err = mt7621_pcie_request_resources(pcie, &res);
> -       if (err) {
> -               dev_err(dev, "Error requesting resources\n");
> -               return err;
> -       }
> +       mt7621_pcie_add_resources(pcie, &res);
>
>         err = mt7621_pcie_register_host(bridge, &res);
>         if (err) {
> --
> 2.25.1
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
