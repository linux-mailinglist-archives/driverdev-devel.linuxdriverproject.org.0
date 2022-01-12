Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4EDA48C28B
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jan 2022 11:52:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 67918409ED;
	Wed, 12 Jan 2022 10:52:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kaXPesvHP9Yo; Wed, 12 Jan 2022 10:52:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2327D40A17;
	Wed, 12 Jan 2022 10:52:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DF4241BF831
 for <devel@linuxdriverproject.org>; Wed, 12 Jan 2022 10:51:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CD3D660E86
 for <devel@linuxdriverproject.org>; Wed, 12 Jan 2022 10:51:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linaro.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0vXWAOi79Zhk for <devel@linuxdriverproject.org>;
 Wed, 12 Jan 2022 10:51:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com
 [IPv6:2a00:1450:4864:20::130])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3AA7360BCA
 for <devel@driverdev.osuosl.org>; Wed, 12 Jan 2022 10:51:55 +0000 (UTC)
Received: by mail-lf1-x130.google.com with SMTP id e3so3876090lfc.9
 for <devel@driverdev.osuosl.org>; Wed, 12 Jan 2022 02:51:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ajadRxekfKlNZLmonMEGUdpiiUlJCpBU8D0nYRIxhqA=;
 b=n7ouKiMIb/tYofVya2jhLWqIz4otlZtpCCE4aguIdHQS6dKoDs8RksAdkHVkfh6ck9
 kLk0Qw8b9sD6WfOvMmBksUUT/hrgra1I5API4Y6De42JSRUZLf8BRJKHORRK20eAuH9Z
 swLy1bap3RlWJDUOMzIPyTBWUX06YOkgPTcU1RN0vX5H25enAYzExMTYYSCp0FfsdTGY
 lCUHBleRTxjJZ/zLOnra4Cugri59EkvL9QHtXp6yzeoBDHKWdRMa4IKepql+xYOfmE3V
 +vq+5Z3GSTB+IFeoGbA8QKA7aUQmuOgEdues2+HRvY+0UaG7QLcRZBpvmP6TFxyAaliz
 U2YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ajadRxekfKlNZLmonMEGUdpiiUlJCpBU8D0nYRIxhqA=;
 b=o46IYK8Vuw8dGfO+8V/BQ1HzGr1fFA6WTa7E3btpgLYCP5ObFaeb4A4lw98rk38pNc
 by6f9O3Z9xE0Nu2eelLUM26+PehBwAVKJFMfj7lK+g9He3U9Cda+jNIWVITcQi90xk3e
 cRsMF2R9GhG57LrWsLfeYNIlUMCm/43VAn0kQdpTyLhhXeroIqaSN7iCODeLmgYr8083
 trN2RMxIjoBq0sjHxOougKJBJsYgudgdhKHwzpp7Ayx4Ud6m4IXpZCjG0cuHZ9j8Lovu
 Wxs43gch3YukwE1FmJUGrB8xRcQ3Q5Y7Lm8NeyOWGhQXM5RPmiBDKm4NPbudTGs3g1/M
 bk3g==
X-Gm-Message-State: AOAM530tt/AqZxpGte2qq+RoIi8rj5mNFAVg4RpWqkNq06XSsRTt0OCV
 K9snFl1POORoW02GgUtBsUkRndlxuKvk3HCr2iN/Jw==
X-Google-Smtp-Source: ABdhPJwlG2ajFyVnViZREk3eK3GmcRqUFKwmypVgeholraY8xEQawKZtMDgFhgZE9kKw4JIyjTxnCJC3g5FMtOM/0kI=
X-Received: by 2002:a05:651c:98f:: with SMTP id
 b15mr6038585ljq.367.1641984713037; 
 Wed, 12 Jan 2022 02:51:53 -0800 (PST)
MIME-Version: 1.0
References: <20220111171424.862764-1-Jerome.Pouiller@silabs.com>
 <20220111171424.862764-9-Jerome.Pouiller@silabs.com>
In-Reply-To: <20220111171424.862764-9-Jerome.Pouiller@silabs.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 12 Jan 2022 11:51:16 +0100
Message-ID: <CAPDyKFoMQG-GOfRsMk21Awk21cxVN6bMe9n8YCh8xHbg7j1Rgg@mail.gmail.com>
Subject: Re: [PATCH v9 08/24] wfx: add bus_sdio.c
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

[...]

> +static const struct of_device_id wfx_sdio_of_match[] = {
> +       { .compatible = "silabs,wf200",    .data = &pdata_wf200 },
> +       { .compatible = "silabs,brd4001a", .data = &pdata_brd4001a },
> +       { .compatible = "silabs,brd8022a", .data = &pdata_brd8022a },
> +       { .compatible = "silabs,brd8023a", .data = &pdata_brd8023a },
> +       { .compatible = "silabs,wfx-sdio", .data = &pdata_wfx_sdio },
> +       { },
> +};
> +MODULE_DEVICE_TABLE(of, wfx_sdio_of_match);
> +
> +static int wfx_sdio_probe(struct sdio_func *func, const struct sdio_device_id *id)
> +{
> +       const struct wfx_platform_data *pdata = of_device_get_match_data(&func->dev);
> +       struct device_node *np = func->dev.of_node;
> +       struct wfx_sdio_priv *bus;
> +       int ret;
> +
> +       if (func->num != 1) {
> +               dev_err(&func->dev, "SDIO function number is %d while it should always be 1 (unsupported chip?)\n",
> +                       func->num);
> +               return -ENODEV;
> +       }
> +
> +       if (!pdata) {
> +               dev_warn(&func->dev, "no compatible device found in DT\n");
> +               return -ENODEV;
> +       }
> +
> +       bus = devm_kzalloc(&func->dev, sizeof(*bus), GFP_KERNEL);
> +       if (!bus)
> +               return -ENOMEM;
> +
> +       bus->func = func;
> +       bus->of_irq = irq_of_parse_and_map(np, 0);
> +       sdio_set_drvdata(func, bus);
> +       func->card->quirks |= MMC_QUIRK_LENIENT_FN0 |
> +                             MMC_QUIRK_BLKSZ_FOR_BYTE_MODE |
> +                             MMC_QUIRK_BROKEN_BYTE_MODE_512;

This should not be needed any more, right?

> +
> +       sdio_claim_host(func);
> +       ret = sdio_enable_func(func);
> +       /* Block of 64 bytes is more efficient than 512B for frame sizes < 4k */
> +       sdio_set_block_size(func, 64);
> +       sdio_release_host(func);
> +       if (ret)
> +               return ret;
> +
> +       bus->core = wfx_init_common(&func->dev, pdata, &wfx_sdio_hwbus_ops, bus);
> +       if (!bus->core) {
> +               ret = -EIO;
> +               goto sdio_release;
> +       }
> +
> +       ret = wfx_probe(bus->core);
> +       if (ret)
> +               goto sdio_release;
> +
> +       return 0;
> +
> +sdio_release:
> +       sdio_claim_host(func);
> +       sdio_disable_func(func);
> +       sdio_release_host(func);
> +       return ret;
> +}

[...]

Other than the above, this looks good to me!


Kind regards
Uffe
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
