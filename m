Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01309BF569
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Sep 2019 17:01:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D997287E5E;
	Thu, 26 Sep 2019 15:01:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZX11IBT0bFcw; Thu, 26 Sep 2019 15:01:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4A72A87BC2;
	Thu, 26 Sep 2019 15:01:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B81FB1BF2F6
 for <devel@linuxdriverproject.org>; Thu, 26 Sep 2019 15:01:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B5516204DF
 for <devel@linuxdriverproject.org>; Thu, 26 Sep 2019 15:01:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vwxSD5G+kUFp for <devel@linuxdriverproject.org>;
 Thu, 26 Sep 2019 15:01:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by silver.osuosl.org (Postfix) with ESMTPS id 39C522002B
 for <devel@driverdev.osuosl.org>; Thu, 26 Sep 2019 15:01:24 +0000 (UTC)
Received: from mail-pl1-f199.google.com ([209.85.214.199])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <connor.kuehl@canonical.com>) id 1iDVGk-0007Pu-0O
 for devel@driverdev.osuosl.org; Thu, 26 Sep 2019 15:01:22 +0000
Received: by mail-pl1-f199.google.com with SMTP id v4so1642895plp.23
 for <devel@driverdev.osuosl.org>; Thu, 26 Sep 2019 08:01:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xtkPkpjPrpLQmsDNk7AeQ5yhyxjhIB2F104oGv/w96M=;
 b=YNfvjrSuOOjNuwM0Bpx4HroT6xDwqJP/Hf1fQRuIXj4qQBx8GAr38lwTKBMNuvTCQE
 VrVqDOydqYHX/ru/2MvC6VLubFkP3jmj5SMBMgG+fJVqKmDQwmHDftXy2gSs7BljU9Do
 kYh2jIkLrxO0x4oGBYulB/Wv+YbD/9jofa+T2fzBD+I//elBxQMxi8ATf2yvRlpmpQSz
 Vwze1/h+aM1kTks8miE7NN9AP8LYB0V/60E0Yx63VyeH9XSn95cOgQ/rR1p05akdzPJM
 /x9d70mOf3g84TtIY07rTGsFgw8n+B4LV9OB6aeQ9uFNA0rnc3a6N7TIQ5K4mon50BBH
 xE4w==
X-Gm-Message-State: APjAAAVFO5Bq2Fjuo30s4mcAoBFbYQ70g6xbhPQu8BxTGiYGolpKH2CD
 BYMQ/2TQDSIaet5eltzsOd5egPlVKDHDImJHvbORlneJCN+OcQt47SOtqXCXgihCVX0GOCaG/p/
 TqEZ4sa2nLO9KyqtxpiDXt8bKdoFNWRTKLlBEOKQ=
X-Received: by 2002:a63:cf0a:: with SMTP id j10mr3759961pgg.388.1569510080735; 
 Thu, 26 Sep 2019 08:01:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy+KG/m+nUPYl05tzsMpdfhCOOO+3WkdwpahkeH8luyF61fGMjp2KK5Rg8NNxKKg+mI1gcMgw==
X-Received: by 2002:a63:cf0a:: with SMTP id j10mr3759931pgg.388.1569510080411; 
 Thu, 26 Sep 2019 08:01:20 -0700 (PDT)
Received: from [192.168.0.179] (c-24-20-45-88.hsd1.or.comcast.net.
 [24.20.45.88])
 by smtp.gmail.com with ESMTPSA id q3sm2650205pgj.54.2019.09.26.08.01.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 26 Sep 2019 08:01:19 -0700 (PDT)
Subject: Re: [PATCH] staging: rtl8188eu: fix possible null dereference
To: Larry Finger <Larry.Finger@lwfinger.net>, gregkh@linuxfoundation.org,
 straube.linux@gmail.com, devel@driverdev.osuosl.org
References: <20190925213215.25082-1-connor.kuehl@canonical.com>
 <b725820f-525c-519b-4474-476abf004985@lwfinger.net>
From: Connor Kuehl <connor.kuehl@canonical.com>
Message-ID: <2f07d7cb-23a1-f5c0-af9f-1c3e19a7082c@canonical.com>
Date: Thu, 26 Sep 2019 08:01:18 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <b725820f-525c-519b-4474-476abf004985@lwfinger.net>
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 9/25/19 5:05 PM, Larry Finger wrote:
> This change is a good one, but why not get the same fix at line 779?

Ah yes! Thanks for pointing that out. I missed that. I will send a V2 
shortly.

Thank you,

Connor

> 
> Larry
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
