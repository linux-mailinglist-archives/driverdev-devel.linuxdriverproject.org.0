Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7BE72440D1
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Aug 2020 23:40:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7533A88897;
	Thu, 13 Aug 2020 21:40:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ahsfOHNbDdCh; Thu, 13 Aug 2020 21:40:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DCF2D88877;
	Thu, 13 Aug 2020 21:40:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2882B1BF3A0
 for <devel@linuxdriverproject.org>; Thu, 13 Aug 2020 21:40:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 24888885C7
 for <devel@linuxdriverproject.org>; Thu, 13 Aug 2020 21:40:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q8dsJg4UTYvU for <devel@linuxdriverproject.org>;
 Thu, 13 Aug 2020 21:40:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6311C88538
 for <devel@driverdev.osuosl.org>; Thu, 13 Aug 2020 21:40:34 +0000 (UTC)
IronPort-SDR: CJ5G1kx22/pJRdmT98Tmonh1Jma8Y2NA8r3jah5BE+6cBu98HAGqPhB65HUIIAVin2VF798VrQ
 dTfbBnAwN3/Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9712"; a="151975840"
X-IronPort-AV: E=Sophos;i="5.76,309,1592895600"; d="scan'208";a="151975840"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2020 14:40:33 -0700
IronPort-SDR: bX8ONL1waEA2CrBviOzY+VKb8U80uMrAcyaqIj14Gd/WWboRHPcItAtuddgJCTpYnJBIOOL3yW
 0yyEl7tzj6cQ==
X-IronPort-AV: E=Sophos;i="5.76,309,1592895600"; d="scan'208";a="439920140"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2020 14:40:31 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 0B7A120699; Fri, 14 Aug 2020 00:40:29 +0300 (EEST)
Date: Fri, 14 Aug 2020 00:40:29 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Suraj Upadhyay <usuraj35@gmail.com>
Subject: Re: [PATCH] staging: media: ipu3: Replace depracated MSI API.
Message-ID: <20200813214028.GB24582@paasikivi.fi.intel.com>
References: <20200718133238.GA11982@blackclown>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200718133238.GA11982@blackclown>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 bingbu.cao@intel.com, mchehab@kernel.org, tian.shu.qiu@intel.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Suraj,

Thanks for the patch.

On Sat, Jul 18, 2020 at 07:02:38PM +0530, Suraj Upadhyay wrote:
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

I believe fixing this requires also releasing it, i.e. a call to
pci_free_irq_vectors(). This seems to have been missing.

-- 
Kind regards,

Sakari Ailus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
