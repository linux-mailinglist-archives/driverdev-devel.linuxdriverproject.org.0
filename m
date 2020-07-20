Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EBBFF2255D1
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Jul 2020 04:15:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5FD4A85C62;
	Mon, 20 Jul 2020 02:15:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ozT9_dXbM_7G; Mon, 20 Jul 2020 02:15:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5975F854E0;
	Mon, 20 Jul 2020 02:15:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D856F1BF397
 for <devel@linuxdriverproject.org>; Mon, 20 Jul 2020 02:15:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D237587E43
 for <devel@linuxdriverproject.org>; Mon, 20 Jul 2020 02:15:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9gew2bqCg8DJ for <devel@linuxdriverproject.org>;
 Mon, 20 Jul 2020 02:15:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4D4E087D05
 for <devel@driverdev.osuosl.org>; Mon, 20 Jul 2020 02:15:27 +0000 (UTC)
IronPort-SDR: uEZX2WdEGRgNlKwM6UDmTG7O7ZnRx2bDBfyITj2HFP5xL6bhyirfEwe59FpFPk/1ZjpmwVAaH4
 h0yWHUzFO32w==
X-IronPort-AV: E=McAfee;i="6000,8403,9687"; a="234692822"
X-IronPort-AV: E=Sophos;i="5.75,373,1589266800"; d="scan'208";a="234692822"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2020 19:15:26 -0700
IronPort-SDR: d1WB62cRq5P0pr0r6xP2Hg/eqqZBXqKV6bOHhVI7I8LLvNTj9FgDXdEHA/OLmPSFM51auLff9M
 NsEQ0rn1BaKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,373,1589266800"; d="scan'208";a="461513294"
Received: from ipu5-build.bj.intel.com (HELO [10.238.232.196])
 ([10.238.232.196])
 by orsmga005.jf.intel.com with ESMTP; 19 Jul 2020 19:15:23 -0700
Subject: Re: [PATCH] staging: media: ipu3: Replace depracated MSI API.
To: Suraj Upadhyay <usuraj35@gmail.com>, sakari.ailus@linux.intel.com,
 bingbu.cao@intel.com, tian.shu.qiu@intel.com, mchehab@kernel.org,
 gregkh@linuxfoundation.org
References: <20200718133238.GA11982@blackclown>
From: Bingbu Cao <bingbu.cao@linux.intel.com>
Message-ID: <8dc91dd2-b165-bd97-00f7-16c4cb266163@linux.intel.com>
Date: Mon, 20 Jul 2020 10:17:36 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200718133238.GA11982@blackclown>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Upadhyay,

Thanks for your patch. Please correct the typo in message.

On 7/18/20 9:32 PM, Suraj Upadhyay wrote:
> Replace depracated psi_enable_msi with pci_alloc_irq_vectors.
> And as a result modify how the returned value is handled.
> 
> Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
> ---
>  drivers/staging/media/ipu3/ipu3.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/ipu3/ipu3.c b/drivers/staging/media/ipu3/ipu3.c
> index ee1bba6bdcac..54690e7442be 100644
> --- a/drivers/staging/media/ipu3/ipu3.c
> +++ b/drivers/staging/media/ipu3/ipu3.c
> @@ -602,9 +602,9 @@ static irqreturn_t imgu_isr(int irq, void *imgu_ptr)
>  static int imgu_pci_config_setup(struct pci_dev *dev)
>  {
>  	u16 pci_command;
> -	int r = pci_enable_msi(dev);
> +	int r = pci_alloc_irq_vectors(dev, 1, 1, PCI_IRQ_MSI);
>  
> -	if (r) {
> +	if (r < 0) {
>  		dev_err(&dev->dev, "failed to enable MSI (%d)\n", r);
>  		return r;
>  	}
> 

-- 
Best regards,
Bingbu Cao
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
