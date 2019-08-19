Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A119C94C28
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Aug 2019 19:58:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E6BEE86834;
	Mon, 19 Aug 2019 17:58:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uZb6qJdgsbKv; Mon, 19 Aug 2019 17:58:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9E09F865C4;
	Mon, 19 Aug 2019 17:58:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BAC1B1BF378
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 17:58:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B156F865C7
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 17:58:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QFd7NDRbHax5 for <devel@linuxdriverproject.org>;
 Mon, 19 Aug 2019 17:58:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BC76C8620F
 for <devel@driverdev.osuosl.org>; Mon, 19 Aug 2019 17:58:00 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id k18so2495297otr.3
 for <devel@driverdev.osuosl.org>; Mon, 19 Aug 2019 10:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=SPx17Q+G7qGGeLjARILuLl6TW51F+Z4DXKMa+q1QhGQ=;
 b=NCQb6hAhIGnsCpdzTs7j+nh0saNaP8AahXNLtJPcx1sEJlMVEaUUkdrJHEOBuIqTgZ
 NVXt998/bfTuQbaaYo1B+BNvEiAzmXxkp16nsDCBJQXJqaUEsn9Kewve9kBgmWebj8uT
 wbCqB6FZAGC/j9q+MVM0GZR2/9a5bLDKbneZhY59ofsCMutEW9ZpxeJSgArfpJTFGthB
 OXpUIP0rRSGRaZKM3oYHTEhTjfsdTR6crmS++gVDdHmqCYXY9ULwIj6pcQU3ZOAaJumZ
 JY/sfkFIud7yT9Uh5B1Nv3KEOMdktqW34TQke4QfT1EARCsB2CxEbY9QrVAv2a7zVGKf
 7fyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=SPx17Q+G7qGGeLjARILuLl6TW51F+Z4DXKMa+q1QhGQ=;
 b=uTS5bm1BciCpWQxnU62cty2bRAucAv8Bp2MWaJxgurpYY5wepKF7sdmZxv4TAYISHk
 muhSUWvaI8eHEF//zxDGbi6MzMDTuef0JuGD5kQigfJwiLm8u6ZjpWQjvMMj/ksDGKCP
 X/lPJkHBKY2IyD4mZTGBd336yv3AzYVz6/iN6leIveillx38UuLF9a6FU3DDI51nzILJ
 3CXFt3/HUeOjGpB8gKnRGZj2ii+rQsK8FLsEiWo1zNDXz1sC80Vp9eBA6fx4I7vGBSSZ
 6Zta0O0KLO2rp9WUFrdcvIZZbPTe6lxZcgUIxI4fE+vlB2UUlnVlKbvFL4fheSAeDHgv
 9Ipw==
X-Gm-Message-State: APjAAAUpiDfhkhSrFCHcUDoNY6JwcF3sJa1Pyc5GABkhu797XSc14kWg
 UooUTrxBDJl6Aqj6XN3ZpA0=
X-Google-Smtp-Source: APXvYqyoPbNGTmlnGTEcpz7fO0lq6n2L2EKn43BGGRvx/2q3Uayz1zGl3G1y2NZkto8hfZQLFmFHeQ==
X-Received: by 2002:a05:6830:1592:: with SMTP id
 i18mr13058312otr.86.1566237480027; 
 Mon, 19 Aug 2019 10:58:00 -0700 (PDT)
Received: from [192.168.1.153] (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id 20sm5706479oth.43.2019.08.19.10.57.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 19 Aug 2019 10:57:59 -0700 (PDT)
Subject: Re: [PATCH 2/2] staging: rtl8192e: rtllib_crypt_ccmp.c: Use crypto
 API ccm(aes)
To: Christina Quast <contact@christina-quast.de>, ard.biesheuvel@linaro.org
References: <20190816065936.12214-1-contact@christina-quast.de>
 <20190816065936.12214-3-contact@christina-quast.de>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <767c52c9-71ba-6639-631d-6f3cb0d6951c@lwfinger.net>
Date: Mon, 19 Aug 2019 12:57:57 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190816065936.12214-3-contact@christina-quast.de>
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
Cc: devel@driverdev.osuosl.org, Herbert Xu <herbert@gondor.apana.org.au>,
 Eric Biggers <ebiggers@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Anushka Shukla <anushkacharu9@gmail.com>, Zach Turner <turnerzdp@gmail.com>,
 linux-crypto@vger.kernel.org,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 8/16/19 1:59 AM, Christina Quast wrote:
> Use ccm(aes) aead transform instead of invoking the AES block cipher
> block by block.
> 
> Signed-off-by: Christina Quast <contact@christina-quast.de>
> ---
>   drivers/staging/rtl8192e/Kconfig             |   1 +
>   drivers/staging/rtl8192e/rtllib_crypt_ccmp.c | 187 ++++++++-----------
>   2 files changed, 78 insertions(+), 110 deletions(-)

Tested-by: Larry Finger <Larry.finger@lwfinger.net>

This change for the RTL8192E works. I do not have the hardware for testing the 
equivalent change for r8192u, but as the changes look the same, that one is 
likely OK as well.

Thanks for the change,

Larry
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
