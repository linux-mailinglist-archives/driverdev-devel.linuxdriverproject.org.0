Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E5F19860F
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Mar 2020 23:07:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 93A0522EE7;
	Mon, 30 Mar 2020 21:06:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zJoZBo7nPLp1; Mon, 30 Mar 2020 21:06:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C7AD2204FC;
	Mon, 30 Mar 2020 21:06:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6DB531BF3C3
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 21:06:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 666AC204FC
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 21:06:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sEUh4hPa17t2 for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 21:06:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-74.mimecast.com
 (us-smtp-delivery-74.mimecast.com [216.205.24.74])
 by silver.osuosl.org (Postfix) with ESMTPS id 5C0E32036D
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 21:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585602410;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=O5orfkpIWxG4X0fim40qmaOHzOaHEPG36AFc1Y+7h+M=;
 b=O6mWpXNnwpSfjsw+G7L4E8era2vUJYSlFo5Y+LKQGkjzrh6++mtgrhUsfx/zzbz2yCk9BO
 4wxPsR6zp+lBdKulFZcg12eTHaG22LVDmI2eFa6YvMwyh8Fw/i2kSv7y3MhOZ3liDLTQZX
 N0gaXPQ0FQMecRel0ZALJa3fnnkr73M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-367-H3ehbNgZPFCmGVZexGte0w-1; Mon, 30 Mar 2020 17:06:48 -0400
X-MC-Unique: H3ehbNgZPFCmGVZexGte0w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 275CA18A6EC0;
 Mon, 30 Mar 2020 21:06:46 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.18])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A26CA48;
 Mon, 30 Mar 2020 21:06:42 +0000 (UTC)
Date: Mon, 30 Mar 2020 23:06:34 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v5] staging: vt6656: add error code
 handling to unused variable
Message-ID: <20200330230634.3b905158@elisabeth>
In-Reply-To: <20200330184517.33074-1-jbwyatt4@gmail.com>
References: <20200330184517.33074-1-jbwyatt4@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
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

On Mon, 30 Mar 2020 11:45:17 -0700
"John B. Wyatt IV" <jbwyatt4@gmail.com> wrote:

> Add error code handling to unused 'ret' variable that was never used.
> Return an error code from functions called within vnt_radio_power_on.
> 
> Issue reported by coccinelle (coccicheck).
> 
> Suggested-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
> Suggested-by: Stefano Brivio <sbrivio@redhat.com>
> Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> ---
> v5: Remove Suggested-by: Julia Lawall above seperator line.
>     Remove break; statement in switch block.
>     break; removal checked by both gcc compile and checkpatch.
>
> [...]
>
> @@ -734,14 +738,15 @@ int vnt_radio_power_on(struct vnt_private *priv)
>  	case RF_VT3226:
>  	case RF_VT3226D0:
>  	case RF_VT3342A0:
> -		vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
> -				    (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
> +		ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
> +					  (SOFTPWRCTL_SWPE2 | 
> +					  SOFTPWRCTL_SWPE3));
>  		break;
>  	}
> +	if (ret)
> +		return ret;

Did you send the wrong version perhaps?

-- 
Stefano

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
