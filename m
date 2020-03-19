Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4C918B966
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Mar 2020 15:31:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 63ED6204EA;
	Thu, 19 Mar 2020 14:31:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DE-j-8ZofnVs; Thu, 19 Mar 2020 14:31:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9432F228BA;
	Thu, 19 Mar 2020 14:31:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7DEE11BF3EE
 for <devel@linuxdriverproject.org>; Thu, 19 Mar 2020 14:31:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7AE5787EAD
 for <devel@linuxdriverproject.org>; Thu, 19 Mar 2020 14:31:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f09enEfeUH9F for <devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 14:31:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 91A7087DA2
 for <devel@driverdev.osuosl.org>; Thu, 19 Mar 2020 14:31:08 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id i26so1917800qtq.8
 for <devel@driverdev.osuosl.org>; Thu, 19 Mar 2020 07:31:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=XRSQwj1UAGfFwFNmHluoDtjjlKsZS6P7Rnz6LpsU95A=;
 b=SGIMX3xHO84a004q/8VkTuoMsggJuvBD/A86+Wrv4Mx0tgVtSuPjzWiXEaN6Bn5A/T
 mhqZuHlelAFqHD344f+dp3W3OXBw2enGfraRIOrLUnRmUFyD9YRuwYnPentZsckbWEVY
 UjCXcbuYWNoDspHpGdf1ofausJcngrFvLZUJdgLmo7FRgn0+IuMgVLmxYJ8qBMtBAXTW
 FsXX/qtGVT5W8Be8ffdP1UA6HwSt107yzqEtexbmcBWZ+cNGz0k00eHhBE8+gPhFAjBJ
 gJ4IfjvDLPIaxehBiYmAPQWvpFS19gwvEkh1vEZTmyG+K/20jNuENlLbOnF2+cSF+JHW
 gNxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=XRSQwj1UAGfFwFNmHluoDtjjlKsZS6P7Rnz6LpsU95A=;
 b=A8aSBrwZyPKek4pzTrq1eEEv6QpnilQ1LspYE/93uFv34vl1lGD7dV7AydkWnjgTYV
 HiiGAfXr9XyCcRfXHHHzC4NR7XJHkg56AjsQ+JdVMCMse9ynbVFBqtCoGovfRVsgYTSn
 FUUJR2H7lqXwEw8N2HUASIR/vLlNc8BQ4KDjMtRIgiYh/RkIzicIBXgnH15/OJ0a8I3i
 tuTEMsbyCXbUn+iT+wIEHL45FpVt1k6HZyZ5b6BBHhHXun2Mwj6HwHWhMGv7dTNGa5lW
 /k7FT3s0aXOcjq/1Mus+0vXX0Rc4tts5NXdGresDDK2A9eWtOFD1Ea16FJSEicFYFj4B
 mMCA==
X-Gm-Message-State: ANhLgQ1oymLa/NAdDM5GiQkCOzf40LS9DZNP6izDTD/A7ybVgMNxlf4w
 5FBZqVJYLZ7mqz2y+zZby9DVIaNf
X-Google-Smtp-Source: ADFU+vuz+JajNyDzvlFJSq2zZNG5rNyxGSMccLcMGESj4RT4NteSECL7k1rp9JDXOopOGtlPP713Mw==
X-Received: by 2002:ac8:4cdc:: with SMTP id l28mr3212774qtv.248.1584628266764; 
 Thu, 19 Mar 2020 07:31:06 -0700 (PDT)
Received: from localhost.localdomain ([198.52.167.216])
 by smtp.gmail.com with ESMTPSA id l22sm1670368qkj.120.2020.03.19.07.31.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Mar 2020 07:31:06 -0700 (PDT)
Subject: Re: [PATCH] staging: exfat: Fix checkpatch.pl camelcase issues
To: Greg KH <gregkh@linuxfoundation.org>
References: <20200319140647.3926-1-aravind.pub@gmail.com>
 <20200319141243.GA30888@kroah.com>
From: Aravind Ceyardass <aravind.pub@gmail.com>
Message-ID: <1fed9204-59fb-8a1e-5adf-28183b3651e4@gmail.com>
Date: Thu, 19 Mar 2020 10:31:05 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200319141243.GA30888@kroah.com>
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
Cc: linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 valdis.kletnieks@vt.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 3/19/20 10:12 AM, Greg KH wrote:
> On Thu, Mar 19, 2020 at 10:06:47AM -0400, Aravind Ceyardass wrote:
>> Fix ffsCamelCase function names and mixed case enums
>>
>> Signed-off-by: Aravind Ceyardass <aravind.pub@gmail.com>
>> ---
>>  drivers/staging/exfat/TODO          |   1 -
>>  drivers/staging/exfat/exfat.h       |  12 +-
>>  drivers/staging/exfat/exfat_super.c | 222 ++++++++++++++--------------
>>  3 files changed, 117 insertions(+), 118 deletions(-)
> 
> These files are not in linux-next, or in my tree, anymore.
> 
> Please always work against the latest development tree so you do not
> waste duplicated effort.
> 
> thanks,
> 
> greg k-h
> 

As a very beginner, I used the staging(git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git) tree based on what I read on kernelnewbies.org

What tree or branch should I use instead?

Thanks

Aravind
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
