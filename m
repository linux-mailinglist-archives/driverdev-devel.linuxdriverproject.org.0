Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F08E2122BBD
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Dec 2019 13:36:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CDBB3863D5;
	Tue, 17 Dec 2019 12:36:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B0VJGTUyE5Oq; Tue, 17 Dec 2019 12:36:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7243A857D8;
	Tue, 17 Dec 2019 12:36:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7EFE81BF2F1
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 12:36:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5BA9987861
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 12:36:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JKxJDqTuZeqH for <devel@linuxdriverproject.org>;
 Tue, 17 Dec 2019 12:36:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 328FC87860
 for <devel@driverdev.osuosl.org>; Tue, 17 Dec 2019 12:36:12 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 61696206D8;
 Tue, 17 Dec 2019 12:36:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576586171;
 bh=B7h76drzd6gyW48HzKwrGBmdAS3OiSGmCCDzI4QGaKI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cX82lLzPKCfZGg+79MXAntIsqijJY92TduKqfDQ0Q2kBtpEeoh31St5pPYq/uxfOp
 Sncy45woPUxOY5bQXi8jgHZJsJOyi+QDGutqsEFoVe6XNzAOrfZonrEcnQoSwMZzRH
 k3fvgAamTDQFIklI4oGO9urS09oEsPPXtYZNaZi4=
Date: Tue, 17 Dec 2019 13:36:09 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Scott Schafer <schaferjscott@gmail.com>
Subject: Re: [PATCH v2 03/23] staging: qlge: Fix WARNING: Missing a blank
 line after declarations
Message-ID: <20191217123609.GA3161277@kroah.com>
References: <cover.1576086080.git.schaferjscott@gmail.com>
 <e15a6fd67d39af57fa6309037bb0c7a747c52353.1576086080.git.schaferjscott@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e15a6fd67d39af57fa6309037bb0c7a747c52353.1576086080.git.schaferjscott@gmail.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 GR-Linux-NIC-Dev@marvell.com, linux-kernel@vger.kernel.org,
 Manish Chopra <manishc@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Dec 11, 2019 at 12:12:32PM -0600, Scott Schafer wrote:
> Fix WARNING: Missing a blank line after declarations for the follig
> files:
> qlge.h
> qlge_dbg.c
> qlge_main.c
> qlge_mpi.c
> 
> Signed-off-by: Scott Schafer <schaferjscott@gmail.com>
> ---
>  drivers/staging/qlge/qlge.h      |  1 +
>  drivers/staging/qlge/qlge_dbg.c  |  5 +++++
>  drivers/staging/qlge/qlge_main.c | 13 +++++++++++++
>  drivers/staging/qlge/qlge_mpi.c  |  6 ++++++
>  4 files changed, 25 insertions(+)
> 
> diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
> index 4bc5d5fce9bf..89502a8300f6 100644
> --- a/drivers/staging/qlge/qlge.h
> +++ b/drivers/staging/qlge/qlge.h
> @@ -2227,6 +2227,7 @@ static inline void ql_write_db_reg_relaxed(u32 val, void __iomem *addr)
>  static inline u32 ql_read_sh_reg(__le32  *addr)
>  {
>  	u32 reg;
> +	

You are adding trailing whitespace on every one of your newlines you are
adding :(

I suggest using an editor that shows this up as a bright red mark, it
makes it more obvious you are doing something wrong.

Also try running checkpatch.pl on the patches you are writing to make
sure you do not add more errors/warnings when you are trying to fix them
up.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
