Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D88418861D
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Mar 2020 14:43:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0D83985FFD;
	Tue, 17 Mar 2020 13:43:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3KBsU27u6xlz; Tue, 17 Mar 2020 13:43:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B728A86DAA;
	Tue, 17 Mar 2020 13:43:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D38171BF404
 for <devel@linuxdriverproject.org>; Tue, 17 Mar 2020 13:43:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CAFC988C6E
 for <devel@linuxdriverproject.org>; Tue, 17 Mar 2020 13:43:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ARQ6SKucmWPL for <devel@linuxdriverproject.org>;
 Tue, 17 Mar 2020 13:43:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2B31A885CA
 for <devel@driverdev.osuosl.org>; Tue, 17 Mar 2020 13:43:40 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02HDgg2Y128700;
 Tue, 17 Mar 2020 13:43:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=tu61PjzNuMT+w1hVymOlZn65zpPCOO79gOo7q5EwDMU=;
 b=VX+LOdkA8JxjNJZiRvng8wlbnO4o+k0nd0fa2pb9UkSS3+Ej9BSPUtA4YBxVzlnxfw18
 hd/sje9yajzqQ5cKfMNqRveXbSfnz7OBag1I4lp3gLDsq6YrLH1KCItN5Pm8QpZVUx0x
 hg7/qJ0IeglOO09h/1tE1XSYSWSjg+quZFSZULeE4+4XS/KIQa5qYILqYG1AQdrteVBH
 9jv8tESLRxbLhOGVNDXwFe1Pv/Li5hezWbE6CsActSTsrE2ZLgv6Iv49gyP+U+oI8u7U
 eEgHRXH4Z0an9q1detFnWmrkCU2ZTK+2w2bbHQYx6fxtjEiR+BJN409IYTpOFWEuPBjO dQ== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2yrq7kvv8n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 17 Mar 2020 13:43:39 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02HDbYj5064619;
 Tue, 17 Mar 2020 13:43:38 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2ys92d1fwk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 17 Mar 2020 13:43:38 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 02HDhbdc029022;
 Tue, 17 Mar 2020 13:43:37 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 17 Mar 2020 06:43:37 -0700
Date: Tue, 17 Mar 2020 16:43:29 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Camylla Goncalves Cantanheide <c.cantanheide@gmail.com>
Subject: Re: [PATCH 2/2] staging: rtl8192u: Corrects 'Avoid CamelCase' for
 variables
Message-ID: <20200317134329.GC4650@kadam>
References: <20200317085130.21213-1-c.cantanheide@gmail.com>
 <20200317085130.21213-2-c.cantanheide@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200317085130.21213-2-c.cantanheide@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9562
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxlogscore=999
 mlxscore=0 spamscore=0 bulkscore=0 adultscore=0 suspectscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2003170060
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9562
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 suspectscore=0
 adultscore=0 bulkscore=0 mlxlogscore=999 priorityscore=1501 clxscore=1011
 malwarescore=0 mlxscore=0 phishscore=0 impostorscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003170060
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
 lkcamp@lists.libreplanetbr.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Mar 17, 2020 at 08:51:30AM +0000, Camylla Goncalves Cantanheide wrote:
> The variables of function setKey triggered a 'Avoid CamelCase'
> warning from checkpatch.pl. This patch renames these
> variables to correct this warning.
> 
> Signed-off-by: Camylla Goncalves Cantanheide <c.cantanheide@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U_core.c | 52 +++++++++++++-------------
>  1 file changed, 26 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
> index 93a15d57e..fcfb9024a 100644
> --- a/drivers/staging/rtl8192u/r8192U_core.c
> +++ b/drivers/staging/rtl8192u/r8192U_core.c
> @@ -4877,50 +4877,50 @@ void EnableHWSecurityConfig8192(struct net_device *dev)
>  	write_nic_byte(dev, SECR,  SECR_value);
>  }
>  
> -void setKey(struct net_device *dev, u8 EntryNo, u8 KeyIndex, u16 KeyType,
> -	    u8 *MacAddr, u8 DefaultKey, u32 *KeyContent)
> +void setKey(struct net_device *dev, u8 entryno, u8 keyindex, u16 keytype,
> +	    u8 *macaddr, u8 defaultkey, u32 *keycontent)
>  {
> -	u32 TargetCommand = 0;
> -	u32 TargetContent = 0;
> -	u16 usConfig = 0;
> +	u32 target_command = 0;
> +	u32 target_content = 0;
> +	u16 us_config = 0;

Use these renames to think deeply about naming.

I don't like "entryno".  I would prefer "entry_no".  Use the same
underscore for spaces rule for key_index, mac_addr and all the rest.  Is
"key_idx" better or "key_index"?

What added value or meaning does the "target_" part of "target_command"
add?  Use "cmd" instead of "command".  "target_command" and
"target_content" are the same length and mostly the same letters.  Avoid
that sort of thing because it makes it hard to read at a glance.  The
two get swapped in your head.

What does the "us_" mean in us_config?  Is it microsecond as in usec?
Is it United states?  Actually it turns out it probably means "unsigned
short".  Never make the variable names show the type.  If you have a
good editor you can just hover the mouse over a variable to see the
type.  Or if you're using vim like me, then you have to use '*' to
highlight the variable and scroll to the top of the function.  Either
way, never use "us_" to mean unsigned short.

What does the "config" part of "us_config" mean?  What does the "content"
part of "target_content" mean?  Always think about that.  Variable names
are hard and maybe "config" and "content" are clear enough.  But at
think about it, and consider all the options.

Anyway, the reason that this patch needs to be re-written is because
we want underscores in place of spaces for "key_type" and because
"us_config" is against the rules.  The rest is just something to
consider and if you find better names, then go with that but if you
don't just fix those two things and resend.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
