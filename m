Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 388841389D
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 May 2019 12:14:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A05988848C;
	Sat,  4 May 2019 10:14:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ls+YXD4KRM3w; Sat,  4 May 2019 10:14:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 060B48830B;
	Sat,  4 May 2019 10:14:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0F4541BF20B
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 10:14:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F358723120
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 10:14:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3MLZUf6MFdB4 for <devel@linuxdriverproject.org>;
 Sat,  4 May 2019 10:14:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 808C7226E9
 for <devel@driverdev.osuosl.org>; Sat,  4 May 2019 10:14:07 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id g24so7531016otq.2
 for <devel@driverdev.osuosl.org>; Sat, 04 May 2019 03:14:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lPA/HIaDQ/Ghehk/BJTv13aPK8G2LL/IH3O3cng7o7E=;
 b=boNvDlRImfuTWIQlvpaKfakLmm3cBpk/ofsj1V9dSCm5v4fKg/lpVp+gRidxoN7bJ0
 +ejW1h55gsN0bZd98Tm+av7sQXqOAfhvp0rQhVYy5+W9HQs4kwPtOuKhmouzs5sp/ZU7
 YRvFJYUPnQZ92Rkvtgha/i/5NQ4z1bNC3Qf5ld+p3yQ+aqTzIc/3h3sCyhwFZadhMhpv
 0z6gZLTXoligLLSkkVoOIIX8EOgsjz+6aVWJIICal2pyXq4tZ0jvtfyFEa74ovGF4Dfs
 w2x/2Ubq+VoA8Uvovg83KWI2/mzyNcoujjBjtKFabhECEohiZBhtAlq3S7nxjylE8qa7
 VpEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lPA/HIaDQ/Ghehk/BJTv13aPK8G2LL/IH3O3cng7o7E=;
 b=H9jWEAc+452qMjato9YL4kzxwCxBQO+3EHJrA9vCAoXS+SFiaPVPn9cXqQuOXnq2PO
 uc87WoWqijMGVkDdnh8T3FtABbmIsTMG/1qVJQKhQXBZEpnXhdLj898ZP23xf6HtYGij
 JiPpuQDASyD4kbC1j9MPKt4AEZR00oPVlMwsWiCXhrVLobBOz6G1rbaaakA753MqiFlf
 5ujBwYQL5MCo+dgvS7JbZbPLtxhtje/k1Nn0zoKD53hRLx8hmZSrWxwxKrU/K3UdG0MU
 T35dt7QDVmodFYYd7/gHWa68GlbFv8orW2bowYVYSy8jbDULdYTOmLRLbEHOUAnGLAxE
 zSpg==
X-Gm-Message-State: APjAAAVnfGIeNUUmSmRNQz8HdiuidSwBaw2B7hu0tS4fgWvB7lF7n4JG
 dCnxjxWqQkV2MLVOikwHqxDpcPemrDSsoISWHbI=
X-Google-Smtp-Source: APXvYqz/+Q5FmRoRj5RI043UV1KsNjSvB6h0cOf4M8djfpMsgtRlFr1YLNbSahkqeQR3kcyGaB58/7ndpUrX5aSxU2A=
X-Received: by 2002:a9d:6d93:: with SMTP id x19mr7815895otp.157.1556964846739; 
 Sat, 04 May 2019 03:14:06 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1556919363.git.melissa.srw@gmail.com>
 <10781f40fa8a403480833e49b7356ade5af57b94.1556919363.git.melissa.srw@gmail.com>
In-Reply-To: <10781f40fa8a403480833e49b7356ade5af57b94.1556919363.git.melissa.srw@gmail.com>
From: Alexandru Ardelean <ardeleanalex@gmail.com>
Date: Sat, 4 May 2019 13:13:55 +0300
Message-ID: <CA+U=DspGcZjru0cqkO3fHJjg04Gxg-3Yu6jnNKZjx1dBZTG+Pg@mail.gmail.com>
Subject: Re: [PATCH 1/4] staging: iio: ad7150: organize registers definition
To: Melissa Wen <melissa.srw@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Lars-Peter Clausen <lars@metafoo.de>,
 Stefan Popa <stefan.popa@analog.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Barry Song <21cnbao@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 kernel-usp@googlegroups.com, Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Hartmut Knaack <knaack.h@gmx.de>, Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, May 4, 2019 at 1:25 AM Melissa Wen <melissa.srw@gmail.com> wrote:
>
> Use the suffix REG to make the register addresses clear
> and indentation to highlight field names.
>

I'm inclined to say that this change is a bit too much noise versus added value.
While the REG suffix does make sense (generally), since it hasn't been
added from the beginning, it doesn't make much sense to add it now.

It is sufficiently clear (as-is) that these macros refer to registers.
They should be easy to match with the datasheet as well.

> Signed-off-by: Melissa Wen <melissa.srw@gmail.com>
> ---
>  drivers/staging/iio/cdc/ad7150.c | 75 ++++++++++++++++----------------
>  1 file changed, 37 insertions(+), 38 deletions(-)
>
> diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
> index dd7fcab8e19e..24601ba7db88 100644
> --- a/drivers/staging/iio/cdc/ad7150.c
> +++ b/drivers/staging/iio/cdc/ad7150.c
> @@ -15,35 +15,34 @@
>  #include <linux/iio/iio.h>
>  #include <linux/iio/sysfs.h>
>  #include <linux/iio/events.h>
> -/*
> - * AD7150 registers definition
> - */
>
> -#define AD7150_STATUS              0
> -#define AD7150_STATUS_OUT1         BIT(3)
> -#define AD7150_STATUS_OUT2         BIT(5)
> -#define AD7150_CH1_DATA_HIGH       1
> -#define AD7150_CH2_DATA_HIGH       3
> -#define AD7150_CH1_AVG_HIGH        5
> -#define AD7150_CH2_AVG_HIGH        7
> -#define AD7150_CH1_SENSITIVITY     9
> -#define AD7150_CH1_THR_HOLD_H      9
> -#define AD7150_CH1_TIMEOUT         10
> -#define AD7150_CH1_SETUP           11
> -#define AD7150_CH2_SENSITIVITY     12
> -#define AD7150_CH2_THR_HOLD_H      12
> -#define AD7150_CH2_TIMEOUT         13
> -#define AD7150_CH2_SETUP           14
> -#define AD7150_CFG                 15
> -#define AD7150_CFG_FIX             BIT(7)
> -#define AD7150_PD_TIMER            16
> -#define AD7150_CH1_CAPDAC          17
> -#define AD7150_CH2_CAPDAC          18
> -#define AD7150_SN3                 19
> -#define AD7150_SN2                 20
> -#define AD7150_SN1                 21
> -#define AD7150_SN0                 22
> -#define AD7150_ID                  23
> +/* AD7150 registers */
> +
> +#define AD7150_STATUS_REG                      0x00
> +#define         AD7150_STATUS_OUT1                     BIT(3)
> +#define         AD7150_STATUS_OUT2                     BIT(5)
> +#define AD7150_CH1_DATA_HIGH_REG               0x01
> +#define AD7150_CH2_DATA_HIGH_REG               0x03
> +#define AD7150_CH1_AVG_HIGH_REG                        0x05
> +#define AD7150_CH2_AVG_HIGH_REG                        0x07
> +#define AD7150_CH1_SENSITIVITY_REG             0x09
> +#define AD7150_CH1_THR_HOLD_H_REG              0x09
> +#define AD7150_CH2_SENSITIVITY_REG             0x0C
> +#define AD7150_CH1_TIMEOUT_REG                 0x0A
> +#define AD7150_CH1_SETUP_REG                   0x0B
> +#define AD7150_CH2_THR_HOLD_H_REG              0x0C
> +#define AD7150_CH2_TIMEOUT_REG                 0x0D
> +#define AD7150_CH2_SETUP_REG                   0x0E
> +#define AD7150_CFG_REG                         0x0F
> +#define         AD7150_CFG_FIX                         BIT(7)
> +#define AD7150_PD_TIMER_REG                    0x10
> +#define AD7150_CH1_CAPDAC_REG                  0x11
> +#define AD7150_CH2_CAPDAC_REG                  0x12
> +#define AD7150_SN3_REG                         0x13
> +#define AD7150_SN2_REG                         0x14
> +#define AD7150_SN1_REG                         0x15
> +#define AD7150_SN0_REG                         0x16
> +#define AD7150_ID_REG                          0x17
>
>  /**
>   * struct ad7150_chip_info - instance specific chip data
> @@ -85,12 +84,12 @@ struct ad7150_chip_info {
>   */
>
>  static const u8 ad7150_addresses[][6] = {
> -       { AD7150_CH1_DATA_HIGH, AD7150_CH1_AVG_HIGH,
> -         AD7150_CH1_SETUP, AD7150_CH1_THR_HOLD_H,
> -         AD7150_CH1_SENSITIVITY, AD7150_CH1_TIMEOUT },
> -       { AD7150_CH2_DATA_HIGH, AD7150_CH2_AVG_HIGH,
> -         AD7150_CH2_SETUP, AD7150_CH2_THR_HOLD_H,
> -         AD7150_CH2_SENSITIVITY, AD7150_CH2_TIMEOUT },
> +       { AD7150_CH1_DATA_HIGH_REG, AD7150_CH1_AVG_HIGH_REG,
> +         AD7150_CH1_SETUP_REG, AD7150_CH1_THR_HOLD_H_REG,
> +         AD7150_CH1_SENSITIVITY_REG, AD7150_CH1_TIMEOUT_REG },
> +       { AD7150_CH2_DATA_HIGH_REG, AD7150_CH2_AVG_HIGH_REG,
> +         AD7150_CH2_SETUP_REG, AD7150_CH2_THR_HOLD_H_REG,
> +         AD7150_CH2_SENSITIVITY_REG, AD7150_CH2_TIMEOUT_REG },
>  };
>
>  static int ad7150_read_raw(struct iio_dev *indio_dev,
> @@ -133,7 +132,7 @@ static int ad7150_read_event_config(struct iio_dev *indio_dev,
>         bool adaptive;
>         struct ad7150_chip_info *chip = iio_priv(indio_dev);
>
> -       ret = i2c_smbus_read_byte_data(chip->client, AD7150_CFG);
> +       ret = i2c_smbus_read_byte_data(chip->client, AD7150_CFG_REG);
>         if (ret < 0)
>                 return ret;
>
> @@ -229,7 +228,7 @@ static int ad7150_write_event_config(struct iio_dev *indio_dev,
>         if (event_code == chip->current_event)
>                 return 0;
>         mutex_lock(&chip->state_lock);
> -       ret = i2c_smbus_read_byte_data(chip->client, AD7150_CFG);
> +       ret = i2c_smbus_read_byte_data(chip->client, AD7150_CFG_REG);
>         if (ret < 0)
>                 goto error_ret;
>
> @@ -264,7 +263,7 @@ static int ad7150_write_event_config(struct iio_dev *indio_dev,
>
>         cfg |= (!adaptive << 7) | (thresh_type << 5);
>
> -       ret = i2c_smbus_write_byte_data(chip->client, AD7150_CFG, cfg);
> +       ret = i2c_smbus_write_byte_data(chip->client, AD7150_CFG_REG, cfg);
>         if (ret < 0)
>                 goto error_ret;
>
> @@ -497,7 +496,7 @@ static irqreturn_t ad7150_event_handler(int irq, void *private)
>         s64 timestamp = iio_get_time_ns(indio_dev);
>         int ret;
>
> -       ret = i2c_smbus_read_byte_data(chip->client, AD7150_STATUS);
> +       ret = i2c_smbus_read_byte_data(chip->client, AD7150_STATUS_REG);
>         if (ret < 0)
>                 return IRQ_HANDLED;
>
> --
> 2.20.1
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
