Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C55812CC3B2
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Dec 2020 18:29:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3DD3B87A79;
	Wed,  2 Dec 2020 17:29:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5EgHJ7RnI+74; Wed,  2 Dec 2020 17:29:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B3E3887A6E;
	Wed,  2 Dec 2020 17:29:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2032A1BF3BE
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 17:29:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 124CE2E299
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 17:29:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gE3IVyRrdgh4 for <devel@linuxdriverproject.org>;
 Wed,  2 Dec 2020 17:29:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 491EB2E298
 for <devel@driverdev.osuosl.org>; Wed,  2 Dec 2020 17:29:05 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id f17so1493852pge.6
 for <devel@driverdev.osuosl.org>; Wed, 02 Dec 2020 09:29:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=1zd2A4b3H4W7rof/if1DjaC7z+bwx7utHHR11ZaV7KI=;
 b=Ku59e9QB5fODwHs76IPpDyNYKuTfFB8V4ma4EP+h2FNKCMx+aY1GJbS4umSCeJiZoM
 6PCJlcBKIyeCLOWyIUks/EeZVuzqX6s8FRd2+WLLjshOdoPQ8tnH/jFCswwTT6yeM1Ej
 WUs4PtqITpZ2Fr6n3Vn080sqF0cI4FqRxkyC7wHcDnIhnskpD2bYd4WzMX716kN0Lagr
 RXmrGe4DRciWT/nbOClXOOG4uQMzGvdNReNyRWZ7LShggNlWNrQru6+JeHR7EIDIrIzQ
 9NZLyeESgpMDucD/YP6xHG/JF9yU0dyovi9sk1ao2gJGS6apyg7PLlgDZKIMt8Q2hDXx
 CdSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=1zd2A4b3H4W7rof/if1DjaC7z+bwx7utHHR11ZaV7KI=;
 b=ceTbxUWdsFUvduGTEa0dH2VaYJuaIEweloWSNViXIzrrJ49c4P0KrjuMH7LiUISK1v
 hzhkAI6TC9mN/j1EIzRyDs51ENayz/5k1TvztdEGjzsvG7lRIaF70wCtPJPOefdx4OMg
 RvOQEZrS+r0rX2x6YETrqiPDQWEgQL36FwBnTTVLwsQOuvP7MS0hSoF0lymGCIbz3iqo
 33NCdl5gl9bQisOs4U0dezybjUwb5SL3f1ETU2o+T2McJeMkKNv/0AtDswkbjLB9y9Gr
 Ka9k1BE1pOet2qznzV8Sc2GuJMIgdbO65GYf0dwttywNMsV7CCx2x/h0tjqbvhaXMqT4
 7zwQ==
X-Gm-Message-State: AOAM531+QmCE6nbw9uboVHDD4oj5daMb2kgn4fe6yd7k6dnTvn0eLEhw
 8Tr56r8MvB8nTWlzQRT4PcQ=
X-Google-Smtp-Source: ABdhPJxQDcY1DQubBXpw7TsyWKzjziBWPqyqoTcEmilGbyfzvlDrvmyHnr8hcmY8gv1fKTZ+vo6KBg==
X-Received: by 2002:a63:1514:: with SMTP id v20mr797640pgl.203.1606930144918; 
 Wed, 02 Dec 2020 09:29:04 -0800 (PST)
Received: from [10.230.28.242] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id 188sm366246pfd.188.2020.12.02.09.29.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Dec 2020 09:29:03 -0800 (PST)
Subject: Re: [PATCH v5 04/11] gpio: raspberrypi-exp: Release firmware handle
 on unbind
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 u.kleine-koenig@pengutronix.de, linux-kernel@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
References: <20201123183833.18750-1-nsaenzjulienne@suse.de>
 <20201123183833.18750-5-nsaenzjulienne@suse.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <a2485ad7-85a2-4f10-5e40-27461a10c797@gmail.com>
Date: Wed, 2 Dec 2020 09:29:00 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201123183833.18750-5-nsaenzjulienne@suse.de>
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
Cc: devel@driverdev.osuosl.org, linux-pwm@vger.kernel.org, f.fainelli@gmail.com,
 devicetree@vger.kernel.org, sboyd@kernel.org, gregkh@linuxfoundation.org,
 dmitry.torokhov@gmail.com, linux-gpio@vger.kernel.org,
 andy.shevchenko@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 wahrenst@gmx.net, p.zabel@pengutronix.de, linux-input@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 11/23/2020 10:38 AM, Nicolas Saenz Julienne wrote:
> Use devm_rpi_firmware_get() so as to make sure we release RPi's firmware
> interface when unbinding the device.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Acked-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
