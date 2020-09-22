Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC93274050
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Sep 2020 13:02:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 05D6C866B6;
	Tue, 22 Sep 2020 11:02:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UdtZR-4qc+ED; Tue, 22 Sep 2020 11:02:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E8ABD8664C;
	Tue, 22 Sep 2020 11:02:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 28A371BF255
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 11:02:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2528185C94
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 11:02:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7YLz4qtgOSsx for <devel@linuxdriverproject.org>;
 Tue, 22 Sep 2020 11:02:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D881985BCD
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 11:02:38 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id v12so1056667wmh.3
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 04:02:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=QP7D4zsS7srJZeKE4h7PMo3PEFbsrs5XuKLoWtHlLfQ=;
 b=Umn46go7btEmLeJcyiwsP02dYQUWvorQNa1lYDjJe5hLI8gBjUXG99anKJIZ8KW1oO
 aWnS2IwBNxRgDc4BdFsb/2bzZxWIaDPdYHe+YEhjSVZdBOCpqyxoVj5BQSwbKIHZ/0E+
 Fg/bG5+dMDlnqMiui80vfu6VAYwn8rlfvTnmganxFWap07IU5RqfIrTYneIe0ybsaJib
 TJ/gUnPvxeHP7oFVD5NhWxX0YZI8arEDT5jCtmKbw0sUUkSF7E73qgspyakaSXtNQvRk
 KUSCd/VJelPux235gIzr9NJbR5LMuf7fWrTqH9IE0cZH1BY6e/hal929kqGCd89sRJRo
 Htjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=QP7D4zsS7srJZeKE4h7PMo3PEFbsrs5XuKLoWtHlLfQ=;
 b=Q3+VxBY7/spnKM6nZ/c8ePgyl16g1Btq3ndPv/vYl9o/jmdi5qenGEa+3WCf8L7c29
 qLByYTFhIRbbvxOkz1gIWz1vUVNNuOr1MhVfEFv6nsvNPEfqzoUviOqVEBv3AGWi9Tni
 evDPanCIBbmLo2X2sgHu8SQkg5EjAVnDSW+a656u45gwEr/fYZOiUedtZ3Fp8t0kWVvT
 wnOnjl0tK32LubsHUXHFUBA9zrviC4Zy6xz/brWdl02yR1+38/FPpDMARnUb6AAW4Lgg
 rClQnAvApbPwj9CUeQi962viVFacXH3W00qiNErotlptv4OkDpHbqKTqLJo0nhFyuN31
 Ls9A==
X-Gm-Message-State: AOAM533DBItpwpg26Yp6nkNXsIgN3y2tFj2AUyIfqAYYM6BpUVkv1CrU
 ZVoBTC1r/ptnQgs84OjbBfg=
X-Google-Smtp-Source: ABdhPJxbDGZ7wRBP0AB2A1GN813fNw8J3KclOaZ5ZRBtp53WAU1Vt4G/tAmks/ybFJcR4iJO8U0C5w==
X-Received: by 2002:a1c:b388:: with SMTP id c130mr356538wmf.175.1600772557222; 
 Tue, 22 Sep 2020 04:02:37 -0700 (PDT)
Received: from [192.168.0.64]
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id a83sm4085301wmh.48.2020.09.22.04.02.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Sep 2020 04:02:36 -0700 (PDT)
Subject: Re: [PATCH REBASE 0/3] atomisp: Rebased fixes
To: Mauro Carvalho Chehab <mchehab@kernel.org>
References: <21f18dc2-a1bc-0a37-0336-fc35170a40e9@gmail.com>
 <20200922090914.20702-1-alex.dewar90@gmail.com>
 <20200922112729.313d454d@coco.lan>
From: Alex Dewar <alex.dewar90@gmail.com>
Message-ID: <f14fac45-d713-a6ee-f0be-906a6d971b43@gmail.com>
Date: Tue, 22 Sep 2020 12:02:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200922112729.313d454d@coco.lan>
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
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Alan Cox <alan@linux.intel.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 22/09/2020 10:27, Mauro Carvalho Chehab wrote:
> Em Tue, 22 Sep 2020 10:09:07 +0100
> Alex Dewar <alex.dewar90@gmail.com> escreveu:
>
>> Hi Mauro,
>>
>> I've rebased the patches now, but there is a slight hiccup. For patches 2
>> and 3 of this series there will now be a conflict with commit 9289cdf39992
>> ("staging: media: atomisp: Convert to GPIO descriptors") in Greg's tree.
>>
>> I'm not sure what the best way to handle this is? The merge conflicts
>> will be trivial (due to a conversion between the gpio_* and gpiod_*
>> APIs), but I could alternatively send these last two patches in via
>> Greg's tree if that's easier for people. Let me know what works.
> Maybe the best would be to re-send those after the merge window, when
> both patches will arrive upstream.
>
> Thanks,
> Mauro
That sounds more sensible. I've also just noticed that I introduced a 
bug in the first patch when rebasing it :-/, so let's hold off on the 
whole series and I'll do a proper tidy and resend after the next merge 
window.

Best,
Alex
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
