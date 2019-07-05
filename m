Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7A6606C0
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Jul 2019 15:41:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 05BEF8623B;
	Fri,  5 Jul 2019 13:41:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qp51SBAPATxZ; Fri,  5 Jul 2019 13:41:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 588B98624A;
	Fri,  5 Jul 2019 13:41:46 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A9B041BF5F4
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  5 Jul 2019 13:41:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A672A88154
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  5 Jul 2019 13:41:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y+Ls9csd-Shb
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  5 Jul 2019 13:41:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by hemlock.osuosl.org (Postfix) with ESMTP id E7CD98814B
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  5 Jul 2019 13:41:43 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2C082360;
 Fri,  5 Jul 2019 06:41:43 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0B0AF3F718;
 Fri,  5 Jul 2019 06:41:40 -0700 (PDT)
Date: Fri, 5 Jul 2019 14:41:38 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Dexuan Cui <decui@microsoft.com>
Subject: Re: [PATCH v2] PCI: hv: Fix a use-after-free bug in
 hv_eject_device_work()
Message-ID: <20190705134138.GB31464@e121166-lin.cambridge.arm.com>
References: <PU1P153MB0169D420EAB61757DF4B337FBFE70@PU1P153MB0169.APCP153.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <PU1P153MB0169D420EAB61757DF4B337FBFE70@PU1P153MB0169.APCP153.PROD.OUTLOOK.COM>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
 Stephen Hemminger <sthemmin@microsoft.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 "driverdev-devel@linuxdriverproject.org"
 <driverdev-devel@linuxdriverproject.org>, "olaf@aepfle.de" <olaf@aepfle.de>,
 "Lili Deng \(Wicresoft North America Ltd\)" <v-lide@microsoft.com>,
 Michael Kelley <mikelley@microsoft.com>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 "apw@canonical.com" <apw@canonical.com>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>, vkuznets <vkuznets@redhat.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jun 21, 2019 at 11:45:23PM +0000, Dexuan Cui wrote:
> 
> The commit 05f151a73ec2 itself is correct, but it exposes this
> use-after-free bug, which is caught by some memory debug options.
> 
> Add a Fixes tag to indicate the dependency.
> 
> Fixes: 05f151a73ec2 ("PCI: hv: Fix a memory leak in hv_eject_device_work()")
> Signed-off-by: Dexuan Cui <decui@microsoft.com>
> Cc: stable@vger.kernel.org
> ---
> 
> In v2:
> Replaced "hpdev->hbus" with "hbus", since we have the new "hbus" variable. [Michael Kelley]
> 
>  drivers/pci/controller/pci-hyperv.c | 15 +++++++++------
>  1 file changed, 9 insertions(+), 6 deletions(-)

Applied to pci/hv for v5.3, thanks.

Lorenzo

> diff --git a/drivers/pci/controller/pci-hyperv.c b/drivers/pci/controller/pci-hyperv.c
> index 808a182830e5..5dadc964ad3b 100644
> --- a/drivers/pci/controller/pci-hyperv.c
> +++ b/drivers/pci/controller/pci-hyperv.c
> @@ -1880,6 +1880,7 @@ static void hv_pci_devices_present(struct hv_pcibus_device *hbus,
>  static void hv_eject_device_work(struct work_struct *work)
>  {
>  	struct pci_eject_response *ejct_pkt;
> +	struct hv_pcibus_device *hbus;
>  	struct hv_pci_dev *hpdev;
>  	struct pci_dev *pdev;
>  	unsigned long flags;
> @@ -1890,6 +1891,7 @@ static void hv_eject_device_work(struct work_struct *work)
>  	} ctxt;
>  
>  	hpdev = container_of(work, struct hv_pci_dev, wrk);
> +	hbus = hpdev->hbus;
>  
>  	WARN_ON(hpdev->state != hv_pcichild_ejecting);
>  
> @@ -1900,8 +1902,7 @@ static void hv_eject_device_work(struct work_struct *work)
>  	 * because hbus->pci_bus may not exist yet.
>  	 */
>  	wslot = wslot_to_devfn(hpdev->desc.win_slot.slot);
> -	pdev = pci_get_domain_bus_and_slot(hpdev->hbus->sysdata.domain, 0,
> -					   wslot);
> +	pdev = pci_get_domain_bus_and_slot(hbus->sysdata.domain, 0, wslot);
>  	if (pdev) {
>  		pci_lock_rescan_remove();
>  		pci_stop_and_remove_bus_device(pdev);
> @@ -1909,9 +1910,9 @@ static void hv_eject_device_work(struct work_struct *work)
>  		pci_unlock_rescan_remove();
>  	}
>  
> -	spin_lock_irqsave(&hpdev->hbus->device_list_lock, flags);
> +	spin_lock_irqsave(&hbus->device_list_lock, flags);
>  	list_del(&hpdev->list_entry);
> -	spin_unlock_irqrestore(&hpdev->hbus->device_list_lock, flags);
> +	spin_unlock_irqrestore(&hbus->device_list_lock, flags);
>  
>  	if (hpdev->pci_slot)
>  		pci_destroy_slot(hpdev->pci_slot);
> @@ -1920,7 +1921,7 @@ static void hv_eject_device_work(struct work_struct *work)
>  	ejct_pkt = (struct pci_eject_response *)&ctxt.pkt.message;
>  	ejct_pkt->message_type.type = PCI_EJECTION_COMPLETE;
>  	ejct_pkt->wslot.slot = hpdev->desc.win_slot.slot;
> -	vmbus_sendpacket(hpdev->hbus->hdev->channel, ejct_pkt,
> +	vmbus_sendpacket(hbus->hdev->channel, ejct_pkt,
>  			 sizeof(*ejct_pkt), (unsigned long)&ctxt.pkt,
>  			 VM_PKT_DATA_INBAND, 0);
>  
> @@ -1929,7 +1930,9 @@ static void hv_eject_device_work(struct work_struct *work)
>  	/* For the two refs got in new_pcichild_device() */
>  	put_pcichild(hpdev);
>  	put_pcichild(hpdev);
> -	put_hvpcibus(hpdev->hbus);
> +	/* hpdev has been freed. Do not use it any more. */
> +
> +	put_hvpcibus(hbus);
>  }
>  
>  /**
> -- 
> 2.17.1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
