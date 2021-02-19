Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3661731F563
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 08:37:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BCD7A87480;
	Fri, 19 Feb 2021 07:37:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TSz+ekmxnpWV; Fri, 19 Feb 2021 07:37:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 48A0887473;
	Fri, 19 Feb 2021 07:37:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 99E6B1BF321
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 07:37:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9688F8742C
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 07:37:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5fdG8zbYx4T2 for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 07:37:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
 [209.85.208.174])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 64F3F873E6
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 07:37:03 +0000 (UTC)
Received: by mail-lj1-f174.google.com with SMTP id g1so9265612ljj.13
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 23:37:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:cc:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=hMFTSQVEQdn8VWL0ezmTYZhJ794Avz6LQ2YGElVmR+g=;
 b=J5ZjRaRYv9jAGNuog88pH01utfrJHP9eb8F+rg+agHiWogWsXTJTbBzOHIRFC/d8uD
 UANShOhkCnFg6wLMZ3m7ZZ07bII2n5QrFVzL/KK0DTMHuee2ePW9mzkcueGnamJciNCw
 7nKAlAs5ljEWGeAU/8XQQY6lCbODrn03KxYVo6UF2T1gLY836OQXIGxtZjBGTspcAXmJ
 IZ/AekqQaJkb6prwgBj9YmZnYcreUGxvStvxlpafSWHMlmB4yLPSBe1fSbtmlDaIul4P
 ukMo/KsVgwUd2Cx4FwF+ndys5Q4pvQw2asQlxzu3LS/1g4ua+3/g7EvCQLdzhbU7odi7
 9fDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:cc:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hMFTSQVEQdn8VWL0ezmTYZhJ794Avz6LQ2YGElVmR+g=;
 b=RLmOTgEp/vgqTj7ILNL13hv9WOhhK7UF7mEkCm5st+u2krtS6tDlEhYxDeyW/rxtMK
 YoAWbEOlVJzR49ptGxi4qV8NX5cIBpGfEVjXryfcH4+x1tdFb/p2ZMGbowIF/W7HaT2t
 lHTtzeGRBw5BnUsolcnlJsCgQQbACgybOEFhiy3orovG9zbHxd+RNsCWLVhuBpxZ5ON5
 5PU5iXJU9hE8I37hy1mOq+ODDMyR6DIgTUffwVxCD3IbABvW5KIhbJB3KvvbQrMK9NlZ
 hyCus3GB72Zll/JIkJpAkU+10GfVKW7jp1VXCRbf8cjqTFxrXOLBHQ2hcF7RZWVkY09V
 dXZg==
X-Gm-Message-State: AOAM530WHiTrYS3cKvu9CG6JOPmaLBhaD53oOqeLTO26LPwJqN4zFfFE
 I9D3AgymflLmiHVu80CWhZo=
X-Google-Smtp-Source: ABdhPJw88JAS94euyyb7uOlXgZYpRNzmJje7834JAO9tSY5FyJTv314ZupV4vwoS+s7zRSY5WelwFA==
X-Received: by 2002:a2e:878a:: with SMTP id n10mr4719780lji.418.1613720221307; 
 Thu, 18 Feb 2021 23:37:01 -0800 (PST)
Received: from [192.168.0.160] (10.177.smarthome.spb.ru. [109.71.177.10])
 by smtp.gmail.com with ESMTPSA id c18sm842938lft.258.2021.02.18.23.37.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Feb 2021 23:37:00 -0800 (PST)
Subject: Re: [PATCH] staging: wlan-ng: Fixed incorrect type warning in
 p80211netdev.c
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20210217154255.112115-1-pritthijit.nath@icloud.com>
From: Ivan Safonov <insafonov@gmail.com>
Message-ID: <71a79d2e-6f03-c2c6-738a-8b862f52e48f@gmail.com>
Date: Fri, 19 Feb 2021 10:37:00 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210217154255.112115-1-pritthijit.nath@icloud.com>
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
Cc: devel@driverdev.osuosl.org, Pritthijit Nath <pritthijit.nath@icloud.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2/17/21 6:42 PM, pritthijit.nath at icloud.com (Pritthijit Nath) wrote:
> This change fixes a sparse warning "incorrect type in argument 1
> (different address spaces)".
> 
> Signed-off-by: Pritthijit Nath <pritthijit.nath at icloud.com>
> ---
>   drivers/staging/wlan-ng/p80211netdev.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/wlan-ng/p80211netdev.c b/drivers/staging/wlan-ng/p80211netdev.c
> index 6f9666dc0277..70570e8a5ad2 100644
> --- a/drivers/staging/wlan-ng/p80211netdev.c
> +++ b/drivers/staging/wlan-ng/p80211netdev.c
> @@ -569,7 +569,7 @@ static int p80211knetdev_do_ioctl(struct net_device *dev,
>                  goto bail;
>          }
>   
> -       msgbuf = memdup_user(req->data, req->len);
> +       msgbuf = memdup_user((void __user *)req->data, req->len);
>          if (IS_ERR(msgbuf)) {
>                  result = PTR_ERR(msgbuf);
>                  goto bail;
> 

Reviewed-by: Ivan Safonov <insafonov@gmail.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
