Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9042C19718F
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Mar 2020 03:03:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3896488177;
	Mon, 30 Mar 2020 01:03:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9FPbOioqUwLc; Mon, 30 Mar 2020 01:03:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 354FE87E5E;
	Mon, 30 Mar 2020 01:03:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 873D01BF968
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 01:03:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7ED4A87120
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 01:03:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6Ccy0BxDpkCc for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 01:03:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-74.mimecast.com
 (us-smtp-delivery-74.mimecast.com [63.128.21.74])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2D18387015
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 01:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585530211;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IhDQmK8knMvx7axTYBvMjdkY5zqMjvS+uVG/7sLvC9M=;
 b=d1UI/5xWEEVfazOtFKbQmXea3n5Zr+/OOWqgzeo3ATn98kdsU1aFeJ54IjQ+iuHc2JhkwL
 PZiWhbIM4zpC9py9Z7BM1ue0lBG0EBBjuBaCpIGwj43N1+uKk/wUfB4TYtCeo+to9y5Ena
 M/RS5n3YTwJJq2giSxVEHzukkZNtRU0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-196-XgmSHP17MXGpFKZV1LnHWQ-1; Sun, 29 Mar 2020 21:03:30 -0400
X-MC-Unique: XgmSHP17MXGpFKZV1LnHWQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1E9AB1005509;
 Mon, 30 Mar 2020 01:03:29 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.4])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1609660BEC;
 Mon, 30 Mar 2020 01:03:26 +0000 (UTC)
Date: Mon, 30 Mar 2020 03:03:21 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Simran Singhal <singhalsimran0@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Remove multiple
 assignments
Message-ID: <20200330030321.73bab680@elisabeth>
In-Reply-To: <20200325142226.GA14711@simran-Inspiron-5558>
References: <20200325142226.GA14711@simran-Inspiron-5558>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org,
 outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 25 Mar 2020 19:52:26 +0530
Simran Singhal <singhalsimran0@gmail.com> wrote:

> Remove multiple assignments by factorizing them.
> Problem found using checkpatch.pl:-
> CHECK: multiple assignments should be avoided
> 
> Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_cmd.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> index 61a9bf61b976..744b40dd4cf0 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> @@ -194,7 +194,9 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
>  
>  	pcmdpriv->rsp_buf = pcmdpriv->rsp_allocated_buf  +  4 - ((SIZE_PTR)(pcmdpriv->rsp_allocated_buf) & 3);
>  
> -	pcmdpriv->cmd_issued_cnt = pcmdpriv->cmd_done_cnt = pcmdpriv->rsp_cnt = 0;
> +	pcmdpriv->cmd_issued_cnt = 0;
> +	pcmdpriv->cmd_done_cnt = 0;
> +	pcmdpriv->rsp_cnt = 0;

I think this is better than the original because the original exceeds
80 columns (and looks horrible in general). But the second hunk:

>  
>  	mutex_init(&pcmdpriv->sctx_mutex);
>  exit:
> @@ -2138,7 +2140,8 @@ void rtw_setassocsta_cmdrsp_callback(struct adapter *padapter,  struct cmd_obj *
>  		goto exit;
>  	}
>  
> -	psta->aid = psta->mac_id = passocsta_rsp->cam_id;
> +	psta->aid = passocsta_rsp->cam_id;
> +	psta->mac_id = passocsta_rsp->cam_id;

I would leave this alone, because psta->aid is really the same thing
here, it's not just a value that happens to be assigned to both by
accident.

-- 
Stefano

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
