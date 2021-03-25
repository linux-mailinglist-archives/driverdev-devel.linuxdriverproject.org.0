Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05787349961
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Mar 2021 19:20:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5723E4055A;
	Thu, 25 Mar 2021 18:20:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W7Drr0F3UztD; Thu, 25 Mar 2021 18:20:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 50F0C401E7;
	Thu, 25 Mar 2021 18:20:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E5C271C1148
 for <devel@linuxdriverproject.org>; Thu, 25 Mar 2021 18:20:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D51E08410F
 for <devel@linuxdriverproject.org>; Thu, 25 Mar 2021 18:20:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=poorly.run
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6j23rQpJaJhM for <devel@linuxdriverproject.org>;
 Thu, 25 Mar 2021 18:20:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com
 [IPv6:2607:f8b0:4864:20::d36])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CDAF582CC7
 for <devel@driverdev.osuosl.org>; Thu, 25 Mar 2021 18:20:00 +0000 (UTC)
Received: by mail-io1-xd36.google.com with SMTP id b10so2839392iot.4
 for <devel@driverdev.osuosl.org>; Thu, 25 Mar 2021 11:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jztuZCsJ3dGtTwFcpg97sv7/WRCiv8qcjsd5QekOjAg=;
 b=bAa0pT0QLb7YWNM3N9UgKIMJ+0OpK6WlT+U4ZwR7hFjYH2O30GMT9mfyrs7cRerdO7
 BKT8BRqIBE169yPmDvXZ3oIZzftEUAfyQmTg7b2L0HCSK93/kPSUw+M4u+lYqAfkOLIx
 UCCMdTYFsBejhcueDUbVXgOmzRdMXcv7dR5PI/k9qBNKfkbI0TPwAGHvzpeMzKhbdRTB
 rSv2ouFwnhDIBpDFzK3Was9cdvjltQ8dfXtHHfEBMriOEDTlC6adbdFOOBGXHAuWfFG+
 /jEhDn8foPwDM72l3vl52rXynQLARQM6k0mRB/X7bTPcXLD819BfAawF28eSK0kGKwQO
 ACzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jztuZCsJ3dGtTwFcpg97sv7/WRCiv8qcjsd5QekOjAg=;
 b=O69bq6mXyB0/MI1vcxUqHeU0EDVTYt4DrYAxIGZYQJRj0RG3n9l+6B4yNo4kcZ7y/s
 cA7FuSHKpd0gDWzy0/i0y41YJAez9dROk6iMAmHuWbPtEEmAcmv57qUKjlUvoX67cMp5
 8VpkJwFJ678LgjETdp8yr5S+HE1SoWAIZ7jOT9Vk43kHdR6lg8tL0uic6BkEDDmifs0B
 3oPr5UMUPWJYU+Cjs+U0seATGSlF4xkhNYWeXHQT3fHETL7FA7iEVK7LoK6LyYSbnJaM
 EWzqZyZ5RItquY6m7CvVBM+fq4BZizeUvQfS3GoWMpEwyYs10aYrOdctgabFKgsxpSh8
 NcmQ==
X-Gm-Message-State: AOAM533q8MWzWMr1V1kL1n2bFJBcCQJbEfMtW0Lchp95XZVf0oY2so5N
 mSYcuLZi6rcdJMcAlMhqKjWCdujHf82vu4nOhX3WDg==
X-Google-Smtp-Source: ABdhPJzeHTjo12dsPjm8wvAgYcR7pyTo3HM6vo89+UsNYre8lKCzHJknkINEDtGgzipfVOOZZT4EQ1IZCaAFCOMFLkk=
X-Received: by 2002:a05:6638:1390:: with SMTP id
 w16mr8681618jad.83.1616696399826; 
 Thu, 25 Mar 2021 11:19:59 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1616135353.git.xji@analogixsemi.com>
 <189a637c87827f78c433a053e3c2129ebec73188.1616135353.git.xji@analogixsemi.com>
In-Reply-To: <189a637c87827f78c433a053e3c2129ebec73188.1616135353.git.xji@analogixsemi.com>
From: Sean Paul <sean@poorly.run>
Date: Thu, 25 Mar 2021 14:19:23 -0400
Message-ID: <CAMavQKLN04F2rzu7J121N4GvQKh7kq9yXGk+fBSUjsC2nbiSiA@mail.gmail.com>
Subject: Re: [PATCH v6 4/5] drm/bridge: anx7625: add HDCP support
To: Xin Ji <xji@analogixsemi.com>
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
Cc: devel@driverdev.osuosl.org, Nicolas Boichat <drinkcat@google.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Sam Ravnborg <sam@ravnborg.org>,
 Jonas Karlman <jonas@kwiboo.se>, David Airlie <airlied@linux.ie>,
 Zhen Li <zhenli@analogixsemi.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 Neil Armstrong <narmstrong@baylibre.com>, LKML <linux-kernel@vger.kernel.org>,
 Robert Foss <robert.foss@linaro.org>, Vasily Khoruzhick <anarsoul@gmail.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, Torsten Duwe <duwe@lst.de>,
 Sheng Pan <span@analogixsemi.com>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Bernie Liang <bliang@analogixsemi.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Mar 19, 2021 at 2:35 AM Xin Ji <xji@analogixsemi.com> wrote:
>
> Add HDCP feature, enable HDCP function through chip internal key
> and downstream's capability.
>
> Signed-off-by: Xin Ji <xji@analogixsemi.com>
> ---
>  drivers/gpu/drm/bridge/analogix/anx7625.c | 147 ++++++++++++++++++++++
>  drivers/gpu/drm/bridge/analogix/anx7625.h |  36 ++++++
>  2 files changed, 183 insertions(+)
>
> diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
> index 8c514b46d361..b424a570effa 100644
> --- a/drivers/gpu/drm/bridge/analogix/anx7625.c
> +++ b/drivers/gpu/drm/bridge/analogix/anx7625.c
> @@ -633,6 +633,150 @@ static int anx7625_dpi_config(struct anx7625_data *ctx)
>         return ret;
>  }
>
> +static int anx7625_aux_dpcd_read(struct anx7625_data *ctx,
> +                                u8 addrh, u8 addrm, u8 addrl,
> +                                u8 len, u8 *buf)
> +{
> +       struct device *dev = &ctx->client->dev;
> +       int ret;
> +       u8 cmd;
> +
> +       if (len > MAX_DPCD_BUFFER_SIZE) {
> +               DRM_DEV_ERROR(dev, "exceed aux buffer len.\n");
> +               return -E2BIG;
> +       }
> +
> +       cmd = ((len - 1) << 4) | 0x09;
> +
> +       /* Set command and length */
> +       ret = anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> +                               AP_AUX_COMMAND, cmd);
> +
> +       /* Set aux access address */
> +       ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> +                                AP_AUX_ADDR_7_0, addrl);
> +       ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> +                                AP_AUX_ADDR_15_8, addrm);
> +       ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> +                                AP_AUX_ADDR_19_16, addrh);
> +
> +       /* Enable aux access */
> +       ret |= anx7625_write_or(ctx, ctx->i2c.rx_p0_client,
> +                               AP_AUX_CTRL_STATUS, AP_AUX_CTRL_OP_EN);
> +
> +       if (ret < 0) {
> +               DRM_DEV_ERROR(dev, "cannot access aux related register.\n");
> +               return -EIO;
> +       }
> +
> +       usleep_range(2000, 2100);
> +
> +       ret = wait_aux_op_finish(ctx);
> +       if (ret) {
> +               DRM_DEV_ERROR(dev, "aux IO error: wait aux op finish.\n");
> +               return ret;
> +       }
> +
> +       ret = anx7625_reg_block_read(ctx, ctx->i2c.rx_p0_client,
> +                                    AP_AUX_BUFF_START, len, buf);
> +       if (ret < 0) {
> +               DRM_DEV_ERROR(dev, "read dpcd register failed\n");
> +               return -EIO;
> +       }
> +
> +       return 0;
> +}
> +
> +static int anx7625_read_flash_status(struct anx7625_data *ctx)
> +{
> +       return anx7625_reg_read(ctx, ctx->i2c.rx_p0_client, R_RAM_CTRL);
> +}
> +
> +static int anx7625_hdcp_key_probe(struct anx7625_data *ctx)
> +{
> +       int ret, val;
> +       struct device *dev = &ctx->client->dev;
> +       u8 ident[32];
> +
> +       ret = anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> +                               FLASH_ADDR_HIGH, 0x91);
> +       ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> +                                FLASH_ADDR_LOW, 0xA0);
> +       if (ret < 0) {
> +               DRM_DEV_ERROR(dev, "IO error : set key flash address.\n");
> +               return ret;
> +       }
> +
> +       ret = anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> +                               FLASH_LEN_HIGH, (FLASH_BUF_LEN - 1) >> 8);
> +       ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> +                                FLASH_LEN_LOW, (FLASH_BUF_LEN - 1) & 0xFF);
> +       if (ret < 0) {
> +               DRM_DEV_ERROR(dev, "IO error : set key flash len.\n");
> +               return ret;
> +       }
> +
> +       ret = anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> +                               R_FLASH_RW_CTRL, FLASH_READ);
> +       ret |= readx_poll_timeout(anx7625_read_flash_status,
> +                                 ctx, val,
> +                                 ((val & FLASH_DONE) || (val < 0)),
> +                                 2000,
> +                                 2000 * 150);
> +       if (ret) {
> +               DRM_DEV_ERROR(dev, "flash read access fail!\n");
> +               return -EIO;
> +       }
> +
> +       ret = anx7625_reg_block_read(ctx, ctx->i2c.rx_p0_client,
> +                                    FLASH_BUF_BASE_ADDR,
> +                                    FLASH_BUF_LEN, ident);
> +       if (ret < 0) {
> +               DRM_DEV_ERROR(dev, "read flash data fail!\n");
> +               return -EIO;
> +       }
> +
> +       if (ident[29] == 0xFF && ident[30] == 0xFF && ident[31] == 0xFF)
> +               return -EINVAL;
> +
> +       return 0;
> +}
> +
> +static int anx7625_hdcp_setting(struct anx7625_data *ctx)
> +{
> +       u8 bcap;
> +       int ret;
> +       struct device *dev = &ctx->client->dev;
> +
> +       ret = anx7625_hdcp_key_probe(ctx);
> +       if (ret) {
> +               DRM_DEV_DEBUG_DRIVER(dev, "disable HDCP by config\n");
> +               return anx7625_write_and(ctx, ctx->i2c.rx_p1_client,
> +                                        0xee, 0x9f);
> +       }
> +
> +       anx7625_aux_dpcd_read(ctx, 0x06, 0x80, 0x28, 1, &bcap);
> +       if (!(bcap & 0x01)) {
> +               DRM_DEV_DEBUG_DRIVER(dev, "bcap(0x%x) not support HDCP 1.4.\n",
> +                                    bcap);
> +               return anx7625_write_and(ctx, ctx->i2c.rx_p1_client,
> +                                        0xee, 0x9f);
> +       }
> +
> +       DRM_DEV_DEBUG_DRIVER(dev, "enable HDCP 1.4\n");
> +
> +       ret = anx7625_write_or(ctx, ctx->i2c.rx_p1_client, 0xee, 0x20);
> +
> +       /* Try auth flag */
> +       ret |= anx7625_write_or(ctx, ctx->i2c.rx_p1_client, 0xec, 0x10);
> +       /* Interrupt for DRM */
> +       ret |= anx7625_write_or(ctx, ctx->i2c.rx_p1_client, 0xff, 0x01);
> +       if (ret < 0)
> +               DRM_DEV_ERROR(dev, "fail to enable HDCP\n");
> +
> +       return ret;
> +}
> +
>  static void anx7625_dp_start(struct anx7625_data *ctx)
>  {
>         int ret;
> @@ -643,6 +787,9 @@ static void anx7625_dp_start(struct anx7625_data *ctx)
>                 return;
>         }
>
> +       /* HDCP config */
> +       anx7625_hdcp_setting(ctx);

You should really use the "Content Protection" property to
enable/disable HDCP instead of force-enabling it at all times.

Sean

> +
>         if (ctx->pdata.is_dpi)
>                 ret = anx7625_dpi_config(ctx);
>         else
> diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.h b/drivers/gpu/drm/bridge/analogix/anx7625.h
> index beee95da2155..c6f93e4df0ed 100644
> --- a/drivers/gpu/drm/bridge/analogix/anx7625.h
> +++ b/drivers/gpu/drm/bridge/analogix/anx7625.h
> @@ -154,9 +154,45 @@
>
>  #define  I2C_ADDR_7E_FLASH_CONTROLLER  0x7E
>
> +#define FLASH_SRAM_SEL          0x00
> +#define SRAM_ADDR_HIGH          0x01
> +#define SRAM_ADDR_LOW           0x02
> +#define SRAM_LEN_HIGH           0x03
> +#define SRAM_LEN_LOW            0x04
>  #define FLASH_LOAD_STA          0x05
>  #define FLASH_LOAD_STA_CHK     BIT(7)
>
> +#define R_RAM_CTRL              0x05
> +/* bit positions */
> +#define FLASH_DONE              BIT(7)
> +#define BOOT_LOAD_DONE          BIT(6)
> +#define CRC_OK                  BIT(5)
> +#define LOAD_DONE               BIT(4)
> +#define O_RW_DONE               BIT(3)
> +#define FUSE_BUSY               BIT(2)
> +#define DECRYPT_EN              BIT(1)
> +#define LOAD_START              BIT(0)
> +
> +#define FLASH_ADDR_HIGH         0x0F
> +#define FLASH_ADDR_LOW          0x10
> +#define FLASH_LEN_HIGH          0x31
> +#define FLASH_LEN_LOW           0x32
> +
> +#define R_FLASH_RW_CTRL         0x33
> +/* bit positions */
> +#define READ_DELAY_SELECT       BIT(7)
> +#define GENERAL_INSTRUCTION_EN  BIT(6)
> +#define FLASH_ERASE_EN          BIT(5)
> +#define RDID_READ_EN            BIT(4)
> +#define REMS_READ_EN            BIT(3)
> +#define WRITE_STATUS_EN         BIT(2)
> +#define FLASH_READ              BIT(1)
> +#define FLASH_WRITE             BIT(0)
> +
> +#define FLASH_BUF_BASE_ADDR     0x60
> +#define FLASH_BUF_LEN           0x20
> +#define FLASH_KEY_OFFSET        0x8000
> +
>  #define  XTAL_FRQ_SEL    0x3F
>  /* bit field positions */
>  #define  XTAL_FRQ_SEL_POS    5
> --
> 2.25.1
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
