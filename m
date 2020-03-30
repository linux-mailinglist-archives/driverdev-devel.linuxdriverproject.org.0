Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A384619718D
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Mar 2020 03:03:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B799587EA6;
	Mon, 30 Mar 2020 01:03:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E+1Fg8JQs4DT; Mon, 30 Mar 2020 01:03:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id ABCDE87E63;
	Mon, 30 Mar 2020 01:03:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B1BCF1BF968
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 01:03:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9F9E587E63
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 01:03:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MOzcnXdeklM9 for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 01:03:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-74.mimecast.com
 (us-smtp-delivery-74.mimecast.com [63.128.21.74])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7281887E5E
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 01:03:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585530196;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yUugoluBnwyJRYALZAP5gLOlTOYfV1KHNo4jHyfrVrU=;
 b=AES20ae/+VJ/KiGHj55h1I++T0Ihszj8h8BCHpodNjZIpsTDwjvDnViDYAlrGhlJrR/nF5
 MPJHM4oHItcdcYOoJhqzdFlCTNqrTJt9szLrrOT+zk8le+y44ffTweZanfGPITKMzMRMg6
 hdmJBC/CA8coKl9adMgNdNNfpq32+zA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-236-b83Lbdv_Pw6HknSb_AfGbQ-1; Sun, 29 Mar 2020 21:03:12 -0400
X-MC-Unique: b83Lbdv_Pw6HknSb_AfGbQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CC1F5189DF74;
 Mon, 30 Mar 2020 01:03:10 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.4])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B388E60C63;
 Mon, 30 Mar 2020 01:03:08 +0000 (UTC)
Date: Mon, 30 Mar 2020 03:03:03 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Simran Singhal <singhalsimran0@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Remove
 unnecessary braces for single statements
Message-ID: <20200330030303.024899f7@elisabeth>
In-Reply-To: <20200325140245.GA11949@simran-Inspiron-5558>
References: <20200325140245.GA11949@simran-Inspiron-5558>
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

On Wed, 25 Mar 2020 19:32:45 +0530
Simran Singhal <singhalsimran0@gmail.com> wrote:

> Clean up unnecessary braces around single statement blocks.
> Issues reported by checkpatch.pl as:
> WARNING: braces {} are not necessary for single statement blocks
> 
> Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_efuse.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_efuse.c b/drivers/staging/rtl8723bs/core/rtw_efuse.c
> index bdb6ff8aab7d..de7d15fdc936 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_efuse.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_efuse.c
> @@ -43,9 +43,8 @@ Efuse_Read1ByteFromFakeContent(
>  	u16 	Offset,
>  	u8 *Value)
>  {
> -	if (Offset >= EFUSE_MAX_HW_SIZE) {
> +	if (Offset >= EFUSE_MAX_HW_SIZE)
>  		return false;
> -	}
>  	/* DbgPrint("Read fake content, offset = %d\n", Offset); */

I find the resulting version a bit confusing:

	if (Offset >= EFUSE_MAX_HW_SIZE)
		return false;
	/* DbgPrint("Read fake content, offset = %d\n", Offset); */
	if (fakeEfuseBank == 0)
		*Value = fakeEfuseContent[Offset];

The check on "Offset" isn't separated in any way by the following
logic. I would suggest that you replace the closing brace by a newline,
also for the other cases you're fixing up here:

	if (Offset >= EFUSE_MAX_HW_SIZE)
		return false;

	/* DbgPrint("Read fake content, offset = %d\n", Offset); */
	...

-- 
Stefano

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
