Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB4D289EF0
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Oct 2020 09:29:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D51A58704F;
	Sat, 10 Oct 2020 07:29:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kuB6tf3ahKXm; Sat, 10 Oct 2020 07:29:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B18C686B72;
	Sat, 10 Oct 2020 07:29:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F03EC1BF425
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 07:29:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D7FAA2040B
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 07:29:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LOQxLSipfkCR for <devel@linuxdriverproject.org>;
 Sat, 10 Oct 2020 07:29:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 546D0203A5
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 07:29:18 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id 132so2246362pfz.5
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 00:29:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=CGaRnUXGGA+4gEMvMrlGGBPIeMqxnDwVXY+Ah17vxLA=;
 b=TSsTJ3I9KNL0rzGvFXhmgm94hUPSSolCBOZL/c4RsSJyDJ98vRHs0GdqhE/5ysb4Sg
 AX/sKGh4Yg6Ks8nVJUwmw5T9SezcRS3UdxShu1RtZ+pGGgApolzPGfmE2lhdEA2TryFw
 ItgX9zItj8vCfpuimo2pya/8cTwunHDyizE5JgqArjRI5PJBS3O59IHARlv3OUus4+we
 Ju8y0cnJFWbX2RQED4/I0BrgSp2woqmcAMJuEENUEZX8LDxlnX0QPYkKA07iYCPl8DuG
 97wP3tVjff3EJFllm02TQlnLTQi+xgBkrqVRs0v5ZCwDg6BYz49oIPNfGBTLkHWNngMZ
 EboQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=CGaRnUXGGA+4gEMvMrlGGBPIeMqxnDwVXY+Ah17vxLA=;
 b=IGV+ZckcXiMfpKfyF/9rMMMugw4jZXQPUYYiRpP52ohr2ibfYWHjYB1rsorvm0hLgY
 u31xWSC1AmSps+I13f4xawp2IMc5xNeKCxiikSqqgLews/hZGs5wojv/sixyAIQcCzmm
 YdVxmmnEFCscEizRUXIx6c1V+ZmpbvO4r83ZqW5AGFUSAY6jFLGW0Bgnb++jH6LNSVCU
 2QC1gPEhVt3OXI6X3b5WvMTZPglzVC9h00UQ/dr/Byftn8YiffObwEJDVq3D5CuZj3WF
 DDl/MvKV09EydnZRxeVEb7f2sWC4XO/5f6SUVhu2Ouxkuxn2uou1hg9uCGAmAwejoWjI
 x4Ww==
X-Gm-Message-State: AOAM533YCl0Bvd8d8izd4fpUXVdzdvGl320JtbFhbyFsAcIfp1/cJoFd
 uwMR4kVaNk+eQ/5KHsD+Yq4=
X-Google-Smtp-Source: ABdhPJwlXmxcTfrJh3wNGrdy2Xxb8lFF+gr6n/eqqGy4Q1xdCUefYbC8xcsMrs12A9H+atR+fNX8zQ==
X-Received: by 2002:aa7:98ce:0:b029:152:5ebd:428 with SMTP id
 e14-20020aa798ce0000b02901525ebd0428mr15174034pfm.4.1602314957423; 
 Sat, 10 Oct 2020 00:29:17 -0700 (PDT)
Received: from [192.168.0.104] ([49.207.200.2])
 by smtp.gmail.com with ESMTPSA id m6sm13766634pjn.47.2020.10.10.00.29.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 10 Oct 2020 00:29:16 -0700 (PDT)
Subject: Re: [PATCH] staging: comedi: check validity of wMaxPacketSize of usb
 endpoints found
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20201009162030.293781-1-anant.thazhemadam@gmail.com>
 <20201010070007.GB132110@kroah.com>
From: Anant Thazhemadam <anant.thazhemadam@gmail.com>
Message-ID: <b84879e9-425e-6354-d21a-cd7c5d237be5@gmail.com>
Date: Sat, 10 Oct 2020 07:29:13 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201010070007.GB132110@kroah.com>
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
Cc: devel@driverdev.osuosl.org,
 syzbot+009f546aa1370056b1c2@syzkaller.appspotmail.com,
 Ian Abbott <abbotti@mev.co.uk>, linux-kernel-mentees@lists.linuxfoundation.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

On 10-10-2020 12:30, Greg Kroah-Hartman wrote:
> On Fri, Oct 09, 2020 at 09:50:29PM +0530, Anant Thazhemadam wrote:
>> While finding usb endpoints in vmk80xx_find_usb_endpoints(), check if 
>> wMaxPacketSize = 0 for the endpoints found.
>>
>> Some devices have isochronous endpoints that have wMaxPacketSize = 0
>> (as required by the USB-2 spec).
>> However, since this doesn't apply here, wMaxPacketSize = 0 can be
>> considered to be invalid.
>>
>> Reported-by: syzbot+009f546aa1370056b1c2@syzkaller.appspotmail.com
>> Tested-by: syzbot+009f546aa1370056b1c2@syzkaller.appspotmail.com
>> Signed-off-by: Anant Thazhemadam <anant.thazhemadam@gmail.com>
>> ---
> You sent 2 patches with the same subject, which one is the "latest" one?

This patch (that you have replied to) is the "latest" one.

> Please always version your patches and put below the --- line what
> changed from the previous version, so that maintainers have a chance to
> know which to accept...

The other patch (with the same subject line) wasn't supposed to be sent out.
I realized there was a coding style error in that while sending, and cancelled
sending it, but it got sent nonetheless.
I would have included a v2 tag in this patch itself, but I didn't realize that the
previous one got sent until afterwards. :(
I'm sorry for that.

> Can you fix this up and send a v3?

Shouldn't I resend this patch as a v2 instead? Since there wouldn't be any
changes from v2 (this patch) to v3 otherwise (unless of course, somebody could
suggest some more changes that could be made to this patch itself).

Thanks,
Anant




_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
