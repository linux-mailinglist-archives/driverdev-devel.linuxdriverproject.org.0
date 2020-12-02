Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A73D2CC456
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Dec 2020 18:55:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F1BCC2E29D;
	Wed,  2 Dec 2020 17:55:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MML5d6xGXGAv; Wed,  2 Dec 2020 17:55:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C339B2E29B;
	Wed,  2 Dec 2020 17:55:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 13D061BF3BE
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 17:55:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 101D187B4C
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 17:55:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M35hSjjeYlPE for <devel@linuxdriverproject.org>;
 Wed,  2 Dec 2020 17:55:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4789787864
 for <devel@driverdev.osuosl.org>; Wed,  2 Dec 2020 17:55:23 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id b26so1079104pfi.3
 for <devel@driverdev.osuosl.org>; Wed, 02 Dec 2020 09:55:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ryyYawzS2MjebmkZYtVtHUp0Y0QlBniiFC9GtFM7sjg=;
 b=JrsjG0IzQ0TgPk4TC/V99EGsekn3FhEaEM4vkQy2ZkEdIf0DtUX+LwjaFp4XV1VvqP
 s/sNvoVcWMzNggQacUTfqCbGGuaZOsIJU8y4uRrdHWXpCg8BCP5PgMQB6RqAQd5F+SGX
 AGdrkNQlhr1T1fqcdxAOVz4sBkV0hGM4j3k9Qr9SOmHXvb1mAqbxHNqQkT1M1kfBY3tr
 CvMZb4i8rbJPLgka7aiMcbL3xkzi+tM+Of4E/94umUvUAJIlzFmg92Tl4izJOQfQCFgE
 gpFti5D7qDz8BQC0PBjIjUhdiv0VpUBjin5pfTSVNhmFo7FQCvIiCCHvO4tNO7jgNWwm
 sEKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ryyYawzS2MjebmkZYtVtHUp0Y0QlBniiFC9GtFM7sjg=;
 b=FbRPC6u+WdgBEi9qmailhxIRckoPPsc8yZ2Tej3iXAileTKt55ovt/MjFtMgeSVhB9
 LKpSYHh4vkFofmCQaPXTiPImG7wkFhVFvkTwdbwmHn4QIYJl1hzrSuLU88pEnXPicd4l
 AWhtRFGm63zc7jGAXrvocyrpYZ8KqSxf+U4ulyGvf6bhBX4mbMTCrkKCkeMqDecHMKGA
 bmuXhDcaw+b6/w/C2T/3G2LfX14E5TOMnQiktGRI+pbxdeOQqMO15F3McxLyBWV73qf9
 /eYNjaG/RWX/vtsLfmg7iVuKVrEIde8fbyA79m8V3tg9X3g76byuJNaDDNnyfsFVTDmA
 lxUA==
X-Gm-Message-State: AOAM532Md64MeG6K+UIYZL+TOvgpSFuQvC7tNnMVqHfVdELW+fgi8XRL
 4goG015L/xPvtfEqmfsG/Lc=
X-Google-Smtp-Source: ABdhPJzZJfnJTKZDgnB349gIV43CHB4pRQpSz6yZhKExglNfal84cKW05LLkbAViYODkjL4H+6trjg==
X-Received: by 2002:a62:1c96:0:b029:198:1cb6:26bd with SMTP id
 c144-20020a621c960000b02901981cb626bdmr3599343pfc.33.1606931722779; 
 Wed, 02 Dec 2020 09:55:22 -0800 (PST)
Received: from [10.230.28.242] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a3sm409853pfh.106.2020.12.02.09.55.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Dec 2020 09:55:21 -0800 (PST)
Subject: Re: [PATCH v5 06/11] soc: bcm: raspberrypi-power: Release firmware
 handle on unbind
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 u.kleine-koenig@pengutronix.de, linux-kernel@vger.kernel.org
References: <20201123183833.18750-1-nsaenzjulienne@suse.de>
 <20201123183833.18750-7-nsaenzjulienne@suse.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <f3fb5ec0-78e9-9245-8a08-247313e45a57@gmail.com>
Date: Wed, 2 Dec 2020 09:55:19 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201123183833.18750-7-nsaenzjulienne@suse.de>
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
 linus.walleij@linaro.org, dmitry.torokhov@gmail.com,
 linux-gpio@vger.kernel.org, andy.shevchenko@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 p.zabel@pengutronix.de, linux-input@vger.kernel.org, bgolaszewski@baylibre.com,
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

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
