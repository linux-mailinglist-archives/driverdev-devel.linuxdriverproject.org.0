Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A38F21CB83
	for <lists+driverdev-devel@lfdr.de>; Sun, 12 Jul 2020 23:07:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1B89488236;
	Sun, 12 Jul 2020 21:07:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wckA0e7uvOv8; Sun, 12 Jul 2020 21:07:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C612588240;
	Sun, 12 Jul 2020 21:07:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A96371BF3BE
 for <devel@linuxdriverproject.org>; Sun, 12 Jul 2020 21:07:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A49B72736E
 for <devel@linuxdriverproject.org>; Sun, 12 Jul 2020 21:07:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2zVL3aKeQkr5 for <devel@linuxdriverproject.org>;
 Sun, 12 Jul 2020 21:07:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by silver.osuosl.org (Postfix) with ESMTPS id BC11827289
 for <devel@driverdev.osuosl.org>; Sun, 12 Jul 2020 21:07:06 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id x9so3292038ljc.5
 for <devel@driverdev.osuosl.org>; Sun, 12 Jul 2020 14:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=lS5XTrwedb/3nokz4lVo12gjMCK4Z6XI2hGCylgUL6I=;
 b=EAia+4Ip1P74K7zvOGJQNCPkEkazJ01C3M3lYtd7RnTeJAHFGfX8gZ1A7e8HJoAQn1
 OEmPVc5UaLa+X5RLXNONbvJWMmBnU4RAmlTLr3Uh6i50Q9HmEL3NMmHFxGo8+O871Cg1
 38ewH3MDsUg0zK1F7CyX8Fy87RvwJSOjs0sz+tDC+0VVxcBwsT6FJBfKvChJTA67D9w3
 KGphUmmi/vzO6oObyRp6GockyR1ca5LmtSyb0yIZQf2FEtDNEDTaI8h+80YoxCvqn8i6
 C8R654bnc9RCb05PlLJAlFJxQKFBPLzkD0ZXMc7YrNXFSgrgtqVmgUkJeVshuEGbOuTZ
 AUJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lS5XTrwedb/3nokz4lVo12gjMCK4Z6XI2hGCylgUL6I=;
 b=jS4RGFeFS1ax8CQD1IAQbSxUttR26JVtxs6bbGvZK+SkYoYQvkHJzG2fr3IcSKyuBF
 0rQJ5jLgo1kBcaAFJ8CJ7nAYeL9zPAysRC7rWYiPzlWodUSXa/X9+eJD8Se6QlUIBN6U
 bjvgGJzWpa8NhJyjSCe2QxcTxHtVVHqfV5d8dxRDwhnF9P0/tgjKzyG1GvUDNXkRfbrM
 zJ4T9801FjfcPhqJQLYtcBI/oefxsiS5u5kpzv22hv4nUvN4J9GjJXTUlu6w7ID9BDvZ
 u/wzYLVgwDNwOEvJwbgTJxpLNiEJOV7ne5xkDuCxZhpUk7OLedGBYbNi42nso9jSPafb
 zjOg==
X-Gm-Message-State: AOAM531k0firWhkt0uTOzJObgeN3LNV9cNHTM0t7zD/ZT34+Sb4WC0bk
 EFwXouv9jf3NFkueps5IhCA=
X-Google-Smtp-Source: ABdhPJyCQwxcVr3RbS0QnV7knavaFbEEkYSPr8tJNJNzyTamoWqPzBwK6gVq1p1v7xkcpFNxYse1pg==
X-Received: by 2002:a2e:7202:: with SMTP id n2mr22638166ljc.7.1594588024796;
 Sun, 12 Jul 2020 14:07:04 -0700 (PDT)
Received: from [192.168.0.160] (10.177.smarthome.spb.ru. [109.71.177.10])
 by smtp.gmail.com with ESMTPSA id l14sm4175132lfj.13.2020.07.12.14.07.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 12 Jul 2020 14:07:03 -0700 (PDT)
Subject: Re: [PATCH] staging: r8188eu: remove unused members of struct xmit_buf
To: Larry Finger <Larry.Finger@lwfinger.net>
References: <20200712123821.553420-1-insafonov@gmail.com>
 <895d5f76-832f-62a0-fc82-79b26ca104d4@lwfinger.net>
From: Ivan Safonov <insafonov@gmail.com>
Message-ID: <5e3186e7-4b07-c119-2658-ebe5464a9fa7@gmail.com>
Date: Mon, 13 Jul 2020 00:11:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <895d5f76-832f-62a0-fc82-79b26ca104d4@lwfinger.net>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Soumyajit Deb <debsoumyajit100@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 7/12/20 8:55 PM, Larry Finger wrote:
> On 7/12/20 7:38 AM, Ivan Safonov wrote:
>> Remove unused members of struct xmit_buf: alloc_sz, ff_hwaddr,
>> dma_transfer_addr, bpending and last.
>>
>> Signed-off-by: Ivan Safonov <insafonov@gmail.com>
>> ---
> 
> Have you tested this change? Previously with this driver, an unused 
> quantity was removed from one of the structs and the driver failed. 
> Apparently, the alignment of some other quantity was affected. I do not 
> think that this change would have that affect; however, you should be 
> testing whenever the changes are more than cosmetic.
> 
> Larry
> 

I have not tested this patch.

Ivan.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
