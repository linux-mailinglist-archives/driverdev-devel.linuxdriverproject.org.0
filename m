Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 487F4CD8C7
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Oct 2019 21:01:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 90F0B204DB;
	Sun,  6 Oct 2019 19:01:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xrPNf3wvyLZ6; Sun,  6 Oct 2019 19:01:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 33E49204BF;
	Sun,  6 Oct 2019 19:01:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B0EE71BF46A
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 19:01:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A5E4686767
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 19:01:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zzT0P0nZYn9x for <devel@linuxdriverproject.org>;
 Sun,  6 Oct 2019 19:01:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CCFAA86759
 for <devel@driverdev.osuosl.org>; Sun,  6 Oct 2019 19:01:12 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.67,265,1566856800"; d="scan'208";a="321778515"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
 by mail3-relais-sop.national.inria.fr with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Oct 2019 21:01:09 +0200
Date: Sun, 6 Oct 2019 21:01:09 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: Capitalize macro
 name to fix camelcase checkpatch warning
In-Reply-To: <20191006184827.12021-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1910062100530.2515@hadrien>
References: <20191006184827.12021-1-jbi.octave@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 abbotti@mev.co.uk, olsonse@umich.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Sun, 6 Oct 2019, Jules Irenge wrote:

> Capitalize RANGE_mA to fix camelcase check warning.
> Issue reported by checkpatch.pl

I guess mA means something, so it would be better to keep it?

julia

>
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/comedi/comedidev.h           | 2 +-
>  drivers/staging/comedi/drivers/adv_pci1724.c | 4 ++--
>  drivers/staging/comedi/drivers/dac02.c       | 2 +-
>  drivers/staging/comedi/range.c               | 6 +++---
>  4 files changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/comedi/comedidev.h b/drivers/staging/comedi/comedidev.h
> index 54c091866777..2fc536db203c 100644
> --- a/drivers/staging/comedi/comedidev.h
> +++ b/drivers/staging/comedi/comedidev.h
> @@ -603,7 +603,7 @@ int comedi_check_chanlist(struct comedi_subdevice *s,
>
>  #define RANGE(a, b)		{(a) * 1e6, (b) * 1e6, 0}
>  #define RANGE_ext(a, b)		{(a) * 1e6, (b) * 1e6, RF_EXTERNAL}
> -#define RANGE_mA(a, b)		{(a) * 1e6, (b) * 1e6, UNIT_MA}
> +#define RANGE_MA(a, b)		{(a) * 1e6, (b) * 1e6, UNIT_MA}
>  #define RANGE_unitless(a, b)	{(a) * 1e6, (b) * 1e6, 0}
>  #define BIP_RANGE(a)		{-(a) * 1e6, (a) * 1e6, 0}
>  #define UNI_RANGE(a)		{0, (a) * 1e6, 0}
> diff --git a/drivers/staging/comedi/drivers/adv_pci1724.c b/drivers/staging/comedi/drivers/adv_pci1724.c
> index e8ab573c839f..f20d710c19d3 100644
> --- a/drivers/staging/comedi/drivers/adv_pci1724.c
> +++ b/drivers/staging/comedi/drivers/adv_pci1724.c
> @@ -64,8 +64,8 @@
>  static const struct comedi_lrange adv_pci1724_ao_ranges = {
>  	4, {
>  		BIP_RANGE(10),
> -		RANGE_mA(0, 20),
> -		RANGE_mA(4, 20),
> +		RANGE_MA(0, 20),
> +		RANGE_MA(4, 20),
>  		RANGE_unitless(0, 1)
>  	}
>  };
> diff --git a/drivers/staging/comedi/drivers/dac02.c b/drivers/staging/comedi/drivers/dac02.c
> index 5ef8114c2c85..4503cbdf673c 100644
> --- a/drivers/staging/comedi/drivers/dac02.c
> +++ b/drivers/staging/comedi/drivers/dac02.c
> @@ -54,7 +54,7 @@ static const struct comedi_lrange das02_ao_ranges = {
>  		UNI_RANGE(10),
>  		BIP_RANGE(5),
>  		BIP_RANGE(10),
> -		RANGE_mA(4, 20),
> +		RANGE_MA(4, 20),
>  		RANGE_ext(0, 1)
>  	}
>  };
> diff --git a/drivers/staging/comedi/range.c b/drivers/staging/comedi/range.c
> index 89d599877445..dacdd7b6f1a0 100644
> --- a/drivers/staging/comedi/range.c
> +++ b/drivers/staging/comedi/range.c
> @@ -23,11 +23,11 @@ const struct comedi_lrange range_unipolar5 = { 1, {UNI_RANGE(5)} };
>  EXPORT_SYMBOL_GPL(range_unipolar5);
>  const struct comedi_lrange range_unipolar2_5 = { 1, {UNI_RANGE(2.5)} };
>  EXPORT_SYMBOL_GPL(range_unipolar2_5);
> -const struct comedi_lrange range_0_20mA = { 1, {RANGE_mA(0, 20)} };
> +const struct comedi_lrange range_0_20mA = { 1, {RANGE_MA(0, 20)} };
>  EXPORT_SYMBOL_GPL(range_0_20mA);
> -const struct comedi_lrange range_4_20mA = { 1, {RANGE_mA(4, 20)} };
> +const struct comedi_lrange range_4_20mA = { 1, {RANGE_MA(4, 20)} };
>  EXPORT_SYMBOL_GPL(range_4_20mA);
> -const struct comedi_lrange range_0_32mA = { 1, {RANGE_mA(0, 32)} };
> +const struct comedi_lrange range_0_32mA = { 1, {RANGE_MA(0, 32)} };
>  EXPORT_SYMBOL_GPL(range_0_32mA);
>  const struct comedi_lrange range_unknown = { 1, {{0, 1000000, UNIT_none} } };
>  EXPORT_SYMBOL_GPL(range_unknown);
> --
> 2.21.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191006184827.12021-1-jbi.octave%40gmail.com.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
