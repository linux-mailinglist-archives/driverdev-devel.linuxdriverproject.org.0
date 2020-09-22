Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2105F273D13
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Sep 2020 10:16:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 48357872A4;
	Tue, 22 Sep 2020 08:16:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dij6JrvLzhXg; Tue, 22 Sep 2020 08:16:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 73CEB87117;
	Tue, 22 Sep 2020 08:16:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 69F681BF271
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 08:16:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 667E887117
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 08:16:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T7-GfRUlOFRq for <devel@linuxdriverproject.org>;
 Tue, 22 Sep 2020 08:16:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9A20F8710E
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 08:16:17 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id g4so15990195wrs.5
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 01:16:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=aKRxZL4FGN5j/4WkJ9pynD3NUqlurooCForAs/j+ntg=;
 b=dmDw9QZtzmevLAins9hFvEC4NiX8Xs22crn3GDX855fYgxS+DwvN15/80NgKOmLAdv
 o30HhP+xH6uizb79qkXdUrkVRmuvgBH93Hknh3dBGT2IG2AVrDH/Oqb1OzY2g8WhhL/o
 X4r04M4SUNb9SoMJznOcJtkp1CRsQlQG+SFFdRCAd9sQbW9KbFkRKR9jgr6v3pUA+8R3
 lsZmOP230jBbi+gHRI1xP5RtBEn0mlEHwoNxNqwZTWL0RRtsMFZYphVQ+qX47K4kf4to
 BsBhOYdjiaV6bxdXcGuX56cv0322/21x2fhtpc2EOuVRsm6HoO7VtwUrEL1W/EMDs5Zj
 6/Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=aKRxZL4FGN5j/4WkJ9pynD3NUqlurooCForAs/j+ntg=;
 b=lzWZ9HZ/UBgaLkMsIwB/lyLd4yHEVeOjsK/AFvPszytbiURO7r0KUX8QyRc4nkkcnE
 XhwAsZ7aUjn4KnsbDrz71DIkZylBNGVCThGggGJPfj3DwQlfrMXRPYfwxBeoQBt8hdAu
 xkXNpZX0bum++KE4Mlu5N5cTOIIIqONymoNmuYGcZyT6AgLid57qiQC3MU5tF8GZc5vE
 pRcygRCrwR/O/qSiXB4q4egXR6dya+BkGP04VCpnWlaGzwUqXLblT2ALjlpaMUNmKDEw
 xOuXKHqNyh8lMFZ/KPrREVjijbG6H8emKeg1nFzLOWxEPjkN3ZberZBqL+I6dKx+I+q4
 /PrQ==
X-Gm-Message-State: AOAM533scxkl/jEveI7TLvCDW6hRCnv3aK4Tquod0+4nMsGRk5u21fDh
 KD6e2BgoH6k4OkbGUNeqrGM=
X-Google-Smtp-Source: ABdhPJxRolYELjQplUMesH1+RAkghTXRZcshi7uZA4CNsT8JzclYHqmvQmiEn/M9dR8aCWrWQmvlgw==
X-Received: by 2002:a5d:680b:: with SMTP id w11mr4182872wru.73.1600762576158; 
 Tue, 22 Sep 2020 01:16:16 -0700 (PDT)
Received: from [192.168.0.64]
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id j14sm25702629wrr.66.2020.09.22.01.16.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Sep 2020 01:16:15 -0700 (PDT)
Subject: Re: [PATCH RESEND 0/5] atomisp: Fixes and cleanups
To: Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20200921215359.45003-1-alex.dewar90@gmail.com>
 <20200922101143.28779711@coco.lan>
From: Alex Dewar <alex.dewar90@gmail.com>
Message-ID: <21f18dc2-a1bc-0a37-0336-fc35170a40e9@gmail.com>
Date: Tue, 22 Sep 2020 09:16:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200922101143.28779711@coco.lan>
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
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Alan Cox <alan@linux.intel.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 22/09/2020 09:11, Mauro Carvalho Chehab wrote:
> Em Mon, 21 Sep 2020 22:53:49 +0100
> Alex Dewar <alex.dewar90@gmail.com> escreveu:
>
>> Hi Mauro,
>>
>> Over the last month I've sent a few scattered patches to fix various
>> warnings from static analysers, but they seem to have fallen through the
>> cracks? I'm reposting them here as a series to make them easier to
>> review. If you do have any feedback that'd be great :)
> Usually, there's no need to re-send the patches, as we pick them
> from a patchwork queue.
>
> However, only one of the patches actually applied against the
> linux-media tree.
>
> So, please rebased the remaining patches on the top of it.
>
> Thanks,
> Mauro
That's weird. They applied cleanly against yesterday's linux-next for 
me... I'll rebase on linux-media and resend.

Best,
Alex
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
