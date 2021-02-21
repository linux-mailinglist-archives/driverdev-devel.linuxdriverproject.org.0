Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6B5320B37
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 16:02:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BFDF8870D0;
	Sun, 21 Feb 2021 15:02:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lszFUquqW0kQ; Sun, 21 Feb 2021 15:02:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 44BD88705D;
	Sun, 21 Feb 2021 15:02:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A1C4A1BF95A
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 15:02:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9EA9985DD1
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 15:02:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RQxHuR-SSb8Q for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 15:02:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3C4C885DCF
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 15:02:17 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 52E1E64EDE;
 Sun, 21 Feb 2021 15:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613919736;
 bh=d4ANynSmNbXObqDDoOwixZII/pFiyoIFifqZb3QHJZQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BV9ea2WRL93VHHdd8M4b8HmNPaZy1+rg+pDZAZdqOMg7bSHrdC7QpKLfxCHBi3d+w
 AlokQjkItPU6LenTidaXAe8jDxkUsXPerszhfTEjGRClM+8bgPooQYW9OKjzSiCS27
 EEh2oy7Qnon8J3Rvbp5GbJBHAJgcq/smrvnFlO0w=
Date: Sun, 21 Feb 2021 16:02:14 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: karthik alapati <mail@karthek.com>
Subject: Re: [PATCH 3/3] staging: media/atomisp: don't compile unused code
Message-ID: <YDJ19vSgRjR6edby@kroah.com>
References: <cover.1613915981.git.mail@karthek.com>
 <90eb63796a8f8aca988efb33247ea01f4a860074.1613915981.git.mail@karthek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <90eb63796a8f8aca988efb33247ea01f4a860074.1613915981.git.mail@karthek.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Feb 21, 2021 at 07:34:57PM +0530, karthik alapati wrote:
> currently the functions defined in ibuf_ctrl_rmgr.c file are only
> used by isys_init.c when CONFIG_VIDEO_ATOMISP_ISP2401 is selected
> so dont't compile it when not needed, also fixes some sparse warnings
> 
> Signed-off-by: karthik alapati <mail@karthek.com>
> ---
>  drivers/staging/media/atomisp/Makefile | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

This has nothing to do with the previous 2 patches, why did you add it
to this series?

And note, you missed the correct people to send this patch to, so it's
not going to ever get applied :(

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
