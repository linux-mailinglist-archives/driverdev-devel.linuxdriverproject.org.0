Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D907220BAE
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jul 2020 13:20:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2BF4C89403;
	Wed, 15 Jul 2020 11:20:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pnk6m-XhMES0; Wed, 15 Jul 2020 11:19:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DBE03893FA;
	Wed, 15 Jul 2020 11:19:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BDE6F1BF3F0
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 11:19:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BA74384D35
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 11:19:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZGLxu169gjuv for <devel@linuxdriverproject.org>;
 Wed, 15 Jul 2020 11:19:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp100.ord1d.emailsrvr.com (smtp100.ord1d.emailsrvr.com
 [184.106.54.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D8D588AF87
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1594811993;
 bh=PfhUjWoGfzXa24bYs69+6jW8ujvkaYrav1deIMbjDzw=;
 h=Subject:To:From:Date:From;
 b=RU3wQeZ/cWGHO9rnyElBfthR6qn+Bjhcvj+GPzwCRFHJXFfkOBmq24RM4TeMyvBNU
 zOCfUZdOp51YSm5uonfVSVQYhl9z33xI1Gbn+pkzG6sCZHqDkt6NTiTwvIk/eCXuQo
 kdiiv6O2PJCQy1p2dVrEAWaW3g8XXpo30KjpU3uE=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1594811993;
 bh=PfhUjWoGfzXa24bYs69+6jW8ujvkaYrav1deIMbjDzw=;
 h=Subject:To:From:Date:From;
 b=P7SH4M1KfkHWkmuDbTQTIpjh8AVPCtUNqNHdsjhw+9DtsDo6AjE0m6yZkzgxCEBRO
 cPZMbhGlLrR38qWn89cB4VcrO9WWQ4oS4S4lwEtV455ftjyq2LVH/5+LYRzZdhJq+a
 /IadFyNDAoJDffW1O4F85h+QaOwcNwfbSwyn+SjY=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp13.relay.ord1d.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id BF118C00D9; 
 Wed, 15 Jul 2020 07:19:51 -0400 (EDT)
Subject: Re: [PATCH] staging: comedi: comedi_fops.c: changed type in
 assignment to unsigned int *
To: B K Karthik <bkkarthik@pesu.pes.edu>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Xiyu Yang <xiyuyang19@fudan.edu.cn>,
 Michel Lespinasse <walken@google.com>,
 Divyansh Kamboj <kambojdivyansh2000@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
References: <20200715044813.fww3regsgsbgyp7b@pesu-pes-edu>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <4aa4d949-7ef9-ccfe-bf5c-11a380c8f542@mev.co.uk>
Date: Wed, 15 Jul 2020 12:19:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200715044813.fww3regsgsbgyp7b@pesu-pes-edu>
Content-Language: en-GB
X-Classification-ID: 9eceb263-004a-4246-841e-09953c9dc0d2-1-1
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

On 15/07/2020 05:48, B K Karthik wrote:
> fixed a sparse warning by changing the type in
> assignment from void [noderef] __user * to unsigned int *
> (different address space)
> 
> Signed-off-by: B K Karthik <karthik.bk2000@live.com>
> ---
>   drivers/staging/comedi/comedi_fops.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
> index 3f70e5dfac39..4cc012e231b7 100644
> --- a/drivers/staging/comedi/comedi_fops.c
> +++ b/drivers/staging/comedi/comedi_fops.c
> @@ -2956,7 +2956,7 @@ static int get_compat_cmd(struct comedi_cmd *cmd,
>   	cmd->scan_end_arg = v32.scan_end_arg;
>   	cmd->stop_src = v32.stop_src;
>   	cmd->stop_arg = v32.stop_arg;
> -	cmd->chanlist = compat_ptr(v32.chanlist);
> +	cmd->chanlist = (unsigned int *) compat_ptr(v32.chanlist);

That should be:

	cmd->chanlist = (unsigned int __force *)compat_ptr(v32.chanlist);

>   	cmd->chanlist_len = v32.chanlist_len;
>   	cmd->data = compat_ptr(v32.data);
>   	cmd->data_len = v32.data_len;
> 

A reverse cast is required in put_compat_cmd():

	v32.chanlist = ptr_to_compat((unsigned int __user *)cmd->chanlist);

Those changes will get rid of the sparse warnings.

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
