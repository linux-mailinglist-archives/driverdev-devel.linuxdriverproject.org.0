Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF341981FF
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Mar 2020 19:15:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 01261868B5;
	Mon, 30 Mar 2020 17:15:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LyhpahW9Gv7Z; Mon, 30 Mar 2020 17:15:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CAB738688B;
	Mon, 30 Mar 2020 17:15:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D51F01BF403
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 17:15:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D02712076E
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 17:15:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tqH961HoqQgu for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 17:15:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-74.mimecast.com
 (us-smtp-delivery-74.mimecast.com [63.128.21.74])
 by silver.osuosl.org (Postfix) with ESMTPS id 9D6F32002D
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 17:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585588507;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OVuub6JvUfi96XLhyjTFYsOF46LcBuVZlqMIFo1MoSI=;
 b=Ml8+pFE4jDA+wLHq48LOK6tJKXQUaYZenYGC5k3ZQ9HoT3KLph0LGUPurjJGun7MPnwJN5
 HAtZA2Xqi4cXshU/uqDeIQEtyoErMcwHr+pAEoykqsBhLEdInwBSO+wMQ1Iqylu5PiwLOU
 lZofQ2ni+gNyP/dGnkV27CHFiKJSAgM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-364-dH9LHYWXOq28ZFMRDrrxlA-1; Mon, 30 Mar 2020 13:15:03 -0400
X-MC-Unique: dH9LHYWXOq28ZFMRDrrxlA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1691E149C1;
 Mon, 30 Mar 2020 17:14:54 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.18])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A17195C1B5;
 Mon, 30 Mar 2020 17:14:47 +0000 (UTC)
Date: Mon, 30 Mar 2020 19:14:39 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v4] staging: vt6656: add error code
 handling to unused variable
Message-ID: <20200330191439.3bfcb658@elisabeth>
In-Reply-To: <20200330164530.2919-1-jbwyatt4@gmail.com>
References: <20200330164530.2919-1-jbwyatt4@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
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
Cc: devel@driverdev.osuosl.org, Malcolm Priestley <tvboxspy@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com,
 Forest Bond <forest@alittletooquiet.net>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 30 Mar 2020 09:45:30 -0700
"John B. Wyatt IV" <jbwyatt4@gmail.com> wrote:

> Add error code handling to unused 'ret' variable that was never used.
> Return an error code from functions called within vnt_radio_power_on.
> 
> Issue reported by coccinelle (coccicheck).
> 
> Suggested-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
> Suggested-by: Stefano Brivio <sbrivio@redhat.com>
> Suggested-by: Julia Lawall <julia.lawall@inria.fr>
> Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> ---
> v4: Move Suggested-by: Julia Lawall above seperator line.

Actually, as Julia didn't suggest this patch, the place where you had
this in v3 was the right one.

>     Add Reviewed-by tag as requested by Quentin Deslandes.
>     Suggested-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
> 
> v3: Forgot to add v2 code changes to commit.
> 
> v2: Replace goto statements with return.
>     Remove last if check because it was unneeded.
>     Suggested-by: Julia Lawall <julia.lawall@inria.fr>
> 
>  drivers/staging/vt6656/card.c | 18 +++++++++++-------
>  1 file changed, 11 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
> index dc3ab10eb630..239012539e73 100644
> --- a/drivers/staging/vt6656/card.c
> +++ b/drivers/staging/vt6656/card.c
> @@ -723,9 +723,13 @@ int vnt_radio_power_on(struct vnt_private *priv)
>  {
>  	int ret = 0;
>  
> -	vnt_exit_deep_sleep(priv);
> +	ret = vnt_exit_deep_sleep(priv);
> +	if (ret)
> +		return ret;
>  
> -	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
> +	ret = vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
> +	if (ret)
> +		return ret;
>  
>  	switch (priv->rf_type) {
>  	case RF_AL2230:
> @@ -734,14 +738,14 @@ int vnt_radio_power_on(struct vnt_private *priv)
>  	case RF_VT3226:
>  	case RF_VT3226D0:
>  	case RF_VT3342A0:
> -		vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
> -				    (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
> +		ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
> +					 (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));

Note that you broke the alignment here: the ( should be aligned with
'priv'. By the way, those parentheses are useless, but it's not
something you should fix in this patch.

>  		break;

Unless gcc whines (or checkpatch, even), you could replace this break
by the if (ret) return ret; below. If some tool is not happy with this,
though, you should still move that here: ret will be checked only for
those values of 'rf_type'.

>  	}
> +	if (ret)
> +		return ret;

Another thing that should be considered in this function is to restore
the previous hardware state on failures, but I think the way you're
handling this is possibly the safest, without hardware to test on.

-- 
Stefano

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
