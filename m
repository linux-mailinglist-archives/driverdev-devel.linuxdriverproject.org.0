Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 555063393D2
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 17:43:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CCF334ED9A;
	Fri, 12 Mar 2021 16:43:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eGYFFtfNDNOs; Fri, 12 Mar 2021 16:43:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B72194ED47;
	Fri, 12 Mar 2021 16:43:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 434CE1BF9B2
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 16:43:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 329AE84400
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 16:43:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=infradead.org header.b="WBOVImtx";
 dkim=pass (2048-bit key) header.d=infradead.org header.b="lWS3dw4a"
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W6Tp47RXlR4i for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 16:43:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from desiato.infradead.org (desiato.infradead.org
 [IPv6:2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D7D94843DD
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 16:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
 :In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description;
 bh=DdN12y8wew+vZHpjKJtDD1enNtaDHjC1Mg2RbmuJ80M=; b=WBOVImtxdtH6KR0SfeWR22+u5J
 /zlCZiknZpLqMNHUwOu3eDDewHboFOAq248h83r87IkCUNJMZtt+aYf+cCmpXMZgyThQ6bWVDbCM+
 RRsr/iqRrbKtC62wcNq87PPP8PxX0jqnDQecN9cRDYZemx2gzaSw1ypYnHwTjaLl0lLLpvlzxRB2C
 17r9NOR5o6JIBR4azoaU84oflPl8ErGt41TgeWiYwAahGnKGrZvnyPp/2gVk1MB73xQbD6VWId0pb
 EwDgK7xdWL8z22udods7S5gGYSLmnS8eq2Y+W9gOo2kU64NCl06l1dVeHVA/FKDFo315KIUgrOfAn
 +HwXKFWg==;
Received: from merlin.infradead.org ([2001:8b0:10b:1234::107])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKksa-00C2Og-SZ
 for devel@driverdev.osuosl.org; Fri, 12 Mar 2021 16:43:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description;
 bh=DdN12y8wew+vZHpjKJtDD1enNtaDHjC1Mg2RbmuJ80M=; b=lWS3dw4aHMJnZqoZ3fkNkSwd66
 vUX0mszaoHHZ4s+57TcHvsYFPCEXBilwlMlBoEXZ1KBFc9+Ff92W+tiHavdWcdT/b1PLN4MB4ME9F
 YKXIkEu51hIECOiuAJY5fJzVjQC6IeAj1v35MYAk38+GYdEsAJYyjcRN1YeRhjunlCWbgK1/gU8E0
 pC7Bsh3ddMCzrUVKg4srxF3vkOsZhrghElhGfKc4PknKYSlyVsfrLV9X+sshKehnt7XEnzLqSrpZK
 wp6hbNqiTJvcKDUZxGHHaaUwxL2CY2mPe8d79jALo7JdS9twXiY7WI88bZEbaBBsGmm/fAQYVkkFU
 1GUPduAg==;
Received: from [2601:1c0:6280:3f0::3ba4]
 by merlin.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lKksM-0014Jd-5G; Fri, 12 Mar 2021 16:42:58 +0000
Subject: Re: [PATCH] staging: wimax: i2400m: Mundane typos fix in the file tx.c
To: Bhaskar Chowdhury <unixbhaskar@gmail.com>, gregkh@linuxfoundation.org,
 arnd@arndb.de, lee.jones@linaro.org, kuba@kernel.org,
 johannes@sipsolutions.net, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
References: <20210312114207.3624-1-unixbhaskar@gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <a6d52732-917c-c679-d7be-6454b316ea40@infradead.org>
Date: Fri, 12 Mar 2021 08:42:55 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210312114207.3624-1-unixbhaskar@gmail.com>
Content-Language: en-US
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 3/12/21 3:42 AM, Bhaskar Chowdhury wrote:
> 
> s/exahusted/exhausted/
> s/caleed/called/
> 
> Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>

Acked-by: Randy Dunlap <rdunlap@infradead.org>

> ---
>  drivers/staging/wimax/i2400m/tx.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/wimax/i2400m/tx.c b/drivers/staging/wimax/i2400m/tx.c
> index e9436212fe54..2d15de653951 100644
> --- a/drivers/staging/wimax/i2400m/tx.c
> +++ b/drivers/staging/wimax/i2400m/tx.c
> @@ -85,7 +85,7 @@
>   *       can keep adding payloads to it.
>   *
>   *     Closed: we are not appending more payloads to this TX message
> - *       (exahusted space in the queue, too many payloads or
> + *       (exhausted space in the queue, too many payloads or
>   *       whichever).  We have appended padding so the whole message
>   *       length is aligned to i2400m->bus_tx_block_size (as set by the
>   *       bus/transport layer).
> @@ -295,7 +295,7 @@ enum {
>  /*
>   * Calculate how much tail room is available
>   *
> - * Note the trick here. This path is ONLY caleed for Case A (see
> + * Note the trick here. This path is ONLY called for Case A (see
>   * i2400m_tx_fifo_push() below), where we have:
>   *
>   *       Case A
> --


-- 
~Randy

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
