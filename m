Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D81622D7CD
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Jul 2020 15:02:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3A418869D9;
	Sat, 25 Jul 2020 13:02:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EpwBuPKc8bg3; Sat, 25 Jul 2020 13:02:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E202F869D0;
	Sat, 25 Jul 2020 13:02:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2117C1BF36C
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 13:02:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1946B89356
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 13:02:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OAInMN3gDhAQ for <devel@linuxdriverproject.org>;
 Sat, 25 Jul 2020 13:02:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 43F29888B3
 for <devel@driverdev.osuosl.org>; Sat, 25 Jul 2020 13:02:49 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id u5so6712954pfn.7
 for <devel@driverdev.osuosl.org>; Sat, 25 Jul 2020 06:02:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+lT1b8FHzn13Ortp4emIfBhBIZYZ4Hm4WQjsh8eooy8=;
 b=RDnBclCSUxks3lRF+bnx+3HNF7fihYPbXBmZrmfe3VxrGQtfKhYuskBBUtWI/C0LOh
 8uSFRXdDYnmEOCdHi7p7HeGxV3eukpvGr8+czRADYxMBRwZBPG/ZDdKdfK3fyr00awHM
 7Njh//26eBG1lYqxat2x5xFKgUC14Di2dQ6CVYKlbH4Bz8TKp0NNw5d7q2ls4u9GwYgV
 R6/bFEdyUGL1L8wJA3XGrl/QrTIZNH100yrJOi03ULsYQKTzOhgR6gxqwpmg1LihG84T
 N4xBdFD9OIfUk563skj9ciedYzzFaXQkvHO7LU7MR5Xm1CEvsl6u226l/+QOlFTWpnL4
 j2EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+lT1b8FHzn13Ortp4emIfBhBIZYZ4Hm4WQjsh8eooy8=;
 b=e0ZcXRpCVNNlMccfbnXO+vStklc/TEatn/jDRljmctuoNAeCAfsH3lZoIfFbHJTs3F
 rKUZFatOnxBY6ETB8mDrvDChHN8WuyGs3C0jdhWULhhypuTX/BP5ABPUO8yz9goY3//a
 MzG5fjFBWn7bz3MmtRlDaWZwr2CSp/B0pwNRc7a7CuIxcEFKg4fCFl0YgW2nFUJfDih3
 M/6DKgKu/OFSL3OoZsHWhEBsVdRD3Fn+ju4Iquh64w8/08t0c4lytuDEzHFyf8IgLWLu
 4UB+8SaMxXdULSbM5VG+y6HWZU7bbK9vEhmefutov/sZ8g7uYwjuZkRb5xZa9BrlKy4o
 lSdg==
X-Gm-Message-State: AOAM531nz9UkgV8xt6XyDyEAvXRLzlE9HS2Ec8yJQoyadYDKqmio/plW
 sXRnhhDSXYH0vH/GHjOfvcg=
X-Google-Smtp-Source: ABdhPJxcFg74YhKDZYnajXwmmWmMExVaeAcdT15zlytdc3/9JmAA6JvNbgwNXepq2MRbodRvUQCXZw==
X-Received: by 2002:a62:1782:: with SMTP id 124mr12553011pfx.204.1595682168708; 
 Sat, 25 Jul 2020 06:02:48 -0700 (PDT)
Received: from [192.168.0.109] ([1.186.115.27])
 by smtp.gmail.com with ESMTPSA id p187sm9044294pfb.22.2020.07.25.06.02.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 25 Jul 2020 06:02:47 -0700 (PDT)
Subject: Re: [PATCH v4] staging: nvec: change usage of slave to secondary
To: =?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>
References: <20200724043633.7755-1-bharadwaj.rohit8@gmail.com>
 <20200725062938.15388-1-bharadwaj.rohit8@gmail.com>
 <20200725120146.GB26689@qmqm.qmqm.pl>
 <5597e949-b93c-9133-efdb-9714637f9ebc@gmail.com>
 <20200725125054.GB18633@qmqm.qmqm.pl>
From: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
Message-ID: <1a717bdc-a321-04a8-0a0e-3cff887ff380@gmail.com>
Date: Sat, 25 Jul 2020 18:32:42 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200725125054.GB18633@qmqm.qmqm.pl>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 Dan Carpenter <dan.carpenter@oracle.com>, p.zabel@pengutronix.de,
 linux-tegra@vger.kernel.org, ac100@lists.launchpad.net
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 25/07/20 6:20 pm, Micha=B3 Miros=B3aw wrote:
> On Sat, Jul 25, 2020 at 06:01:19PM +0530, Rohit K Bharadwaj wrote:
>> On 25/07/20 5:31 pm, Micha=B3 Miros=B3aw wrote:
>>> On Sat, Jul 25, 2020 at 11:59:39AM +0530, Rohit K Bharadwaj wrote:
>>>> changed usage of slave (which is deprecated) to secondary without brea=
king the driver
>>>
>>> The relevant I2C and SMBus standards use master/slave terminology. Why =
are
>>> you changing the names to something unfamiliar?
>>>
>>> If the reason are the recent coding-style changes, then please note they
>>> are about avoiding introducing *NEW* uses of the specific words and not
>>> about blindly replacing existing occurrences.
>>
>> I'm really sorry sir, I didn't knew about this, yes the reason for my ch=
ange is according to the script checkpatch.pl to suit the coding style, I w=
ould try to fix some other coding style related issues if this patch seems =
to be a bad idea.
> =

> I didn't know checkpatch does this (it doesn't in current Linus' master
> tree).  I can see there is a commit in next adding this, but seems that
> it uses a test far from the original coding-style wording...
> =

> Best Regards
> Micha=B3=A0Miros=B3aw
> =

yes sir, in the linux-next tree, when I ran the script on this file it show=
ed me it had style issues and the usage of slave is deprecated and it sugge=
sted me to replace it with secondary or target. and hence I made this patch=
, please do let me know if this patch can be acceptable or not.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
