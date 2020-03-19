Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F7118BF07
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Mar 2020 19:06:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2D77187FAF;
	Thu, 19 Mar 2020 18:06:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BlVoEn1njQ5l; Thu, 19 Mar 2020 18:06:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0938887F85;
	Thu, 19 Mar 2020 18:06:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 49FF91BF343
 for <devel@linuxdriverproject.org>; Thu, 19 Mar 2020 18:06:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 465902326C
 for <devel@linuxdriverproject.org>; Thu, 19 Mar 2020 18:06:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kPBVvB8gHd9w for <devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 18:06:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by silver.osuosl.org (Postfix) with ESMTPS id 1A3F020370
 for <devel@driverdev.osuosl.org>; Thu, 19 Mar 2020 18:06:21 +0000 (UTC)
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id C2134A53;
 Thu, 19 Mar 2020 19:06:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1584641180;
 bh=VVvaLIWzHjPnx7c9DWjDC6foO+LDj42e8xSFQBar0P4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UimCi9VH4MJ4LH+9sfUT3icjCjPFW6O/NFih77tIZyeAKixwX3eS6m7f7ZewK8Zet
 iF6Qhg931tJqVp0tbmVvBFRy2vQJeCANnTFOfjaVdgsMuIfoynUAKBh7xSLxuw783x
 D52R5yQdOPmXEsfCl3yBOwhdZwTXqUynZlF/+f7c=
Date: Thu, 19 Mar 2020 20:06:14 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Alex Riesen <alexander.riesen@cetitec.com>
Subject: Re: [PATCH v2 03/10] media: adv748x: reduce amount of code for
 bitwise modifications of device registers
Message-ID: <20200319180614.GL14585@pendragon.ideasonboard.com>
References: <cover.1584639664.git.alexander.riesen@cetitec.com>
 <099ebaa317156ec8edab973d0445851337139e6b.1584639664.git.alexander.riesen@cetitec.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <099ebaa317156ec8edab973d0445851337139e6b.1584639664.git.alexander.riesen@cetitec.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devel@driverdev.osuosl.org,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 devicetree@vger.kernel.org, Kieran Bingham <kieran.bingham@ideasonboard.com>,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Alex,

Thank you for the patch.

On Thu, Mar 19, 2020 at 06:41:53PM +0100, Alex Riesen wrote:
> The regmap provides a convenient utility for this.
> 
> Signed-off-by: Alexander Riesen <alexander.riesen@cetitec.com>
> ---
>  drivers/media/i2c/adv748x/adv748x-core.c |  6 ++++++
>  drivers/media/i2c/adv748x/adv748x.h      | 15 ++++++++++++---
>  2 files changed, 18 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/media/i2c/adv748x/adv748x-core.c b/drivers/media/i2c/adv748x/adv748x-core.c
> index 345f009de121..36164a254d7b 100644
> --- a/drivers/media/i2c/adv748x/adv748x-core.c
> +++ b/drivers/media/i2c/adv748x/adv748x-core.c
> @@ -133,6 +133,12 @@ static int adv748x_write_check(struct adv748x_state *state, u8 page, u8 reg,
>  	return *error;
>  }
>  
> +int adv748x_update_bits(struct adv748x_state *state, u8 page, u8 reg, u8 mask,
> +			u8 value)
> +{
> +	return regmap_update_bits(state->regmap[page], reg, mask, value);
> +}
> +
>  /* adv748x_write_block(): Write raw data with a maximum of I2C_SMBUS_BLOCK_MAX
>   * size to one or more registers.
>   *
> diff --git a/drivers/media/i2c/adv748x/adv748x.h b/drivers/media/i2c/adv748x/adv748x.h
> index 09aab4138c3f..c5245464fffc 100644
> --- a/drivers/media/i2c/adv748x/adv748x.h
> +++ b/drivers/media/i2c/adv748x/adv748x.h
> @@ -393,25 +393,34 @@ int adv748x_write(struct adv748x_state *state, u8 page, u8 reg, u8 value);
>  int adv748x_write_block(struct adv748x_state *state, int client_page,
>  			unsigned int init_reg, const void *val,
>  			size_t val_len);
> +int adv748x_update_bits(struct adv748x_state *state, u8 page, u8 reg,
> +			u8 mask, u8 value);
>  
>  #define io_read(s, r) adv748x_read(s, ADV748X_PAGE_IO, r)
>  #define io_write(s, r, v) adv748x_write(s, ADV748X_PAGE_IO, r, v)
> -#define io_clrset(s, r, m, v) io_write(s, r, (io_read(s, r) & ~(m)) | (v))
> +#define io_clrset(s, r, m, v) adv748x_update_bits(s, ADV748X_PAGE_IO, r, m, v)
> +#define io_update(s, r, m, v) adv748x_update_bits(s, ADV748X_PAGE_IO, r, m, v)

Those two are identical. Do we need both ? I would standardize on either
*_update or *_clrset for all the functions here. Apart from that,

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

>  
>  #define hdmi_read(s, r) adv748x_read(s, ADV748X_PAGE_HDMI, r)
>  #define hdmi_read16(s, r, m) (((hdmi_read(s, r) << 8) | hdmi_read(s, (r)+1)) & (m))
>  #define hdmi_write(s, r, v) adv748x_write(s, ADV748X_PAGE_HDMI, r, v)
> +#define hdmi_update(s, r, m, v) \
> +	adv748x_update_bits(s, ADV748X_PAGE_HDMI, r, m, v)
> +
> +#define dpll_read(s, r) adv748x_read(s, ADV748X_PAGE_DPLL, r)
> +#define dpll_update(s, r, m, v) \
> +	adv748x_update_bits(s, ADV748X_PAGE_DPLL, r, m, v)
>  
>  #define repeater_read(s, r) adv748x_read(s, ADV748X_PAGE_REPEATER, r)
>  #define repeater_write(s, r, v) adv748x_write(s, ADV748X_PAGE_REPEATER, r, v)
>  
>  #define sdp_read(s, r) adv748x_read(s, ADV748X_PAGE_SDP, r)
>  #define sdp_write(s, r, v) adv748x_write(s, ADV748X_PAGE_SDP, r, v)
> -#define sdp_clrset(s, r, m, v) sdp_write(s, r, (sdp_read(s, r) & ~(m)) | (v))
> +#define sdp_clrset(s, r, m, v) adv748x_update_bits(s, ADV748X_PAGE_SDP, r, m, v)
>  
>  #define cp_read(s, r) adv748x_read(s, ADV748X_PAGE_CP, r)
>  #define cp_write(s, r, v) adv748x_write(s, ADV748X_PAGE_CP, r, v)
> -#define cp_clrset(s, r, m, v) cp_write(s, r, (cp_read(s, r) & ~(m)) | (v))
> +#define cp_clrset(s, r, m, v) adv748x_update_bits(s, ADV748X_PAGE_CP, r, m, v)
>  
>  #define tx_read(t, r) adv748x_read(t->state, t->page, r)
>  #define tx_write(t, r, v) adv748x_write(t->state, t->page, r, v)

-- 
Regards,

Laurent Pinchart
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
