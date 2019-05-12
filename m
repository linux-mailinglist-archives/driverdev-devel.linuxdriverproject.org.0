Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 107BB1ACD7
	for <lists+driverdev-devel@lfdr.de>; Sun, 12 May 2019 17:48:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E40F12284A;
	Sun, 12 May 2019 15:48:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WSsMcogvc7IX; Sun, 12 May 2019 15:48:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 74F1722643;
	Sun, 12 May 2019 15:48:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 377081BF3EF
 for <devel@linuxdriverproject.org>; Sun, 12 May 2019 15:48:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2EB392262F
 for <devel@linuxdriverproject.org>; Sun, 12 May 2019 15:48:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GDFATsz2OMTF for <devel@linuxdriverproject.org>;
 Sun, 12 May 2019 15:48:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 42E2F2107D
 for <devel@driverdev.osuosl.org>; Sun, 12 May 2019 15:48:13 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id w22so5437444pgi.6
 for <devel@driverdev.osuosl.org>; Sun, 12 May 2019 08:48:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=BA1Za5U5KfZQk8wsu+NsfRi5EQ03hIXikx32Ckah2CA=;
 b=OwdFa64IwXEmKAs9iKguG8rFcoiTqvLtuYUiFfcpnpe7dH2fbJjeSllNKGvgjqDa4m
 AfOKVUGeTvRLfBavE24rlBkDjTDCxn/elgisyywjwK3sFNfO+RVus0RLTrKZSO/y7b8X
 AFnmu/v0o8jtepmbmY5fwF+FErBNYKfQCVc2LHq3RRtjRaxg/Psi7wC90uTgoNzLlgtS
 1Xe756Zwb3QAQX8Ztx9m6/SJM2lfMivU3Xhwt956by7sB1rDPtc0HmVm304cBNLB77ir
 3cIFMmwpGz1dzS53NPAjLUj6CPQ/aU6NUBL9r6fy89eoITLoTtRKNrsPoKHO1SpxMmgn
 8T1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=BA1Za5U5KfZQk8wsu+NsfRi5EQ03hIXikx32Ckah2CA=;
 b=OlN/WPWImFEHSZLEpZzFXG8hnRLZiptGMIXkcv/0eZRY/J3CGR5sZcAfpMTDmRU3In
 H299jWvSmBT45m/pPaxOm4zc4WkJhlWwGBkq1kthpGM3Xw69tLqJOQf4BglIkT/27DII
 68yWBGAmuQoOpwQpamMUH0FMsH9rbvabXQfeERsw3X3pMv3zhcj3wSPBjg1/0qvY0uod
 VXpn+/zWZnqRFNyrzJxsjlrWKzikjTXjv3u0AHK0eQ1N+g+6oNrUS0rw6axZr8HQP9vW
 ltQPLZftEqRHh9XUP/UFJYweVJ3D6r4j97OPRUNJ2Q6KtlN8hQvhDUTrUgclhiDwx0j7
 1QVA==
X-Gm-Message-State: APjAAAXR2UjqXTQzOrGyGrG37LixkMsU3zmIli5dFCkUKs6DbkinnP09
 a0EXJna04nKSH2LVY9Q+59SOh40KyNo=
X-Google-Smtp-Source: APXvYqzt4SsMDZGm8d53Kdhe9kvMQxysA5Ld5CIf2/FlU1iEKljoQ0ic8+y2o2XJFiMV2AtpTYohfg==
X-Received: by 2002:a62:4ed8:: with SMTP id
 c207mr28513808pfb.241.1557676092441; 
 Sun, 12 May 2019 08:48:12 -0700 (PDT)
Received: from [192.168.1.7] ([117.241.202.125])
 by smtp.gmail.com with ESMTPSA id e14sm7947489pff.60.2019.05.12.08.48.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 08:48:11 -0700 (PDT)
Subject: Re: [Linux-kernel-mentees] [PATCH] Staging: kpc2000: kpc_dma: resolve
 checkpath errors and warnings
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
References: <20190510193833.1051-1-bnvandana@gmail.com>
 <CAKXUXMzJCmSZqJ+VFxEOgf_HNgKfPfKS7OECw_RzSxVrDZpCGw@mail.gmail.com>
From: Vandana BN <bnvandana@gmail.com>
Message-ID: <311fb622-b6ea-f580-df55-c26c24823ef5@gmail.com>
Date: Sun, 12 May 2019 21:18:07 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAKXUXMzJCmSZqJ+VFxEOgf_HNgKfPfKS7OECw_RzSxVrDZpCGw@mail.gmail.com>
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
 linux-kernel-mentees@lists.linuxfoundation.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


On 11/05/19 2:04 AM, Lukas Bulwahn wrote:
> On Fri, May 10, 2019 at 9:39 PM Vandana BN <bnvandana@gmail.com> wrote:
>> This patch resolves coding style errors and warnings reported by chechpatch
>>
> I did not look at the patch in detail, but you might want to also
> consider to replace the CamlCase (function) names by names in
> lower-case with underscores. That is the common style in the kernel.
>
> Lukas

With this path I wanted to fix Error and warning reported by checkpatch.pl

Is it ok if i do CamlCase fixes as separate patch than this ?

thanks,

Vandana.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
