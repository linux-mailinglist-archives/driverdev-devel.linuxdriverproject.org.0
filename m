Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E39ABD51AC
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Oct 2019 20:38:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A1D1187695;
	Sat, 12 Oct 2019 18:38:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fQzf5D9RHIuk; Sat, 12 Oct 2019 18:38:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8AC4286C7B;
	Sat, 12 Oct 2019 18:38:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2D3C01BF28C
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 18:37:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 275E785EE9
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 18:37:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lsTuyemKz4dv for <devel@linuxdriverproject.org>;
 Sat, 12 Oct 2019 18:37:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8676885886
 for <devel@driverdev.osuosl.org>; Sat, 12 Oct 2019 18:37:21 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.67,288,1566856800"; d="scan'208";a="322499662"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
 by mail3-relais-sop.national.inria.fr with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Oct 2019 20:37:19 +0200
Date: Sat, 12 Oct 2019 20:37:18 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Wambui Karuga <wambui.karugax@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 3/5] staging: octeon: remove typedef
 declaration for cvmx_fau_reg_32
In-Reply-To: <b7216f423d8e06b2ed7ac2df643a9215cd95be32.1570821661.git.wambui.karugax@gmail.com>
Message-ID: <alpine.DEB.2.21.1910122035380.3049@hadrien>
References: <cover.1570821661.git.wambui.karugax@gmail.com>
 <b7216f423d8e06b2ed7ac2df643a9215cd95be32.1570821661.git.wambui.karugax@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
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
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Sat, 12 Oct 2019, Wambui Karuga wrote:

> Remove typedef declaration for enum cvmx_fau_reg_32.
> Also replace its previous uses with new declaration format.
> Issue found by checkpatch.pl
>
> Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
> ---
>  drivers/staging/octeon/octeon-stubs.h | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
> index 0991be329139..40f0cfee0dff 100644
> --- a/drivers/staging/octeon/octeon-stubs.h
> +++ b/drivers/staging/octeon/octeon-stubs.h
> @@ -201,9 +201,9 @@ union cvmx_helper_link_info {
>  	} s;
>  };
>
> -typedef enum {
> +enum cvmx_fau_reg_32 {
>  	CVMX_FAU_REG_32_START	= 0,
> -} cvmx_fau_reg_32_t;
> +};
>
>  typedef enum {
>  	CVMX_FAU_OP_SIZE_8 = 0,
> @@ -1178,16 +1178,18 @@ union cvmx_gmxx_rxx_rx_inbnd {
>  	} s;
>  };
>
> -static inline int32_t cvmx_fau_fetch_and_add32(cvmx_fau_reg_32_t reg,
> +static inline int32_t cvmx_fau_fetch_and_add32(enum cvmx_fau_reg_32 reg,
>  					       int32_t value)

These int32_t's don't look very desirable either.  If there is only one
possible definition, you can just replace it by what it is defined to be.

julia

>  {
>  	return value;
>  }
>
> -static inline void cvmx_fau_atomic_add32(cvmx_fau_reg_32_t reg, int32_t value)
> +static inline void cvmx_fau_atomic_add32(enum cvmx_fau_reg_32 reg,
> +					 int32_t value)
>  { }
>
> -static inline void cvmx_fau_atomic_write32(cvmx_fau_reg_32_t reg, int32_t value)
> +static inline void cvmx_fau_atomic_write32(enum cvmx_fau_reg_32 reg,
> +					   int32_t value)
>  { }
>
>  static inline uint64_t cvmx_scratch_read64(uint64_t address)
> @@ -1364,7 +1366,7 @@ static inline int cvmx_spi_restart_interface(int interface,
>  }
>
>  static inline void cvmx_fau_async_fetch_and_add32(uint64_t scraddr,
> -						  cvmx_fau_reg_32_t reg,
> +						  enum cvmx_fau_reg_32 reg,
>  						  int32_t value)
>  { }
>
> --
> 2.23.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/b7216f423d8e06b2ed7ac2df643a9215cd95be32.1570821661.git.wambui.karugax%40gmail.com.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
