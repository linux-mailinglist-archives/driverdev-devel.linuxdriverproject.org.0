Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED44D27FBFE
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Oct 2020 10:55:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 664E387337;
	Thu,  1 Oct 2020 08:55:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FWWwXGmE8mTe; Thu,  1 Oct 2020 08:55:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C6060866B3;
	Thu,  1 Oct 2020 08:55:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1AF831BF4E6
 for <devel@linuxdriverproject.org>; Thu,  1 Oct 2020 08:55:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 17C3A86C24
 for <devel@linuxdriverproject.org>; Thu,  1 Oct 2020 08:55:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BwKhiv_zqPLF for <devel@linuxdriverproject.org>;
 Thu,  1 Oct 2020 08:55:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A152B86B9E
 for <devel@driverdev.osuosl.org>; Thu,  1 Oct 2020 08:55:45 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8575320B1F;
 Thu,  1 Oct 2020 08:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601542545;
 bh=Lmndb/S6MK+pcARG47+loeLrbW8fJTcFCcXY6A/D8MI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PT5kCBVmlTTfqQjGqwWISToPHs5XIxehYOqt9yCdVdkg2vSTWZn9zrnbQkkeeoH/i
 hUg05924olZPl+P1ENWbTWFWDJYm1ad1HIwnTu9l0oU4dceQ5G5Kl7n0lKjxRzFFeT
 zg5Hga2Yyx5Fzo2o4mH8S4X7jJ6NJ1Arhuj1GxN0=
Date: Thu, 1 Oct 2020 10:55:46 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Matthew Hanzelik <mrhanzelik@gmail.com>
Subject: Re: [PATCH v2] Staging: nvec: Remove duplicate word in comment.
Message-ID: <20201001085546.GA1824150@kroah.com>
References: <CAF4OWHKYrcZzZp_YVf+mnGgjHUi7AKPA22s5q7vVfu371_8HTg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAF4OWHKYrcZzZp_YVf+mnGgjHUi7AKPA22s5q7vVfu371_8HTg@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, marvin24@gmx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Sep 29, 2020 at 11:39:53PM -0400, Matthew Hanzelik wrote:
> Remove a duplicate word in a comment within nvec.c.
> 
> Signed-off-by: Matthew Hanzelik <mrhanzelik@gmail.com>
> ---
> Changes in v2:
>  - Fix spelling mistake in commit.
> ---
>  drivers/staging/nvec/nvec.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
> index 360ec0407740..a80996b2f5ce 100644
> --- a/drivers/staging/nvec/nvec.c
> +++ b/drivers/staging/nvec/nvec.c
> @@ -289,7 +289,7 @@ EXPORT_SYMBOL(nvec_write_async);
>   * interrupt handlers.
>   *
>   * Returns: 0 on success, a negative error code on failure.
> - * The response message is returned in @msg. Shall be freed with
> + * The response message is returned in @msg. Shall be freed
>   * with nvec_msg_free() once no longer used.
>   *
>   */

Someone else sent this patch right before you did, sorry:
	https://lore.kernel.org/r/20200927172855.9813-1-ryanpkosta@gmail.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
