Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F292CC3B3
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Dec 2020 18:29:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 14D6286D76;
	Wed,  2 Dec 2020 17:29:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e9hfOX-PXPZs; Wed,  2 Dec 2020 17:29:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C486A86DBF;
	Wed,  2 Dec 2020 17:29:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0963F1BF3BE
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 17:29:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0607A87A6E
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 17:29:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K3ZUqWoi4THy for <devel@linuxdriverproject.org>;
 Wed,  2 Dec 2020 17:29:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 836D887A5A
 for <devel@driverdev.osuosl.org>; Wed,  2 Dec 2020 17:29:24 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id o5so1482760pgm.10
 for <devel@driverdev.osuosl.org>; Wed, 02 Dec 2020 09:29:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ryyYawzS2MjebmkZYtVtHUp0Y0QlBniiFC9GtFM7sjg=;
 b=b5xlFRCbMRItD+HFZcCZb+HbaGxsWgbgub+SCO6VZOqdgpgiloLzr/Y3f6m5NGZo0d
 a06NZbtaF62w8BaesFML+kfHSY3EA/Cr0qy/0FKGZsYKU5xWQ7SdQMrYwA/YOYjnp58R
 C+IZ+hRMg8vXYCOfWmC8kCy06LKQmkl8hfGwmZzYoFlsnNw8g1qls4moR92HIgzX2sQm
 ielZze+J7rzOAPhPK8pXaoHE17NH8yvyRVCYK8+cPJ/0SPYNMxR0FMF9CGcOgaysfWCl
 HZaLHO8O+3DfP/7mV5VA5YooTJXfZu7eORXTqHf8udFT4V2DiMWK5NzAnMBNcr4UO9JW
 QArA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ryyYawzS2MjebmkZYtVtHUp0Y0QlBniiFC9GtFM7sjg=;
 b=gb2ewZUtvPPHJqKoueBuL9nPa485Iz2bXUGRdtLP0hDqmWwJQ4Itl3Si6QBx2G57jp
 OttPv/KLHl84DA4G8GRmc2KtXhn3jL5GzLeoEEO+J5dG4IYtdHJSFPBk7c62n38TwY7R
 zEBSCsGsb+60wRFpfq212xQXlQNWSXor5nimbryDhEHDwEtUyBuLgatzVaP9a8UqvxBO
 hxFPOzjsYChAmVeNH3ygNueTApRG/IEJW1g8tT5HgRrYbROKJhCxy16+Arw7wk2sc7wC
 e+6YKLWqTxzOvRjdtBiM3jMOdyPYBwYurK6HHmqkdxsV6nrA5/Q7yRFbBD28drlSEsbf
 fVIQ==
X-Gm-Message-State: AOAM531wgf1kO3ekBhWcVun4rVuEZ0dLwfaCFNcIYNeV+bzLRzR1kWVp
 S0e3qJNhIryBDuds3NG5774=
X-Google-Smtp-Source: ABdhPJxgQXx0kr1Swrb/KX+SjSrYEdQ3otcHAy5qmZ1c9fTmh11kgvfHr8IV/bJ85O7X3P1SA1xN8w==
X-Received: by 2002:a62:6405:0:b029:197:cc73:397b with SMTP id
 y5-20020a6264050000b0290197cc73397bmr3927426pfb.51.1606930164131; 
 Wed, 02 Dec 2020 09:29:24 -0800 (PST)
Received: from [10.230.28.242] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id q14sm382946pfl.163.2020.12.02.09.29.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Dec 2020 09:29:22 -0800 (PST)
Subject: Re: [PATCH v5 05/11] reset: raspberrypi: Release firmware handle on
 unbind
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 u.kleine-koenig@pengutronix.de, linux-kernel@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>
References: <20201123183833.18750-1-nsaenzjulienne@suse.de>
 <20201123183833.18750-6-nsaenzjulienne@suse.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <848fa5ae-9cc2-a119-64a5-130f25157d56@gmail.com>
Date: Wed, 2 Dec 2020 09:29:20 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201123183833.18750-6-nsaenzjulienne@suse.de>
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
 linux-input@vger.kernel.org, bgolaszewski@baylibre.com,
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
