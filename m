Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B741D8974
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 May 2020 22:43:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A50EE88798;
	Mon, 18 May 2020 20:43:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1xMWpN+40wLc; Mon, 18 May 2020 20:43:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9991388268;
	Mon, 18 May 2020 20:43:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 194181BF37F
 for <devel@linuxdriverproject.org>; Mon, 18 May 2020 20:43:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 07B2A87F92
 for <devel@linuxdriverproject.org>; Mon, 18 May 2020 20:43:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xy5T4eaSlfds for <devel@linuxdriverproject.org>;
 Mon, 18 May 2020 20:43:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 23E6A87F8E
 for <devel@driverdev.osuosl.org>; Mon, 18 May 2020 20:43:02 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id m185so991928wme.3
 for <devel@driverdev.osuosl.org>; Mon, 18 May 2020 13:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=2+OAMC4f8T8COIY9Oe99/zNWSXXY4klst0LI8Khi3iI=;
 b=RHmJKo3OWoWHHgmoVSvel9TIKRudNnLvNsL3iFCSiMgjKqKcClkOpHFiys2RWFIfoc
 fmLiGlrI+Ve5lMtydmPobFtEq5dg32cfi+q3JQljRZLwJolPxFCwOzqfDuLg7FPx3h0t
 8lCJehwHXF9xRN0e+lKEwS2ScF7oCxGASwjJFCRfO3zi0INDgRurMXdS7ES817zYGDVn
 DCoaPhxhHCjM7e505GbTljsBWwWcNH8VYH1XkbQ05SQGJvLYQYV/Nch3gdb4+VEKOfyE
 MWYzFSx04WwF2lkOboROLDhnMfN/7jWNt6kLD+OvYAibH5v7BbCML+JOaCdIBbJa3EWq
 1CEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2+OAMC4f8T8COIY9Oe99/zNWSXXY4klst0LI8Khi3iI=;
 b=E+6PCW4HqtjnVx5PEkn53IS89H9EJYSQh4iBattRf1OZfaAcX1mqBcIQ7SvOgk7+MH
 CQM3DQ2MIMng2183OWpz+NnzydnZ3vAdk1FmofJi7sKs0Bw6Uh6WVJPZfJxZnDjpw0QT
 ahdM2Up3ff2116I3smuCEV0K2Q/bfXyqFVv5SS9yXIDhWs9m+jSfb9yCdjJxpbLu9A0c
 ubv+B/eIaBDGK2fTO34IIr3TBhZdKH00GtwgOsqWzmEcimo7CG3hmBCOPvHRrIlp6BeK
 h/fGdPwFik0B/Z+QFbhDo9b0U0OybkahC5e0rRZcMx5fKHtlZZTJzUiPBw1ipijSKbsN
 /23A==
X-Gm-Message-State: AOAM530bAQdBVFwXVfEvrtMCd3+d8wIovaxwLY4ElioGE6o1dKgxYk4z
 YDbjt+X5YSDSr+Kb9+iA++bhNPh5
X-Google-Smtp-Source: ABdhPJxRjmW46dOIk4uevB/ewboU3ixzG1+pTwMZ82VSiCsix8rplOc9LGyHv5HNixW/1N4jyHwwfg==
X-Received: by 2002:a1c:770e:: with SMTP id t14mr1304150wmi.86.1589834580500; 
 Mon, 18 May 2020 13:43:00 -0700 (PDT)
Received: from [192.168.43.227] ([185.69.144.134])
 by smtp.gmail.com with ESMTPSA id y4sm18401718wro.91.2020.05.18.13.42.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 May 2020 13:42:59 -0700 (PDT)
Subject: Re: [PATCH 2/4] staging: vt6656: vnt_beacon_xmit use
 extra_tx_headroom.
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <5f00d319-9242-65b2-d100-dcfe9b0e32be@gmail.com>
 <20200518123944.GI2078@kadam>
From: Malcolm Priestley <tvboxspy@gmail.com>
Message-ID: <fb7a7013-5fbc-d69c-dd20-27ba39462100@gmail.com>
Date: Mon, 18 May 2020 21:42:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200518123944.GI2078@kadam>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 18/05/2020 13:39, Dan Carpenter wrote:
> On Sat, May 16, 2020 at 11:39:34AM +0100, Malcolm Priestley wrote:
>> Create room for vnt_tx_short_buf_head in sk_buff and vnt_tx_usb_header.
>>
>> The struct ieee80211_mgmt is not longer in the header and is at
>> the initial skb->data point.
> 
> I feel like the SubmittingPatches guidelines on verb tenses and not
> saying "this patch" or "I" has got everyone so worried that it's like
> playing Taboo.  Do you mean that the struct moved before or after we
> aply *this patch*?
The struct has not moved, before skb->data was copied on to the address 
along with the rest of frame.

So now struct needs to be at skb->data.

>>
>> Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
> 
> I can't understand the point of this patch at all.  Is it a fix or a
> clean up?  If I had to guess from the subjec, I would say it's a
> performance improvement but I don't know.
Well there is a performance improvement as there is only one buffer 
instead of two.

Mainly to bring into line with other drivers in the mac80211 tree there
is no need for a secondary buffer in driver.

Regards

Malcolm

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
