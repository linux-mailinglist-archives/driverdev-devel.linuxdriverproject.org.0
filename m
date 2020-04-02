Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E1219BBC1
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 08:36:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3AA5E86F3B;
	Thu,  2 Apr 2020 06:36:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id abShh3rpLrmq; Thu,  2 Apr 2020 06:36:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0BDD086D50;
	Thu,  2 Apr 2020 06:36:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1DA411BF405
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 06:36:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1916586D50
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 06:36:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oo-buB4oYVNS for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 06:36:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0192.hostedemail.com
 [216.40.44.192])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0959686D24
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 06:36:01 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave03.hostedemail.com (Postfix) with ESMTP id AA0B918019B01
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 05:56:16 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 38DD15010;
 Thu,  2 Apr 2020 05:56:14 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2692:2828:3138:3139:3140:3141:3142:3354:3622:3865:3867:3868:4250:4321:4605:5007:6119:7514:7875:7903:10004:10400:10848:11026:11232:11473:11658:11914:12043:12048:12296:12297:12438:12555:12740:12760:12895:13439:13972:14096:14097:14181:14659:14721:21080:21627:21990:30012:30045:30046:30054:30070:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: judge59_8d939426bb842
X-Filterd-Recvd-Size: 3915
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf20.hostedemail.com (Postfix) with ESMTPA;
 Thu,  2 Apr 2020 05:56:12 +0000 (UTC)
Message-ID: <5d35084fcc0476fc2f43e3cf371f5078c0fbeeab.camel@perches.com>
Subject: Re: [PATCH 1/2] staging: gasket: Fix 4 over 80 char warnings
From: Joe Perches <joe@perches.com>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>, 
 outreachy-kernel@googlegroups.com, Rob Springer <rspringer@google.com>,
 Todd Poynor <toddpoynor@google.com>, Ben Chan <benchan@chromium.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
 linux-kernel@vger.kernel.org
Date: Wed, 01 Apr 2020 22:54:17 -0700
In-Reply-To: <20200402053617.826678-2-jbwyatt4@gmail.com>
References: <20200402053617.826678-1-jbwyatt4@gmail.com>
 <20200402053617.826678-2-jbwyatt4@gmail.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 2020-04-01 at 22:36 -0700, John B. Wyatt IV wrote:
> Fix 4 over 80 char warnings by caching long enum values into local
> variables.
> 
> All enums are only used once inside each function (and once inside
> the entire file).
> 
> Reported by checkpatch.
> 
> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> ---
>  drivers/staging/gasket/apex_driver.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
> index 46199c8ca441..f48209ec7d24 100644
> --- a/drivers/staging/gasket/apex_driver.c
> +++ b/drivers/staging/gasket/apex_driver.c
> @@ -253,6 +253,8 @@ static int apex_get_status(struct gasket_dev *gasket_dev)
>  /* Enter GCB reset state. */
>  static int apex_enter_reset(struct gasket_dev *gasket_dev)
>  {
> +	int idle_gen_reg = APEX_BAR2_REG_IDLEGENERATOR_IDLEGEN_IDLEREGISTER;
> +

This indirection only makes the code more difficult to understand.

>  	if (bypass_top_level)
>  		return 0;
>  
> @@ -263,7 +265,7 @@ static int apex_enter_reset(struct gasket_dev *gasket_dev)
>  	 *    - Enable GCB idle
>  	 */
>  	gasket_read_modify_write_64(gasket_dev, APEX_BAR_INDEX,
> -				    APEX_BAR2_REG_IDLEGENERATOR_IDLEGEN_IDLEREGISTER,
> +				    idle_gen_reg,
>  				    0x0, 1, 32);
>  
>  	/*    - Initiate DMA pause */
> @@ -395,11 +397,12 @@ static int apex_device_cleanup(struct gasket_dev *gasket_dev)
>  	u64 scalar_error;
>  	u64 hib_error;
>  	int ret = 0;
> +	int status = APEX_BAR2_REG_SCALAR_CORE_ERROR_STATUS;
>  
>  	hib_error = gasket_dev_read_64(gasket_dev, APEX_BAR_INDEX,
>  				       APEX_BAR2_REG_USER_HIB_ERROR_STATUS);
>  	scalar_error = gasket_dev_read_64(gasket_dev, APEX_BAR_INDEX,
> -					  APEX_BAR2_REG_SCALAR_CORE_ERROR_STATUS);
> +					  status);
>  
>  	dev_dbg(gasket_dev->dev,
>  		"%s 0x%p hib_error 0x%llx scalar_error 0x%llx\n",
> @@ -584,6 +587,8 @@ static int apex_pci_probe(struct pci_dev *pci_dev,
>  	ulong page_table_ready, msix_table_ready;
>  	int retries = 0;
>  	struct gasket_dev *gasket_dev;
> +	int page_table_init = APEX_BAR2_REG_KERNEL_HIB_PAGE_TABLE_INIT;
> +	int msix_table_init = APEX_BAR2_REG_KERNEL_HIB_MSIX_TABLE_INIT;
>  
>  	ret = pci_enable_device(pci_dev);
>  	if (ret) {
> @@ -606,10 +611,10 @@ static int apex_pci_probe(struct pci_dev *pci_dev,
>  	while (retries < APEX_RESET_RETRY) {
>  		page_table_ready =
>  			gasket_dev_read_64(gasket_dev, APEX_BAR_INDEX,
> -					   APEX_BAR2_REG_KERNEL_HIB_PAGE_TABLE_INIT);
> +					   page_table_init);
>  		msix_table_ready =
>  			gasket_dev_read_64(gasket_dev, APEX_BAR_INDEX,
> -					   APEX_BAR2_REG_KERNEL_HIB_MSIX_TABLE_INIT);
> +					   msix_table_init);
>  		if (page_table_ready && msix_table_ready)
>  			break;
>  		schedule_timeout(msecs_to_jiffies(APEX_RESET_DELAY));

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
