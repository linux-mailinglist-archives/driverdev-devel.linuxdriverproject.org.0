Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D49583A26
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 22:16:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C45D786160;
	Tue,  6 Aug 2019 20:16:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jTSz6NsmcC43; Tue,  6 Aug 2019 20:16:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 91FFF85F83;
	Tue,  6 Aug 2019 20:16:15 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DD5841BF375
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  6 Aug 2019 20:16:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DA3A285F83
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  6 Aug 2019 20:16:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id brHY-6UHv1OX
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  6 Aug 2019 20:16:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 583DE85F7C
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  6 Aug 2019 20:16:13 +0000 (UTC)
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E7AD82070C;
 Tue,  6 Aug 2019 20:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565122573;
 bh=CHdEFDdC6MO7xI0dc+/jQv+NXvBM8cI43X6TKLK577M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ow2jBeqS4Y7JdM2VwzqcvRHDfcYU5ouUMku8rA0TEMfRBQDVxyFec06eyKybYUgQj
 KySLkYju9Gy0giIsRKiwHVCe2w5O03hmfEqqL1u/EMaYF4M5aWvTCLomJ6ILbWLvTT
 r29xKNy6KNSqg5rwyLzneBnk8LV420HPO1gyF9MM=
Date: Tue, 6 Aug 2019 15:16:11 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Dexuan Cui <decui@microsoft.com>
Subject: Re: [PATCH v2] PCI: hv: Fix panic by calling hv_pci_remove_slots()
 earlier
Message-ID: <20190806201611.GT151852@google.com>
References: <PU1P153MB01693F32F6BB02F9655CC84EBFD90@PU1P153MB0169.APCP153.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <PU1P153MB01693F32F6BB02F9655CC84EBFD90@PU1P153MB0169.APCP153.PROD.OUTLOOK.COM>
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

Thanks for updating this.  But you didn't update the subject line,
which is really still a little too low-level.  Maybe Lorenzo will fix
this.  Something like this, maybe?

  PCI: hv: Avoid use of hv_pci_dev->pci_slot after freeing it

On Fri, Aug 02, 2019 at 10:50:20PM +0000, Dexuan Cui wrote:
> 
> The slot must be removed before the pci_dev is removed, otherwise a panic
> can happen due to use-after-free.
> 
> Fixes: 15becc2b56c6 ("PCI: hv: Add hv_pci_remove_slots() when we unload the driver")
> Signed-off-by: Dexuan Cui <decui@microsoft.com>
> Cc: stable@vger.kernel.org
> ---
> 
> Changes in v2:
>   Improved the changelog accordign to the discussion with Bjorn Helgaas:
> 	  https://lkml.org/lkml/2019/8/1/1173
> 	  https://lkml.org/lkml/2019/8/2/1559
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
