Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1AAB22212F
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 13:15:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 803168A6A9;
	Thu, 16 Jul 2020 11:15:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0dxLZMddlE0d; Thu, 16 Jul 2020 11:15:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 025298A69F;
	Thu, 16 Jul 2020 11:15:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E00A61BF3C0
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 11:15:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D92C922EE7
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 11:15:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8gppD8fgHi9V for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 11:15:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp104.ord1c.emailsrvr.com (smtp104.ord1c.emailsrvr.com
 [108.166.43.104])
 by silver.osuosl.org (Postfix) with ESMTPS id 4CA4622EDD
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 11:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1594898124;
 bh=T/MnAJmGny+runRexgMA3yXRTrb0zwJfIt7Q+noAQk8=;
 h=Subject:To:From:Date:From;
 b=uTYEiy/mmmqcuzjD3fVqeBi8o79j2rvrww5/hxmrRXIpJ+Q9YkUGuOhTDJJgcTfuf
 4ufLub1MyQsGqYc2nvmzqH0n2OBpUA7bjujniIPGnRjJOBcZ4ZbTnNWysFc5KlbKuY
 Fu2mmHIN6H8NiKwroIXG+Ui6MoCImSZyTTXSsxck=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1594898124;
 bh=T/MnAJmGny+runRexgMA3yXRTrb0zwJfIt7Q+noAQk8=;
 h=Subject:To:From:Date:From;
 b=jtrVt2e+Rlvxe/SPvMWUSX7aTwU0xV+22MvOM6P+lx0whtFKK+xE+b+TgA8o1LOww
 jsP1UzHI059/TTJHNTJFnpvuq7AsiTpkHRDpVLSkd0si6kJsWJqceLan4SgyHFbVyz
 tFP40U+ly3c4JzkTUXTLYLTKajdagSGGSyR1i9Gw=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp22.relay.ord1c.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 35550E04C2; 
 Thu, 16 Jul 2020 07:15:23 -0400 (EDT)
Subject: Re: [PATCH v2] staging: comedi: comedi_fops.c: added casts to get rid
 of sparse warnings
To: B K Karthik <bkkarthik@pesu.pes.edu>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Xin Tan <tanxin.ctf@gmail.com>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 Divyansh Kamboj <kambojdivyansh2000@gmail.com>,
 Michel Lespinasse <walken@google.com>, Xiyu Yang <xiyuyang19@fudan.edu.cn>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
References: <20200715114824.rwqemojowcivbc3z@pesu-pes-edu>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <a2eabb99-82b6-247f-4806-4e564bb0eac3@mev.co.uk>
Date: Thu, 16 Jul 2020 12:15:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200715114824.rwqemojowcivbc3z@pesu-pes-edu>
Content-Language: en-GB
X-Classification-ID: 225dbd0f-4c33-42ef-bdb7-9d3d91d41638-1-1
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 15/07/2020 12:48, B K Karthik wrote:
> fixed sparse warnings by adding a cast in assignment from
> void [noderef] __user * to unsigned int __force *
> and a reverse cast in argument from
> void [noderef] __user * to  unsigned int __user * .

Minor quibble: the reverse cast is actually from unsigned int * to 
unsigned int __user * .

> 
> Signed-off-by: B K Karthik <karthik.bk2000@live.com>
> ---
>   drivers/staging/comedi/comedi_fops.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
> index 3f70e5dfac39..9cdc1e8a022d 100644
> --- a/drivers/staging/comedi/comedi_fops.c
> +++ b/drivers/staging/comedi/comedi_fops.c
> @@ -2956,7 +2956,7 @@ static int get_compat_cmd(struct comedi_cmd *cmd,
>   	cmd->scan_end_arg = v32.scan_end_arg;
>   	cmd->stop_src = v32.stop_src;
>   	cmd->stop_arg = v32.stop_arg;
> -	cmd->chanlist = compat_ptr(v32.chanlist);
> +	cmd->chanlist = (unsigned int __force *)compat_ptr(v32.chanlist);
>   	cmd->chanlist_len = v32.chanlist_len;
>   	cmd->data = compat_ptr(v32.data);
>   	cmd->data_len = v32.data_len;
> @@ -2983,7 +2983,7 @@ static int put_compat_cmd(struct comedi32_cmd_struct __user *cmd32,
>   	v32.stop_src = cmd->stop_src;
>   	v32.stop_arg = cmd->stop_arg;
>   	/* Assume chanlist pointer is unchanged. */
> -	v32.chanlist = ptr_to_compat(cmd->chanlist);
> +	v32.chanlist = ptr_to_compat((unsigned int __user *)cmd->chanlist);
>   	v32.chanlist_len = cmd->chanlist_len;
>   	v32.data = ptr_to_compat(cmd->data);
>   	v32.data_len = cmd->data_len;
> 

Reviewed-by: Ian Abbott <abbotti@mev.co.uk>

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
