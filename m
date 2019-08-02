Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA9B80124
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 21:41:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 628A086C31;
	Fri,  2 Aug 2019 19:41:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KyqBgn0T43FU; Fri,  2 Aug 2019 19:41:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8889386C26;
	Fri,  2 Aug 2019 19:40:59 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 074771BF2A3
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 19:40:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F290587E81
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 19:40:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K0ASQvwm-6oX
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 19:40:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3EED487E6E
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 19:40:57 +0000 (UTC)
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6262920B7C;
 Fri,  2 Aug 2019 19:40:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564774857;
 bh=WiQohTwdjNs2nhpJWkvzqSmwuYyHvaf+sHB+D1spqu8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QUsBRKRWYzLfCeXsS6GiwNhtsEX7cZ4/deEYSQbShEjDdg5AQCe0hJQdmMJasAXkL
 uGdQuNPSn6njNM9u3rOBE0gF5dgrwOSS9c1ZYKi3rRX9nKRIQNv2Ns7pMRQgM5vllh
 2RzkOn5+cLcnW0/Xgx/2zgGZFfQNtTbpHlR6SMRs=
Date: Fri, 2 Aug 2019 14:40:53 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Dexuan Cui <decui@microsoft.com>
Subject: Re: [PATCH] PCI: hv: Fix panic by calling hv_pci_remove_slots()
 earlier
Message-ID: <20190802194053.GL151852@google.com>
References: <PU1P153MB0169DBCFEE7257F5BB93580ABFD90@PU1P153MB0169.APCP153.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <PU1P153MB0169DBCFEE7257F5BB93580ABFD90@PU1P153MB0169.APCP153.PROD.OUTLOOK.COM>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 "driverdev-devel@linuxdriverproject.org"
 <driverdev-devel@linuxdriverproject.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Michael Kelley <mikelley@microsoft.com>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "olaf@aepfle.de" <olaf@aepfle.de>, "apw@canonical.com" <apw@canonical.com>,
 vkuznets <vkuznets@redhat.com>, "jasowang@redhat.com" <jasowang@redhat.com>,
 "jackm@mellanox.com" <jackm@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dexuan,

The subject line only describes the mechanical code change, which is
obvious from the patch.  It would be better if we could say something
about *why* we need this.

On Fri, Aug 02, 2019 at 01:32:28AM +0000, Dexuan Cui wrote:
> 
> When a slot is removed, the pci_dev must still exist.
> 
> pci_remove_root_bus() removes and free all the pci_devs, so
> hv_pci_remove_slots() must be called before pci_remove_root_bus(),
> otherwise a general protection fault can happen, if the kernel is built

"general protection fault" is an x86 term that doesn't really say what
the issue is.  I suspect this would be a "use-after-free" problem.

> with the memory debugging options.
> 
> Fixes: 15becc2b56c6 ("PCI: hv: Add hv_pci_remove_slots() when we unload the driver")
> Signed-off-by: Dexuan Cui <decui@microsoft.com>
> Cc: stable@vger.kernel.org
> 
> ---
> 
> When pci-hyperv is unloaded, this panic can happen:
> 
>  general protection fault:
>  CPU: 2 PID: 1091 Comm: rmmod Not tainted 5.2.0+
>  RIP: 0010:pci_slot_release+0x30/0xd0
>  Call Trace:
>   kobject_release+0x65/0x190
>   pci_destroy_slot+0x25/0x60
>   hv_pci_remove+0xec/0x110 [pci_hyperv]
>   vmbus_remove+0x20/0x30 [hv_vmbus]
>   device_release_driver_internal+0xd5/0x1b0
>   driver_detach+0x44/0x7c
>   bus_remove_driver+0x75/0xc7
>   vmbus_driver_unregister+0x50/0xbd [hv_vmbus]
>   __x64_sys_delete_module+0x136/0x200
>   do_syscall_64+0x5e/0x220
> 
>  drivers/pci/controller/pci-hyperv.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/pci-hyperv.c b/drivers/pci/controller/pci-hyperv.c
> index 6b9cc6e60a..68c611d 100644
> --- a/drivers/pci/controller/pci-hyperv.c
> +++ b/drivers/pci/controller/pci-hyperv.c
> @@ -2757,8 +2757,8 @@ static int hv_pci_remove(struct hv_device *hdev)
>  		/* Remove the bus from PCI's point of view. */
>  		pci_lock_rescan_remove();
>  		pci_stop_root_bus(hbus->pci_bus);
> -		pci_remove_root_bus(hbus->pci_bus);
>  		hv_pci_remove_slots(hbus);
> +		pci_remove_root_bus(hbus->pci_bus);

I'm curious about why we need hv_pci_remove_slots() at all.  None of
the other callers of pci_stop_root_bus() and pci_remove_root_bus() do
anything similar to hv_pci_remove_slots().

Surely some of those callers also support slots, so there must be some
other path that calls pci_destroy_slot() in those cases.  Can we use a
similar strategy here?

>  		pci_unlock_rescan_remove();
>  		hbus->state = hv_pcibus_removed;
>  	}
> -- 
> 1.8.3.1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
