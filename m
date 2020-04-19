Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B90C1AFCE9
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Apr 2020 19:55:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id ED2FE8609C;
	Sun, 19 Apr 2020 17:55:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jlVI53H9gm1F; Sun, 19 Apr 2020 17:55:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BBDC685F37;
	Sun, 19 Apr 2020 17:55:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4739D1BF341
 for <devel@linuxdriverproject.org>; Sun, 19 Apr 2020 17:55:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 42C692047C
 for <devel@linuxdriverproject.org>; Sun, 19 Apr 2020 17:55:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UBa4rCOEWOxl for <devel@linuxdriverproject.org>;
 Sun, 19 Apr 2020 17:55:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by silver.osuosl.org (Postfix) with ESMTPS id 6EF3E203A8
 for <devel@driverdev.osuosl.org>; Sun, 19 Apr 2020 17:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587318949;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mX8cAWtGVYcEAdopl0xBwG41RjLtOiyjKvK1kLIQc90=;
 b=VkPG03C86VJF77AYErXyHCn9uU72Xk/wUn3Tfvtc69AcTuzZWwr7OYIWhedwIG3FERcx85
 LJH7tTpzbR67C56GJrrw7FYO+sf96yxsjMeb5Mlnv0GF2A66Fq7XDZhMiDb0+QLGGgsvMV
 CwzspdNrzwk3l2VP8TXy/amR1b+fdhQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-181-0PbGig6FOwmZgAQBZC7YiA-1; Sun, 19 Apr 2020 13:55:47 -0400
X-MC-Unique: 0PbGig6FOwmZgAQBZC7YiA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 50C4C800D5C;
 Sun, 19 Apr 2020 17:55:45 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.10])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9C2E3A1055;
 Sun, 19 Apr 2020 17:55:40 +0000 (UTC)
Date: Sun, 19 Apr 2020 19:55:34 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH] staging: vt6656: Refactor the vnt_ofdm_min_rate function
Message-ID: <20200419195534.1463ddcd@elisabeth>
In-Reply-To: <20200418134553.6415-1-oscar.carter@gmx.com>
References: <20200418134553.6415-1-oscar.carter@gmx.com>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "John B . Wyatt IV" <jbwyatt4@gmail.com>, linux-kernel@vger.kernel.org,
 Forest Bond <forest@alittletooquiet.net>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Oscar,

On Sat, 18 Apr 2020 15:45:53 +0200
Oscar Carter <oscar.carter@gmx.com> wrote:

> Replace the for loop by a ternary operator whose condition is an AND
> bitmask against the priv->basic_rates variable.
> 
> The purpose of the for loop was to check if any of bits from RATE_54M to
> RATE_6M was set, but it's not necessary to check every individual bit.
> The same result can be achieved using only one single mask which
> comprises all the commented bits.
> 
> This way avoid the iteration over an unnecessary for loop.
> 
> Also change the return type to bool because it's the type that this
> function returns.
> 
> Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> ---
>  drivers/staging/vt6656/card.c | 11 ++---------
>  drivers/staging/vt6656/card.h |  2 +-
>  2 files changed, 3 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
> index 9bd37e57c727..adaf93cf653a 100644
> --- a/drivers/staging/vt6656/card.c
> +++ b/drivers/staging/vt6656/card.c
> @@ -248,16 +248,9 @@ void vnt_update_top_rates(struct vnt_private *priv)
>  	priv->top_cck_basic_rate = top_cck;
>  }
> 
> -int vnt_ofdm_min_rate(struct vnt_private *priv)
> +bool vnt_ofdm_min_rate(struct vnt_private *priv)
>  {
> -	int ii;
> -
> -	for (ii = RATE_54M; ii >= RATE_6M; ii--) {
> -		if ((priv->basic_rates) & ((u16)BIT(ii)))
> -			return true;
> -	}
> -
> -	return false;
> +	return priv->basic_rates & GENMASK(RATE_54M, RATE_6M) ? true : false;

priv->basic_rates & GENMASK(RATE_54M, RATE_6M) is already true if
non-zero and false otherwise. Note that I haven't checked if the
rest is correct.

-- 
Stefano

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
