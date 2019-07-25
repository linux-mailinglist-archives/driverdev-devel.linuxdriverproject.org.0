Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B2A9751BB
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 16:48:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4213F86422;
	Thu, 25 Jul 2019 14:48:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0cIsT-ITvDkf; Thu, 25 Jul 2019 14:48:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D7FE6863CD;
	Thu, 25 Jul 2019 14:48:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6C0BD1BF322
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 14:48:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 66BE186B0B
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 14:48:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xNqK1yOC5kdr for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 14:48:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 46EDD86B05
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 14:48:48 +0000 (UTC)
Received: from mail-pf1-f198.google.com ([209.85.210.198])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1hqf30-0005ya-7o
 for devel@driverdev.osuosl.org; Thu, 25 Jul 2019 14:48:46 +0000
Received: by mail-pf1-f198.google.com with SMTP id z1so30990117pfb.7
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 07:48:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=L8TSu/J/AdGKl6bLer7RllEWvDobiC6YHiBN2E8KIEk=;
 b=s3bCV6RMRl1GBk8J96A79k4gg+xuKe4UwbSOznChgTNg5DH33yqBqYTHOmm44hJttS
 rTSwIckvh6NiWNUn/zjNwtJwxlHxvFnFjIt9qv/FwsSrfIIi6h9vMpZvOfsp2PLg0VAw
 fRZ/hD+uyPTuSawyKMH7k4/xDzm6QQ9CJnvqjKp6RjtXFP4mC7xr88PEpMEnUkhGUj95
 EJ+n5rtDNz9X6Rd/WBLJdi++cXGZOmQSRl/hJuVWkjxwyYHAvELotHvO5XBdGchjC6/E
 tLS+lXzrsn72Hriz0yG3+BT3fwyD7N86DcWqabudryB2V+cO/BORyH+58FmwSZDs1YkP
 Xk+Q==
X-Gm-Message-State: APjAAAUCmiEvApjZSyVFtrm4k7l7i9K2SNOsyCWMCghkK1nD/yUYgAzi
 Xk9b91yjThH2he//hOeU5D62eWPaQBPECnG9Riw6HcjZGHvQ+I8FEC5/cnbDonCsoocmtK7b4dC
 NPCeEqQR/HtQZdCf4dzu0FHp1obqu89SEoR7uSns=
X-Received: by 2002:a17:90a:fa18:: with SMTP id
 cm24mr90826098pjb.120.1564066124978; 
 Thu, 25 Jul 2019 07:48:44 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw+RocIAB96bC6X+oFDDNSsZzVfifLEi0IB/t8xIP+CytFrvp+42/dz87PH2bFD6ICwoSl9Wg==
X-Received: by 2002:a17:90a:fa18:: with SMTP id
 cm24mr90826077pjb.120.1564066124658; 
 Thu, 25 Jul 2019 07:48:44 -0700 (PDT)
Received: from 2001-b011-380f-3c20-0160-ac1c-9209-b8ff.dynamic-ip6.hinet.net
 (2001-b011-380f-3c20-0160-ac1c-9209-b8ff.dynamic-ip6.hinet.net.
 [2001:b011:380f:3c20:160:ac1c:9209:b8ff])
 by smtp.gmail.com with ESMTPSA id w4sm67258918pfn.144.2019.07.25.07.48.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 07:48:44 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH] staging: rtl8723bs: Disable procfs debugging by default
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <20190725075503.GA16693@kroah.com>
Date: Thu, 25 Jul 2019 22:48:42 +0800
Message-Id: <83A2CB3F-B0C4-43C6-A3A6-B6E8B440BECC@canonical.com>
References: <20190718092522.17748-1-kai.heng.feng@canonical.com>
 <20190725075503.GA16693@kroah.com>
To: Greg KH <gregkh@linuxfoundation.org>
X-Mailer: Apple Mail (2.3445.104.11)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

at 15:55, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Thu, Jul 18, 2019 at 05:25:22PM +0800, Kai-Heng Feng wrote:
>> The procfs provides many useful information for debugging, but it may be
>> too much for normal usage, routines like proc_get_sec_info() reports
>> various security related information.
>>
>> So disable it by defaultl.
>>
>> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
>> ---
>>  drivers/staging/rtl8723bs/include/autoconf.h | 4 ----
>>  1 file changed, 4 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8723bs/include/autoconf.h  
>> b/drivers/staging/rtl8723bs/include/autoconf.h
>> index 196aca3aed7b..8f4c1e734473 100644
>> --- a/drivers/staging/rtl8723bs/include/autoconf.h
>> +++ b/drivers/staging/rtl8723bs/include/autoconf.h
>> @@ -57,9 +57,5 @@
>>  #define DBG	0	/*  for ODM & BTCOEX debug */
>>  #endif /*  !DEBUG */
>>
>> -#ifdef CONFIG_PROC_FS
>> -#define PROC_DEBUG
>> -#endif
>
> What?  Why?  If you are going to do this, then rip out all of the code
> as well.

Or make it a Kconfig option? Which one do you think is better?

>
> And are you _sure_ you want to do this?

Yes. The procfs of rtl8723bs is useful to Realtek to decode but not to  
others.

Kai-Heng

>
> thanks,
>
> greg k-h


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
