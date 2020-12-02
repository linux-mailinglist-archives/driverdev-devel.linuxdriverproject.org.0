Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5AB2CC3B1
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Dec 2020 18:28:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4876987A7B;
	Wed,  2 Dec 2020 17:28:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OCuJtP-m4C9F; Wed,  2 Dec 2020 17:28:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B74D087A54;
	Wed,  2 Dec 2020 17:28:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D31601BF3BE
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 17:28:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CFE6186E98
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 17:28:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rbtQV+78lWlz for <devel@linuxdriverproject.org>;
 Wed,  2 Dec 2020 17:28:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 840F286E6F
 for <devel@driverdev.osuosl.org>; Wed,  2 Dec 2020 17:28:48 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id b12so1358001pjl.0
 for <devel@driverdev.osuosl.org>; Wed, 02 Dec 2020 09:28:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ryyYawzS2MjebmkZYtVtHUp0Y0QlBniiFC9GtFM7sjg=;
 b=tw6vFMWheYBfBRyRmb/SeKnKrLSaBPqhiconFsvZKlXVrMdZlJFHppDrTxWf3LfQBI
 KeTRTk9piziD0Wf/l9FS8rbKTAMdp2gPym0voKW8jDVYNw32QTCBe7VAswbgNtST5CeK
 dlzkMG1OZwOKB/fQTN2F+RBoLqdn0ZX3m2PuVeKK0xUjpEQYLclgu7y+4nSDgpFm27+k
 q8zF07LNbsiAz55wdEekmg/3/lLd5NgiT/DEmso4SGjlk15Ena7r7QvJ3FIC/z/ZQEP6
 5wUOEc5ix2+sPVRZDPzA2HLya0iJQyGHrq7uAuYvS5dKkpbZ1977xELBU7KIuYBoknsr
 9Mew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ryyYawzS2MjebmkZYtVtHUp0Y0QlBniiFC9GtFM7sjg=;
 b=PcSj0cazk26/QkjjUfiJgN6usGFk6Y04+W0XyyNvSjqkCpANe+EE/IC7prHGSAGUF5
 775p/y6y4tviOffx2AM4WuHo6Rcm5x/e1Af7URdYen5nT2X/50JcSdH6kllDJO7cWSDQ
 E0X2k69likIZuSUg7lHl9ezpFfMzvYZ7g4eQGjK2Xuo0+3RDFVFmBgiKwGxzqgr3eKey
 d7gRO1oTBY2vC3Q0+yoHc3MGwUumrTQisvODrwoxY/e6/568tWXY/JoDshh78e7WSaGb
 MfENLDgtLP8TJxqe0BN+wJTzoGZmov3bm8leot7FdBv+Tk12+KXD3kJ2smj5AR2Dh/Ew
 PkNw==
X-Gm-Message-State: AOAM5322d5asDzm4l7XqBl4qlOmm/W/r1P90U2QyVVbYlj1ivwQPnLaj
 /y/smOpkka0hT5Dhqx84SIY=
X-Google-Smtp-Source: ABdhPJw8MqBDwX4imfBfsfRPEoXVNfaDQOekjDj2tbT/zgjQRFtXp5d5bCHcfX9TqM9WVEsMk++rKA==
X-Received: by 2002:a17:902:b7c3:b029:da:74c3:427 with SMTP id
 v3-20020a170902b7c3b02900da74c30427mr3497294plz.38.1606930128158; 
 Wed, 02 Dec 2020 09:28:48 -0800 (PST)
Received: from [10.230.28.242] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id g3sm383218pfr.145.2020.12.02.09.28.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Dec 2020 09:28:47 -0800 (PST)
Subject: Re: [PATCH v5 03/11] clk: bcm: rpi: Release firmware handle on unbind
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 u.kleine-koenig@pengutronix.de, linux-kernel@vger.kernel.org
References: <20201123183833.18750-1-nsaenzjulienne@suse.de>
 <20201123183833.18750-4-nsaenzjulienne@suse.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <2b9340b0-fdf8-7d9f-0770-495991c359c1@gmail.com>
Date: Wed, 2 Dec 2020 09:28:43 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201123183833.18750-4-nsaenzjulienne@suse.de>
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
 Michael Turquette <mturquette@baylibre.com>,
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
