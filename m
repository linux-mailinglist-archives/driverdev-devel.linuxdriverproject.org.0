Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9244A122BC3
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Dec 2019 13:37:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 509DB85F88;
	Tue, 17 Dec 2019 12:37:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UeY1u4aLq1b9; Tue, 17 Dec 2019 12:37:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3282885F54;
	Tue, 17 Dec 2019 12:37:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0CCB01BF2F1
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 12:37:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 05D9585727
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 12:37:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HEf0xkd81xAN for <devel@linuxdriverproject.org>;
 Tue, 17 Dec 2019 12:37:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 704F38506C
 for <devel@driverdev.osuosl.org>; Tue, 17 Dec 2019 12:37:27 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CDDD02082E;
 Tue, 17 Dec 2019 12:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576586247;
 bh=5YvBsHQOxmA34K9T0xQbE8k/6MwlrTqIfOTtiy0crqQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tFJ9Bp/jjS+N+ugpvcJknjz0PJbPGNVm6bFMd2sM5JS3YxixU8QIQzJ8XIh+84n0Y
 A/Ju4Z6SD4f5NfLFW56sMhfFLjZE7T3Tp8QGm5dQOh2CsF+NmX2od75jzHXi4eZx2l
 yRm273w/A/s4geYWSOnM2VRJmpGPLCDhQJn8/V+o=
Date: Tue, 17 Dec 2019 13:37:25 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Scott Schafer <schaferjscott@gmail.com>
Subject: Re: [PATCH v2 04/23] staging: qlge: Fix WARNING: Missing a blank
 line after declarations
Message-ID: <20191217123725.GA3161766@kroah.com>
References: <cover.1576086080.git.schaferjscott@gmail.com>
 <815a27ebb89b7a08e616fddbe0583eabd3c4401b.1576086080.git.schaferjscott@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <815a27ebb89b7a08e616fddbe0583eabd3c4401b.1576086080.git.schaferjscott@gmail.com>
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

On Wed, Dec 11, 2019 at 12:12:33PM -0600, Scott Schafer wrote:
> Fix WARNING: Missing a blank line after declarations in the following
> files:
> qlge.h
> qlge_dbg.c
> qlge_main.c
> qlge_mpi.c
> 
> Signed-off-by: Scott Schafer <schaferjscott@gmail.com>
> ---
>  drivers/staging/qlge/qlge.h      |  2 +-
>  drivers/staging/qlge/qlge_dbg.c  | 10 +++++-----
>  drivers/staging/qlge/qlge_main.c | 26 +++++++++++++-------------
>  drivers/staging/qlge/qlge_mpi.c  | 12 ++++++------
>  4 files changed, 25 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
> index 89502a8300f6..d45c53a053c2 100644
> --- a/drivers/staging/qlge/qlge.h
> +++ b/drivers/staging/qlge/qlge.h
> @@ -2227,7 +2227,7 @@ static inline void ql_write_db_reg_relaxed(u32 val, void __iomem *addr)
>  static inline u32 ql_read_sh_reg(__le32  *addr)
>  {
>  	u32 reg;
> -	
> +

The description of this patch is NOT what this patch is doing.  It's
fixing up the mess you added in the previous patch :(

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
