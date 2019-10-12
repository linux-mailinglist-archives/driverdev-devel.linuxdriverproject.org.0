Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F17D4D44
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Oct 2019 07:41:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BF3AF25E5B;
	Sat, 12 Oct 2019 05:41:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vvBV+Hv4IY31; Sat, 12 Oct 2019 05:41:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1264F20520;
	Sat, 12 Oct 2019 05:41:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 875711BF5A9
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 05:41:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 81A2188215
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 05:41:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SfysGii2JqE7 for <devel@linuxdriverproject.org>;
 Sat, 12 Oct 2019 05:41:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail2-relais-roc.national.inria.fr
 (mail2-relais-roc.national.inria.fr [192.134.164.83])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A4A7D881F3
 for <devel@driverdev.osuosl.org>; Sat, 12 Oct 2019 05:41:40 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.67,286,1566856800"; d="scan'208";a="405849016"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
 by mail2-relais-roc.national.inria.fr with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Oct 2019 07:41:38 +0200
Date: Sat, 12 Oct 2019 07:41:37 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: align arguments
 with open parenthesis
In-Reply-To: <20191012011956.9452-1-gabrielabittencourt00@gmail.com>
Message-ID: <alpine.DEB.2.21.1910120738540.2637@hadrien>
References: <20191012011956.9452-1-gabrielabittencourt00@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org, trivial@kernel.org,
 teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 lkcamp@lists.libreplanetbr.org, sudipm.mukherjee@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Fri, 11 Oct 2019, Gabriela Bittencourt wrote:

> Cleans up checks of "Alignment should match open parenthesis" in tree sm750fb
>
> Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_display.c |  2 +-
>  drivers/staging/sm750fb/sm750_accel.c    |  2 +-
>  drivers/staging/sm750fb/sm750_accel.h    |  8 ++++----
>  drivers/staging/sm750fb/sm750_cursor.h   | 10 +++++-----
>  4 files changed, 11 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_display.c b/drivers/staging/sm750fb/ddk750_display.c
> index 887ea8aef43f..8be98a1058d6 100644
> --- a/drivers/staging/sm750fb/ddk750_display.c
> +++ b/drivers/staging/sm750fb/ddk750_display.c
> @@ -148,7 +148,7 @@ void ddk750_set_logical_disp_out(enum disp_output output)
>  	if (output & PNL_SEQ_USAGE) {
>  		/* set  panel sequence */
>  		sw_panel_power_sequence((output & PNL_SEQ_MASK) >> PNL_SEQ_OFFSET,
> -		4);
> +					4);
>  	}
>
>  	if (output & DAC_USAGE)
> diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
> index dbcbbd1055da..1a9555bb9edd 100644
> --- a/drivers/staging/sm750fb/sm750_accel.c
> +++ b/drivers/staging/sm750fb/sm750_accel.c
> @@ -289,7 +289,7 @@ static unsigned int deGetTransparency(struct lynx_accel *accel)
>  }
>
>  int sm750_hw_imageblit(struct lynx_accel *accel,
> -		 const char *pSrcbuf, /* pointer to start of source buffer in system memory */
> +		       const char *pSrcbuf, /* pointer to start of source buffer in system memory */
>  		 u32 srcDelta,          /* Pitch value (in bytes) of the source buffer, +ive means top down and -ive mean button up */
>  		 u32 startBit, /* Mono data can start at any bit in a byte, this value should be 0 to 7 */
>  		 u32 dBase,    /* Address of destination: offset in frame buffer */

It is strange that the change is only does for the firsr parameter, and
not for all of them.

The kernel also uses a doc format for describing function patameters in a
single comment before the function.  Look around in other files to see the
format.  That would look much nicer than these comments going over 80
columns.


> diff --git a/drivers/staging/sm750fb/sm750_accel.h b/drivers/staging/sm750fb/sm750_accel.h
> index c4f42002a50f..8fb79b09fdd0 100644
> --- a/drivers/staging/sm750fb/sm750_accel.h
> +++ b/drivers/staging/sm750fb/sm750_accel.h
> @@ -190,9 +190,9 @@ void sm750_hw_set2dformat(struct lynx_accel *accel, int fmt);
>  void sm750_hw_de_init(struct lynx_accel *accel);
>
>  int sm750_hw_fillrect(struct lynx_accel *accel,
> -				u32 base, u32 pitch, u32 Bpp,
> -				u32 x, u32 y, u32 width, u32 height,
> -				u32 color, u32 rop);
> +		      u32 base, u32 pitch, u32 Bpp,
> +		      u32 x, u32 y, u32 width, u32 height,
> +		      u32 color, u32 rop);
>
>  int sm750_hw_copyarea(
>  struct lynx_accel *accel,
> @@ -210,7 +210,7 @@ unsigned int height, /* width and height of rectangle in pixel value */
>  unsigned int rop2);
>
>  int sm750_hw_imageblit(struct lynx_accel *accel,
> -		 const char *pSrcbuf, /* pointer to start of source buffer in system memory */
> +		       const char *pSrcbuf, /* pointer to start of source buffer in system memory */
>  		 u32 srcDelta,          /* Pitch value (in bytes) of the source buffer, +ive means top down and -ive mean button up */
>  		 u32 startBit, /* Mono data can start at any bit in a byte, this value should be 0 to 7 */
>  		 u32 dBase,    /* Address of destination: offset in frame buffer */

Same here.

> diff --git a/drivers/staging/sm750fb/sm750_cursor.h b/drivers/staging/sm750fb/sm750_cursor.h
> index 16ac07eb58d6..039ebfdf0bd9 100644
> --- a/drivers/staging/sm750fb/sm750_cursor.h
> +++ b/drivers/staging/sm750fb/sm750_cursor.h
> @@ -6,13 +6,13 @@
>  void sm750_hw_cursor_enable(struct lynx_cursor *cursor);
>  void sm750_hw_cursor_disable(struct lynx_cursor *cursor);
>  void sm750_hw_cursor_setSize(struct lynx_cursor *cursor,
> -						int w, int h);
> +			     int w, int h);
>  void sm750_hw_cursor_setPos(struct lynx_cursor *cursor,
> -						int x, int y);
> +			    int x, int y);

Perhaps these could just be all on one line?

julia

>  void sm750_hw_cursor_setColor(struct lynx_cursor *cursor,
> -						u32 fg, u32 bg);
> +			      u32 fg, u32 bg);
>  void sm750_hw_cursor_setData(struct lynx_cursor *cursor,
> -			u16 rop, const u8 *data, const u8 *mask);
> +			     u16 rop, const u8 *data, const u8 *mask);
>  void sm750_hw_cursor_setData2(struct lynx_cursor *cursor,
> -			u16 rop, const u8 *data, const u8 *mask);
> +			      u16 rop, const u8 *data, const u8 *mask);
>  #endif
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191012011956.9452-1-gabrielabittencourt00%40gmail.com.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
