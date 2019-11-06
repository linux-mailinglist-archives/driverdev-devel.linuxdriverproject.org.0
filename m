Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DBECDF1E54
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Nov 2019 20:12:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3BA438A1B0;
	Wed,  6 Nov 2019 19:12:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4tyOu8dOqJHb; Wed,  6 Nov 2019 19:12:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8F2178A140;
	Wed,  6 Nov 2019 19:12:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C1CE31BF3C3
 for <devel@linuxdriverproject.org>; Wed,  6 Nov 2019 19:12:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BE7718A733
 for <devel@linuxdriverproject.org>; Wed,  6 Nov 2019 19:12:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e9Kkl2gGo25a for <devel@linuxdriverproject.org>;
 Wed,  6 Nov 2019 19:12:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0242.hostedemail.com
 [216.40.44.242])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D2D468A703
 for <devel@driverdev.osuosl.org>; Wed,  6 Nov 2019 19:12:26 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay03.hostedemail.com (Postfix) with ESMTP id 3B3AF8384366;
 Wed,  6 Nov 2019 19:12:24 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::::::::,
 RULES_HIT:41:355:379:599:800:960:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1434:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3871:4321:5007:7514:8603:10004:10400:11026:11232:11473:11658:11914:12043:12048:12296:12297:12438:12555:12740:12760:12895:13069:13255:13311:13357:13439:14181:14659:14721:14819:21080:21451:21627:30054:30070:30091,
 0,
 RBL:47.151.135.224:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:25,
 LUA_SUMMARY:none
X-HE-Tag: club05_4efb27ab1d741
X-Filterd-Recvd-Size: 2816
Received: from XPS-9350.home (unknown [47.151.135.224])
 (Authenticated sender: joe@perches.com)
 by omf20.hostedemail.com (Postfix) with ESMTPA;
 Wed,  6 Nov 2019 19:12:22 +0000 (UTC)
Message-ID: <e3ee9e75d7c25e2d25b74fd1d4709f8dacb79efc.camel@perches.com>
Subject: Re: [PATCH] staging: gasket: gasket_ioctl: Remove unnecessary
 line-breaks in funtion signature
From: Joe Perches <joe@perches.com>
To: Valery Ivanov <ivalery111@gmail.com>, rspringer@google.com, 
 toddpoynor@google.com, benchan@chromium.org, Simon Que <sque@chromium.org>,
 John Joseph <jnjoseph@google.com>
Date: Wed, 06 Nov 2019 11:12:09 -0800
In-Reply-To: <20191106180821.GA19385@hwsrv-485799.hostwindsdns.com>
References: <20191106180821.GA19385@hwsrv-485799.hostwindsdns.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 2019-11-06 at 18:08 +0000, Valery Ivanov wrote:
> 	This patch fix the function signature for trace_gasket_ioctl_page_table_data
> 	to avoid the checkpatch.pl warning:
> 
> 		CHECK: Lines should not end with a '('
> 
> Signed-off-by: Valery Ivanov <ivalery111@gmail.com>

All of this stuff is no-op and could just as easily be removed
completely as GASKET_KERNEL_TRACE_SUPPORT is not #defined anywhere.

Is the actual trace #include file supposed to be available somewhere?

#ifdef GASKET_KERNEL_TRACE_SUPPORT
#define CREATE_TRACE_POINTS
#include <trace/events/gasket_ioctl.h>
#else
#define trace_gasket_ioctl_entry(x, ...)
#define trace_gasket_ioctl_exit(x)
#define trace_gasket_ioctl_integer_data(x)
#define trace_gasket_ioctl_eventfd_data(x, ...)
#define trace_gasket_ioctl_page_table_data(x, ...)
#define trace_gasket_ioctl_config_coherent_allocator(x, ...)
#endif

trace file not found...

> ---
>  drivers/staging/gasket/gasket_ioctl.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/gasket/gasket_ioctl.c b/drivers/staging/gasket/gasket_ioctl.c
> index 240f9bb..55cb6b1 100644
> --- a/drivers/staging/gasket/gasket_ioctl.c
> +++ b/drivers/staging/gasket/gasket_ioctl.c
> @@ -54,9 +54,10 @@ static int gasket_read_page_table_size(struct gasket_dev *gasket_dev,
>  	ibuf.size = gasket_page_table_num_entries(
>  		gasket_dev->page_table[ibuf.page_table_index]);
>  
> -	trace_gasket_ioctl_page_table_data(
> -		ibuf.page_table_index, ibuf.size, ibuf.host_address,
> -		ibuf.device_address);
> +	trace_gasket_ioctl_page_table_data(ibuf.page_table_index,
> +					   ibuf.size,
> +					   ibuf.host_address,
> +					   ibuf.device_address);
>  
>  	if (copy_to_user(argp, &ibuf, sizeof(ibuf)))
>  		return -EFAULT;

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
