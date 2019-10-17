Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B5BDA30A
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Oct 2019 03:25:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AE24C88582;
	Thu, 17 Oct 2019 01:25:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1lf6KbBi7qv3; Thu, 17 Oct 2019 01:25:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0B70B88548;
	Thu, 17 Oct 2019 01:25:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 66B871BF580
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 01:25:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 635D68854A
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 01:25:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ARf939SU1eNq for <devel@linuxdriverproject.org>;
 Thu, 17 Oct 2019 01:25:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7051188548
 for <devel@driverdev.osuosl.org>; Thu, 17 Oct 2019 01:25:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gv/VRh25JbZQV0A+0eeM+TeAGlcaRb1tnq4YaJG9kPE=; b=W67N6dd7dSkMcvncpQwxMkwPL
 TOyrZS2j0dKWlaB+WNuXwdFwC5v7jWlIf/ne3H/f5JI4ADBgLbXpAV6g2AqWnZXJnpJdqR6j1Lgmo
 L6SsDXvS789U5sBQ705V3Sh1+JuGe5r0lZ+HFdf2VRF/yunIcpwQJxSvxiQp2f62IEJ0Z+tr04hUC
 OfRx7oIvNPJaP/5ndCFXThR580JdmaBhmeZdWVqnCz16Hlg7WZ4IXyzO6WUPxWuAm+zLyihkpxwBL
 zFu31K8B9JscExhcq4b060R/oWzKi1i90pXHXowzSCGl62Hbd11+rDYRGK76sCH94sFpnqcgChZEB
 N2gSnNemA==;
Received: from [2601:1c0:6280:3f0::9ef4]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKuXQ-00051e-AJ; Thu, 17 Oct 2019 01:25:12 +0000
Subject: Re: [PATCH] staging: sm750fb: format description of parameters the to
 kernel doc format
To: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>,
 outreachy-kernel@googlegroups.com, sudipm.mukherjee@gmail.com,
 teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org,
 linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org,
 trivial@kernel.org
References: <20191017011849.6081-1-gabrielabittencourt00@gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <799632e2-a328-d72b-397d-3ee6b5e87e06@infradead.org>
Date: Wed, 16 Oct 2019 18:25:10 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191017011849.6081-1-gabrielabittencourt00@gmail.com>
Content-Language: en-US
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

On 10/16/19 6:18 PM, Gabriela Bittencourt wrote:
> Cluster comments that describes parameters of functions and create one
> single comment before the function in kernel doc format.

Good plan.

How did you test this patch?

> Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750_accel.c | 65 +++++++++++++++------------
>  1 file changed, 37 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
> index dbcbbd1055da..d5564cd60f3b 100644
> --- a/drivers/staging/sm750fb/sm750_accel.c
> +++ b/drivers/staging/sm750fb/sm750_accel.c
> @@ -130,20 +130,24 @@ int sm750_hw_fillrect(struct lynx_accel *accel,
>  	return 0;
>  }
>  
> -int sm750_hw_copyarea(
> -struct lynx_accel *accel,
> -unsigned int sBase,  /* Address of source: offset in frame buffer */
> -unsigned int sPitch, /* Pitch value of source surface in BYTE */
> -unsigned int sx,
> -unsigned int sy,     /* Starting coordinate of source surface */
> -unsigned int dBase,  /* Address of destination: offset in frame buffer */
> -unsigned int dPitch, /* Pitch value of destination surface in BYTE */
> -unsigned int Bpp,    /* Color depth of destination surface */
> -unsigned int dx,
> -unsigned int dy,     /* Starting coordinate of destination surface */
> -unsigned int width,
> -unsigned int height, /* width and height of rectangle in pixel value */
> -unsigned int rop2)   /* ROP value */
> +/**

Missing function name and short description.  Documentation/doc-guide/kernel-doc.rst says:

The general format of a function and function-like macro kernel-doc comment is::

  /**
   * function_name() - Brief description of function.
   * @arg1: Describe the first argument.
   * @arg2: Describe the second argument.
   *        One can provide multiple line descriptions
   *        for arguments.
   *
   * A longer description, with more discussion of the function function_name()
   * that might be useful to those using or modifying it. Begins with an
   * empty comment line, and may include additional embedded empty
   * comment lines.
   *
   * The longer description may have multiple paragraphs.
   *
   * Context: Describes whether the function can sleep, what locks it takes,
   *          releases, or expects to be held. It can extend over multiple
   *          lines.
   * Return: Describe the return value of function_name.
   *
   * The return value description can also have multiple paragraphs, and should
   * be placed at the end of the comment block.
   */

> + * @sBase: Address of source: offset in frame buffer
> + * @sPitch: Pitch value of source surface in BYTE
> + * @sx, @sy: Starting coordinate of source surface

Those should be on separate lines.

> + * @dBase: Address of destination: offset in frame buffer
> + * @dPitch: Pitch value of destination surface in BYTE
> + * @Bpp: Color depth of destination surface
> + * @dx, @dy: Starting coordinate of destination surface

Ditto.

> + * @width, @height: width and height of rectangle in pixel value
> + * @rop2: ROP value
> + */
> +int sm750_hw_copyarea(struct lynx_accel *accel,
> +		      unsigned int sBase, unsigned int sPitch,
> +		      unsigned int sx, unsigned int sy,
> +		      unsigned int dBase, unsigned int dPitch,
> +		      unsigned int Bpp, unsigned int dx, unsigned int dy,
> +		      unsigned int width, unsigned int height,
> +		      unsigned int rop2)
>  {
>  	unsigned int nDirection, de_ctrl;
>  
> @@ -288,20 +292,25 @@ static unsigned int deGetTransparency(struct lynx_accel *accel)
>  	return de_ctrl;
>  }
>  
> -int sm750_hw_imageblit(struct lynx_accel *accel,
> -		 const char *pSrcbuf, /* pointer to start of source buffer in system memory */
> -		 u32 srcDelta,          /* Pitch value (in bytes) of the source buffer, +ive means top down and -ive mean button up */
> -		 u32 startBit, /* Mono data can start at any bit in a byte, this value should be 0 to 7 */
> -		 u32 dBase,    /* Address of destination: offset in frame buffer */
> -		 u32 dPitch,   /* Pitch value of destination surface in BYTE */
> -		 u32 bytePerPixel,      /* Color depth of destination surface */
> -		 u32 dx,
> -		 u32 dy,       /* Starting coordinate of destination surface */
> -		 u32 width,
> -		 u32 height,   /* width and height of rectangle in pixel value */
> -		 u32 fColor,   /* Foreground color (corresponding to a 1 in the monochrome data */
> -		 u32 bColor,   /* Background color (corresponding to a 0 in the monochrome data */
> -		 u32 rop2)     /* ROP value */
> +/**

Similar comments here...

> + * @pSrcbuf: pointer to start of source buffer in system memory
> + * @srcDelta: Pitch value (in bytes) of the source buffer, +ive means top down
> + * and -ive mean button up
> + * @startBit: Mono data can start at any bit in a byte, this value should be
> + * 0 to 7
> + * @dBase: Address of destination: offset in frame buffer
> + * @dPitch: Pitch value of destination surface in BYTE
> + * @bytePerPixel: Color depth of destination surface
> + * @dx, @dy: Starting coordinate of destination surface
> + * @width, @height: width and height of rectangle in pixel value
> + * @fColor: Foreground color (corresponding to a 1 in the monochrome data
> + * @bColor: Background color (corresponding to a 0 in the monochrome data
> + * @rop2: ROP value
> + */
> +int sm750_hw_imageblit(struct lynx_accel *accel, const char *pSrcbuf,
> +		       u32 srcDelta, u32 startBit, u32 dBase, u32 dPitch,
> +		       u32 bytePerPixel, u32 dx, u32 dy, u32 width,
> +		       u32 height, u32 fColor, u32 bColor, u32 rop2)
>  {
>  	unsigned int ulBytesPerScan;
>  	unsigned int ul4BytesPerScan;
> 

Thanks.
-- 
~Randy
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
