Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC561B94A7
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Apr 2020 01:28:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 683DB861CF;
	Sun, 26 Apr 2020 23:19:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A-86Bcp4NKUh; Sun, 26 Apr 2020 23:19:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 389E98472A;
	Sun, 26 Apr 2020 23:19:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9E9B41BF3A7
 for <devel@linuxdriverproject.org>; Sun, 26 Apr 2020 23:18:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9AEED85BEE
 for <devel@linuxdriverproject.org>; Sun, 26 Apr 2020 23:18:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6CawXmF9nhjo for <devel@linuxdriverproject.org>;
 Sun, 26 Apr 2020 23:18:58 +0000 (UTC)
X-Greylist: delayed 04:40:08 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0171.hostedemail.com
 [216.40.44.171])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 94E9685BE4
 for <devel@driverdev.osuosl.org>; Sun, 26 Apr 2020 23:18:58 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave03.hostedemail.com (Postfix) with ESMTP id C648418024E03
 for <devel@driverdev.osuosl.org>; Sun, 26 Apr 2020 17:22:58 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay01.hostedemail.com (Postfix) with ESMTP id 0C47F100E7B40;
 Sun, 26 Apr 2020 17:22:56 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:617:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3871:3872:3873:4250:4321:5007:9040:10004:10400:10848:11026:11232:11473:11658:11914:12043:12297:12438:12555:12740:12760:12895:13069:13255:13311:13357:13439:14181:14659:14721:21080:21451:21611:21627:21939:30012:30034:30054:30080:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: dog92_70c4842a5302f
X-Filterd-Recvd-Size: 2818
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf18.hostedemail.com (Postfix) with ESMTPA;
 Sun, 26 Apr 2020 17:22:54 +0000 (UTC)
Message-ID: <a3faa2e1e66eb5cba91181b0b916ceba1676d5d6.camel@perches.com>
Subject: Re: [PATCH] drivers: staging: rts5208: rtsx.c fix Unbalanced braces
 around else statement issue
From: Joe Perches <joe@perches.com>
To: John Oldman <john.oldman@polehill.co.uk>, gregkh@linuxfoundation.org
Date: Sun, 26 Apr 2020 10:22:53 -0700
In-Reply-To: <20200426160235.23836-1-john.oldman@polehill.co.uk>
References: <20200426160235.23836-1-john.oldman@polehill.co.uk>
User-Agent: Evolution 3.36.1-2 
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
Cc: devel@driverdev.osuosl.org, hslester96@gmail.com,
 micky_ching@realsil.com.cn, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 2020-04-26 at 17:02 +0100, John Oldman wrote:
> Fix coding style issue
> 
> Signed-off-by: John Oldman <john.oldman@polehill.co.uk>
> ---
>  drivers/staging/rts5208/rtsx.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
> index be0053c795b7..ca836ca2ee81 100644
> --- a/drivers/staging/rts5208/rtsx.c
> +++ b/drivers/staging/rts5208/rtsx.c
> @@ -419,10 +419,8 @@ static int rtsx_control_thread(void *__dev)
>  				chip->srb->device->id,
>  				(u8)chip->srb->device->lun);
>  			chip->srb->result = DID_BAD_TARGET << 16;
> -		}
> -
> -		/* we've got a command, let's do it! */
> -		else {
> +		} else {
> +			/* we've got a command, let's do it! */
>  			scsi_show_command(chip);
>  			rtsx_invoke_transport(chip->srb, chip);
>  		}

Please look at the code blocks you are changing and
if you are trying to fix unbalanced else blocks, do
all the blocks, not just one of many consecutive.

		/* reject the command if the direction indicator
		 * is UNKNOWN
		 */
		if (chip->srb->sc_data_direction == DMA_BIDIRECTIONAL) {
			dev_err(&dev->pci->dev, "UNKNOWN data direction\n");
			chip->srb->result = DID_ERROR << 16;
		}

		/* reject if target != 0 or if LUN is higher than
		 * the maximum known LUN
		 */
		else if (chip->srb->device->id) {
			dev_err(&dev->pci->dev, "Bad target number (%d:%d)\n",
				chip->srb->device->id,
				(u8)chip->srb->device->lun);
			chip->srb->result = DID_BAD_TARGET << 16;
		}

		else if (chip->srb->device->lun > chip->max_lun) {
			dev_err(&dev->pci->dev, "Bad LUN (%d:%d)\n",
				chip->srb->device->id,
				(u8)chip->srb->device->lun);
			chip->srb->result = DID_BAD_TARGET << 16;
		}

		/* we've got a command, let's do it! */
		else {
			scsi_show_command(chip);
			rtsx_invoke_transport(chip->srb, chip);
		}


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
