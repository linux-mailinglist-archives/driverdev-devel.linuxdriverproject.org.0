Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C17192238AA
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Jul 2020 11:48:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 50886861AA;
	Fri, 17 Jul 2020 09:48:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yHACrMZI837A; Fri, 17 Jul 2020 09:48:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C1C9786234;
	Fri, 17 Jul 2020 09:48:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 781E91BF3C5
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 09:47:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7282F88092
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 09:47:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zzoVlLhFVrOn for <devel@linuxdriverproject.org>;
 Fri, 17 Jul 2020 09:47:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp90.iad3b.emailsrvr.com (smtp90.iad3b.emailsrvr.com
 [146.20.161.90])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6037388086
 for <devel@driverdev.osuosl.org>; Fri, 17 Jul 2020 09:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1594979277;
 bh=WXkjnIO94DrrmTRmi3QBp3/Lh0Il+Vz6algDOKksuBc=;
 h=Subject:To:From:Date:From;
 b=y1xYn0NFBkJeaNCBBUotm4z1kwx472qTs/IhTRVjU7TFEv48y/kqYkL3H37YGVaT4
 zbskUISJ6TKIGxDHnyI4ULmYkUVd0lLAcqZj9gxoU8NSMhT6ABn0bAtKjVMA3JO8Y6
 GqXRzIN4+tuIw4w8H5STbEhE+aRCKhzfYXwOS0mo=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1594979277;
 bh=WXkjnIO94DrrmTRmi3QBp3/Lh0Il+Vz6algDOKksuBc=;
 h=Subject:To:From:Date:From;
 b=NBq/h2H4SwIN245gkZoKtTMMwrEhv5o+IknLSfP7s4Pk4LEznd7I8a8vF1eTfkzLS
 I40kzzTQ/DZoZwgMgLthHxn9LXC5nNPyzf1sfH6Xifd2sFZnDk3l7diaA2jEKvCHkD
 ijsxkJYza/b4tYhQVeu/yHyAkxnWGN6TSqy3Z4Eg=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp4.relay.iad3b.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 5886420080; 
 Fri, 17 Jul 2020 05:47:56 -0400 (EDT)
Subject: Re: [PATCH v4] staging: comedi: comedi_fops.c: added casts to get rid
 of sparse warnings
To: B K Karthik <bkkarthik@pesu.pes.edu>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Vlastimil Babka <vbabka@suse.cz>,
 Xiyu Yang <xiyuyang19@fudan.edu.cn>, Michel Lespinasse <walken@google.com>,
 Divyansh Kamboj <kambojdivyansh2000@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
References: <20200716152548.mzau4zhurwkzp5p6@pesu-pes-edu>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <8afee168-b65c-dafe-59f6-32d1c59d87dc@mev.co.uk>
Date: Fri, 17 Jul 2020 10:47:55 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200716152548.mzau4zhurwkzp5p6@pesu-pes-edu>
Content-Language: en-GB
X-Classification-ID: 2d6a9683-da48-406f-a750-e911abcb7c7b-1-1
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

On 16/07/2020 16:25, B K Karthik wrote:
> fixed sparse warnings by adding a cast in assignment from
> void [noderef] __user * to unsigned int __force *
> and a reverse cast in argument from
> unsigned int * to  unsigned int __user * .
> 
> v1 -> v2:
> - Add a reverse cast in argument
> v2 -> v3:
> - Change commit description as suggested by Ian Abott
> v3 -> v4:
> - Add versioning information in commit description

For future reference, the patch change history should go below the "---" 
divider line below where git will ignore it so that it does not appear 
in the final commit description.  Otherwise, the committer would need to 
edit it out manually.

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

Still looks good.

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
