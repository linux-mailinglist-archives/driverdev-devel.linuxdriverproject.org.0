Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 19787152572
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Feb 2020 04:57:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9A52620794;
	Wed,  5 Feb 2020 03:57:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vcV4VLXeKRKX; Wed,  5 Feb 2020 03:57:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A410120784;
	Wed,  5 Feb 2020 03:57:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E96021BF957
 for <devel@linuxdriverproject.org>; Wed,  5 Feb 2020 03:57:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E4990204E0
 for <devel@linuxdriverproject.org>; Wed,  5 Feb 2020 03:57:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tfMMa+GuutFP for <devel@linuxdriverproject.org>;
 Wed,  5 Feb 2020 03:57:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 24AD220013
 for <devel@driverdev.osuosl.org>; Wed,  5 Feb 2020 03:57:02 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id y73so477931pfg.2
 for <devel@driverdev.osuosl.org>; Tue, 04 Feb 2020 19:57:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=apPrD7wZh90jY/Np9SrQOOe7m/4eyMCS6fQyaQaa/T8=;
 b=VTug05rAZUGlDGXmWbShRAhCfmrlpIcWtRzJwxl9wGQ+VbWdqrEabcaXAQv2XcvUKL
 1VBvkZFyCvSw+T9SqObdgTlVljbR1o5sqCZPGXMFh76s9tVpnXD6w1hSTn/CHt4KRyjZ
 2h+HhdZcGSaWXz/2PL43WrkFGmAdbZJP3cJAElK7nAaK8WgEN6qk7G5xgxNBzaKvQIAN
 dBrHSUzj3Np6RyjRPM5coxrj3LTYDx2kDOKRuAEhieK2J4qqeAxZufqnTwKSeROQZdRL
 HfOInD/ce8c8HVvlrmYN6hsmH8T7QbKjEBv4WARkBG1zmTJ65fHbjD0uHuMMx/5ugjmP
 AKXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=apPrD7wZh90jY/Np9SrQOOe7m/4eyMCS6fQyaQaa/T8=;
 b=OOs+DvDpgeXKUjUN8HnUKRtTclSW7In1QnnbysqwgpckYzXrXjD/QeJxQtoQl2lpzP
 W5qgO3OmbRutVVIwyb4hmaH5mHeRHoj0AVjtRkvjC3tNjwo7KV3LlGjaMzNAUcB25Cqp
 ZKdi2hMlrlFOxjRu/WliMPbghABaNmhSKL8ebo+aeQcgUorSBzW2kalqR39jSnCPTMfO
 uXAhHFmDG3OcrFEdFyRPS4C6ilRZ43/IG/hP4MDvD34rcseBPndpTCdddRgR0s1obLO/
 TB4NFa9D6MKfFp/kCBNUDiC7sboHNtmnroioTjhP027hCE63vEuqZkQg1gQ5N53Dt2tR
 /+qQ==
X-Gm-Message-State: APjAAAXqVYf8T5UmSb4Ta2LQJrssvlWcY+RsU79Iqbweb64TqF4kZ01N
 F2x4uPSZQzX90tFqe4HiF3o=
X-Google-Smtp-Source: APXvYqxsmUdbWOksoFfVNWJtGF2n5rhv+R5L27pihJEdGdWEyCmS4cxAwAeZJXQ9BYR2wi9jiprdwg==
X-Received: by 2002:aa7:9145:: with SMTP id 5mr34531817pfi.74.1580875021751;
 Tue, 04 Feb 2020 19:57:01 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 k1sm27143644pfg.66.2020.02.04.19.56.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 04 Feb 2020 19:57:00 -0800 (PST)
Subject: Re: [PATCH 1/2] staging: octeon: delete driver
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Matthew Wilcox <willy@infradead.org>
References: <20191210091509.3546251-1-gregkh@linuxfoundation.org>
 <6f934497-0635-7aa0-e7d5-ed2c4cc48d2d@roeck-us.net>
 <da150cdb160b5d1b58ad1ea2674cc93c1fc6aadc.camel@alliedtelesis.co.nz>
 <20200204070927.GA966981@kroah.com>
 <1a90dc4c62c482ed6a44de70962996b533d6f627.camel@alliedtelesis.co.nz>
 <20200204203116.GN8731@bombadil.infradead.org> <20200205033416.GT1778@kadam>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <a3032823-03a9-f018-73e4-eb0d71e0bb53@roeck-us.net>
Date: Tue, 4 Feb 2020 19:56:58 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200205033416.GT1778@kadam>
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
 "brandonbonaby94@gmail.com" <brandonbonaby94@gmail.com>,
 "bobdc9664@seznam.cz" <bobdc9664@seznam.cz>, "fw@strlen.de" <fw@strlen.de>,
 "paulburton@kernel.org" <paulburton@kernel.org>,
 "aaro.koskinen@iki.fi" <aaro.koskinen@iki.fi>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "yuehaibing@huawei.com" <yuehaibing@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ddaney@caviumnetworks.com" <ddaney@caviumnetworks.com>,
 "julia.lawall@lip6.fr" <julia.lawall@lip6.fr>,
 "sandro@volery.com" <sandro@volery.com>,
 Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
 "geert@linux-m68k.org" <geert@linux-m68k.org>,
 "ivalery111@gmail.com" <ivalery111@gmail.com>, "ynezz@true.cz" <ynezz@true.cz>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "wambui.karugax@gmail.com" <wambui.karugax@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2/4/20 7:34 PM, Dan Carpenter wrote:
> On Tue, Feb 04, 2020 at 12:31:16PM -0800, Matthew Wilcox wrote:
>> On Tue, Feb 04, 2020 at 08:06:14PM +0000, Chris Packham wrote:
>>> On Tue, 2020-02-04 at 07:09 +0000, gregkh@linuxfoundation.org wrote:
>>>> On Tue, Feb 04, 2020 at 04:02:15AM +0000, Chris Packham wrote:
>>> On Tue, 2020-02-04 at 10:21 +0300, Dan Carpenter wrote:
>>>> My advice is to delete all the COMPILE_TEST code.  That stuff was a
>>>> constant source of confusion and headaches.
>>>
>>> I was also going to suggest this. Since the COMPILE_TEST has been a
>>> source of trouble I was going to propose dropping the || COMPILE_TEST
>>> from the Kconfig for the octeon drivers.
>>
>> Not having it also causes problems.  I didn't originally add it for
>> shits and giggles.
> 
> I wonder if the kbuild bot does enough cross compile build testing these
> days to detect compile problems.  It might have improved to the point
> where COMPILE_TEST isn't required.
> 

Not really. Looking at the build failures in the mainline kernel right now:

Failed builds:
	alpha:allmodconfig
	arm:allmodconfig
	i386:allyesconfig
	i386:allmodconfig
	m68k:allmodconfig
	microblaze:mmu_defconfig
	mips:allmodconfig
	parisc:allmodconfig
	powerpc:allmodconfig
	s390:allmodconfig
	sparc64:allmodconfig

Many of those don't even _have_ specific configurations causing the build failures.

Guenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
