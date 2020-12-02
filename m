Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED71E2CC3B0
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Dec 2020 18:27:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9CD4687236;
	Wed,  2 Dec 2020 17:27:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eAmmBRycAVFC; Wed,  2 Dec 2020 17:27:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6CA588724A;
	Wed,  2 Dec 2020 17:27:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8BC961BF3BE
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 17:27:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 863F72E299
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 17:27:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZwwHSffao8jE for <devel@linuxdriverproject.org>;
 Wed,  2 Dec 2020 17:27:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 9F8182E298
 for <devel@driverdev.osuosl.org>; Wed,  2 Dec 2020 17:27:50 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id e5so1407677pjt.0
 for <devel@driverdev.osuosl.org>; Wed, 02 Dec 2020 09:27:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+UdVXmhs/4Phj5/5bdllmyNQP2Xy3BlDAzSJt7PwcBQ=;
 b=CunhwlfKnzPtfdmbBnX7BUQ7LUIF4t1GqAq/HZj8+ogdRbMBahd8LRFwOQmntOrW0c
 pGa156PZDBgVaIjtVsWLj4ZLpATBQ7PfE62i0E5OqcQj5FfsAtURN5cIJpg/VMhjhaZZ
 192m4inZFbDtCeS9+IHkIQYjme89nyDQuCIDUGyHVc9nVdITI67VCmV7OQxDgoebkyO8
 v1vVcQwqTNk8Jj9LSrE+9TVkfcTI4EhJMrAmfzYuSnJPlt+vBFwdaL3iujwfGl/WLQOp
 249M3B4JxN1ccIKxROdBnHeuNw9VOnvH75HGixeyj6cucnw255ZyfdAgtxWvVXiWywu8
 2o4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+UdVXmhs/4Phj5/5bdllmyNQP2Xy3BlDAzSJt7PwcBQ=;
 b=q05GAj/0yF7Mk7ae8Aj3+gHFFZuMrHnKJJH5ZYZcmuuqXRtXmLSFqCQ/McaDOJCpjv
 fF/Ywazr6gcyxiIbEUXzLUOh/XyHzPm7IBvJMRGobeooF89yhG/KGu+gvdOjGMOlZxZX
 htv4GRqe5d2MDyv3sNAAOyN55ZESzWfq/DsGoBlHjMsikk/9wSlqigqRLSN5afREjnw4
 /sNoGOdkirOjKHWJ5ksYQlYmMK/+jta/kZl6Ly+J9thS4i3NvZ7lXX9pRNMkCmnv1YYf
 bXJU6ZgvicixueSWECQi0fSMLM2JtobbBCL5WUXBGS32nNavAnQtl/V9ynVV30+frJC9
 p2GQ==
X-Gm-Message-State: AOAM531WkBR9uK8yas+BJl4NeUYzLCRNjumfLflnhH/vhmmfmW2IyOjq
 BpllWpD/BEU0fGQtklpx+jA=
X-Google-Smtp-Source: ABdhPJxcrTULgHKNSH5y26fS9YrVHQBUqB13+rzeYYBT0V6asDNO/KiMUjFV7pXoYk5j1YcS6o5y6g==
X-Received: by 2002:a17:90b:1c0d:: with SMTP id
 oc13mr807603pjb.113.1606930070265; 
 Wed, 02 Dec 2020 09:27:50 -0800 (PST)
Received: from [10.230.28.242] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id h7sm371319pfr.210.2020.12.02.09.27.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Dec 2020 09:27:49 -0800 (PST)
Subject: Re: [PATCH v5 02/11] firmware: raspberrypi: Introduce
 devm_rpi_firmware_get()
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 u.kleine-koenig@pengutronix.de, linux-kernel@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, bcm-kernel-feedback-list@broadcom.com
References: <20201123183833.18750-1-nsaenzjulienne@suse.de>
 <20201123183833.18750-3-nsaenzjulienne@suse.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <1870d3c2-048c-7438-602a-6e5207efe515@gmail.com>
Date: Wed, 2 Dec 2020 09:27:46 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201123183833.18750-3-nsaenzjulienne@suse.de>
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
Cc: devel@driverdev.osuosl.org, linux-pwm@vger.kernel.org,
 devicetree@vger.kernel.org, sboyd@kernel.org, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, dmitry.torokhov@gmail.com,
 linux-gpio@vger.kernel.org, andy.shevchenko@gmail.com, wahrenst@gmx.net,
 p.zabel@pengutronix.de, linux-input@vger.kernel.org, bgolaszewski@baylibre.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 11/23/2020 10:38 AM, Nicolas Saenz Julienne wrote:
> It'll simplify the firmware handling for most consumers.
> 
> Suggested-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
