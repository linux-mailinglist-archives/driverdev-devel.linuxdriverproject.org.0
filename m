Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 233A4E21B7
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Oct 2019 19:26:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CCB86864AA;
	Wed, 23 Oct 2019 17:26:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ex21uq8-IiHV; Wed, 23 Oct 2019 17:26:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ABF5A86457;
	Wed, 23 Oct 2019 17:26:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 348ED1BF873
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 17:26:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2453D86457
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 17:26:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L9xpY39YoUI3 for <devel@linuxdriverproject.org>;
 Wed, 23 Oct 2019 17:26:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from emh04.mail.saunalahti.fi (emh04.mail.saunalahti.fi
 [62.142.5.110])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0C29086451
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 17:26:14 +0000 (UTC)
Received: from darkstar.musicnaut.iki.fi (85-76-128-127-nat.elisa-mobile.fi
 [85.76.128.127])
 by emh04.mail.saunalahti.fi (Postfix) with ESMTP id 09E8E30184;
 Wed, 23 Oct 2019 20:26:10 +0300 (EEST)
Date: Wed, 23 Oct 2019 20:26:10 +0300
From: Aaro Koskinen <aaro.koskinen@iki.fi>
To: Wambui Karuga <wambui.karugax@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: octeon: Remove typedef declaration
Message-ID: <20191023172610.GB18977@darkstar.musicnaut.iki.fi>
References: <20191008040943.9283-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191008040943.9283-1-wambui.karugax@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
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

Hi,

On Tue, Oct 08, 2019 at 07:09:43AM +0300, Wambui Karuga wrote:
> Fixes checkpatch.pl warning: do not add new typedefs in
> drivers/staging/octeon/octeon-stubs.h:41
> 
> Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
> ---
>  drivers/staging/octeon/octeon-stubs.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
> index a4ac3bfb62a8..773591348ef4 100644
> --- a/drivers/staging/octeon/octeon-stubs.h
> +++ b/drivers/staging/octeon/octeon-stubs.h
> @@ -38,7 +38,7 @@
>  #define CVMX_NPI_RSL_INT_BLOCKS		0
>  #define CVMX_POW_WQ_INT_PC		0
>  
> -typedef union {
> +union cvmx_pip_wqe_word2 {

The "real" definition is in arch/mips/include/asm/octeon/cvmx-wqe.h.

octeon-stubs.h is just a temporary hack to allow compile testing without
MIPS cross-compiler. Changing only the stubs file is not really an
improvement.

A.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
