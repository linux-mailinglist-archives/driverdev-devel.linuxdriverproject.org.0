Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C46B19CD9D
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Apr 2020 01:51:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E37FC86B62;
	Thu,  2 Apr 2020 23:51:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NwLZ-mYhEXvv; Thu,  2 Apr 2020 23:51:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E3E1886B01;
	Thu,  2 Apr 2020 23:51:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B7A511BF384
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 23:51:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B2F6B86B08
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 23:51:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tzHSnYvUiheJ for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 23:51:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 73C4C86B01
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 23:51:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585871474;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dqJ98zPhLM+tdJlzifCE4+/QdEj75kGr2F6hTOU45+E=;
 b=czg4Q5/eUYC/mFwG6I7BqokTjgKVCbuh+E7olrKEwYUChw6p3gnt+gE16wzercfQtbC8Do
 7u2QVvEw104ya9RYea6uFaXYWQQcrwi7tE3TB2QH8ohFE3YXHopavU4qKAJhJsavQtczGt
 nHYxy/5hGlEwc3CH1sKIfIzgoZJUcEM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-241-mUOBEZTRM_yz-7_vQJAxXw-1; Thu, 02 Apr 2020 19:51:10 -0400
X-MC-Unique: mUOBEZTRM_yz-7_vQJAxXw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EA2ED107ACC9;
 Thu,  2 Apr 2020 23:51:08 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.67])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E03A21001B3F;
 Thu,  2 Apr 2020 23:51:05 +0000 (UTC)
Date: Fri, 3 Apr 2020 01:50:57 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: emxx_udc: Remove unused code
Message-ID: <20200403015057.7a972c79@elisabeth>
In-Reply-To: <20200402021706.788533-1-jbwyatt4@gmail.com>
References: <20200402021706.788533-1-jbwyatt4@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Saiyam Doshi <saiyamdoshi.in@gmail.com>, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed,  1 Apr 2020 19:17:06 -0700
"John B. Wyatt IV" <jbwyatt4@gmail.com> wrote:

> Remove unused code surrounded by an #if 0 block.
> 
> Code has not been altered since 2014 as reported by git blame.
> 
> Reported by checkpatch.
> 
> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> ---
>  drivers/staging/emxx_udc/emxx_udc.h | 6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
> index 9c2671cb32f7..bbfebe331033 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.h
> +++ b/drivers/staging/emxx_udc/emxx_udc.h
> @@ -9,12 +9,6 @@
>  #define _LINUX_EMXX_H
>  
>  /*---------------------------------------------------------------------------*/
> -/*----------------- Default undef */
> -#if 0
> -#define DEBUG
> -#define UDC_DEBUG_DUMP
> -#endif
> -
>  /*----------------- Default define */
>  #define	USE_DMA	1
>  #define USE_SUSPEND_WAIT	1

Formally, this is fine. But... think about it: this driver might be
rather buggy, so the first thing one might want to do with it is to
"enable" those two defines.

In general, that stuff has to disappear, and proper debugging
facilities have to be used, but with a driver in this state, as long as
proper debugging facilities aren't there, you might be doing more harm
than good.

-- 
Stefano

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
