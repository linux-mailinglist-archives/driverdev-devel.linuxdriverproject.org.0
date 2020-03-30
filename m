Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE5F197BCD
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Mar 2020 14:27:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 527FA85F7E;
	Mon, 30 Mar 2020 12:27:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bX0cbHJQczoY; Mon, 30 Mar 2020 12:27:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 32985858C6;
	Mon, 30 Mar 2020 12:27:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1429B1BF3B0
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 12:27:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1119387D8E
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 12:27:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PPkcJuhg26Ye for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 12:27:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 94BF487D7C
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 12:27:30 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EC43420675;
 Mon, 30 Mar 2020 12:27:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585571250;
 bh=ajDQwbsNxsLl0J0u0qBd4KKnlR4p1TibQ00sEsLk0ZE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DXKBEWPy8pX6UU765tRl+nSECxxo98TqKBu3GDeQaN796sPI4b3gosPySJ1XV+Q3+
 do9zcGocwKrkGXHHB8IGm1OVNxAQ8Kva+pCCW1lc03exbElWvqTBFK+uEIzWDdlobe
 CeNw5eVMeInzTK5Fz/ukY5rzchWd84IYGwWcU6yU=
Date: Mon, 30 Mar 2020 14:27:14 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH] staging: vt6656: Define EnCFG_BBType_MASK as OR between
 previous defines
Message-ID: <20200330122714.GA113453@kroah.com>
References: <20200327165802.8445-1-oscar.carter@gmx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200327165802.8445-1-oscar.carter@gmx.com>
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
Cc: devel@driverdev.osuosl.org, Forest Bond <forest@alittletooquiet.net>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Mar 27, 2020 at 05:58:02PM +0100, Oscar Carter wrote:
> Define the EnCFG_BBType_MASK bit as an OR operation between two previous
> defines instead of using the OR between two new BIT macros. Thus, the
> code is more clear.
> 
> Fixes: a74081b44291 ("staging: vt6656: Use BIT() macro instead of hex value")
> Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/staging/vt6656/mac.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vt6656/mac.h b/drivers/staging/vt6656/mac.h
> index c532b27de37f..b01d9ee8677e 100644
> --- a/drivers/staging/vt6656/mac.h
> +++ b/drivers/staging/vt6656/mac.h
> @@ -177,7 +177,7 @@
>  #define EnCFG_BBType_a		0x00
>  #define EnCFG_BBType_b		BIT(0)
>  #define EnCFG_BBType_g		BIT(1)
> -#define EnCFG_BBType_MASK	(BIT(0) | BIT(1))
> +#define EnCFG_BBType_MASK	(EnCFG_BBType_b | EnCFG_BBType_g)

This does not "fix" anything, like your "Fixes:" tag implies.  It just
cleans up the code some more.  Only use Fixes: if it actually fixes a
problem introduced by a previous patch.

Can you remove that line and resend?

thanks.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
