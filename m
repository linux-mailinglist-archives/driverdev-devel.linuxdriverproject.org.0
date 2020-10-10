Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4FD289F55
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Oct 2020 10:26:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D18A787152;
	Sat, 10 Oct 2020 08:26:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IAeDq03AKTCy; Sat, 10 Oct 2020 08:26:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1A2F987078;
	Sat, 10 Oct 2020 08:26:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3BB951BF30D
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 08:26:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3496787773
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 08:26:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id udUGn5v2aTso for <devel@linuxdriverproject.org>;
 Sat, 10 Oct 2020 08:26:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 713218776E
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 08:26:33 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id p11so5674079pld.5
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 01:26:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=dr5qY8NyHjVYH13UhDsjPOas2xGcDA+M5geFB4xe7/8=;
 b=i4JuzuCUv9W34k/rlxlw+/z5GmaiprqIaJcQgDzpAaos3Y7kpGKh1+OwC6XnNeKCe7
 QeItm+DczVgCcOkW5fZY6aCQ4S94F3jQfywY+CL2PKof+ro8UVsBMHex9xU02FliTBAK
 PpH5PPFrJRGd6nkhPCrlCNNK5jqsfchhQMxyvNHDQNWIDrpQfdFIJ56wAiVJ+HCW0IC2
 qZBLbXR3lL7nS79Qr9qAI8i2S6bJk08wor+uD1coQ3gc4XtqmZA6fX7ieOtsWZsk1Gpb
 BVtdUWOWBuN9xsKDM73llWrYrUSWWuPgJOGENL7thsbmkAOZrynDiRikfuFtptR245Ca
 cMQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=dr5qY8NyHjVYH13UhDsjPOas2xGcDA+M5geFB4xe7/8=;
 b=gvwFvom/h7F6pjWQxfPoScAi7fRAsCx5BaKFni2MoBZZNQrGzxceRiVW+9dddp7bZw
 NnhIGw8UNkgOie7+jqWVsUyCqHNVt2lM8U4E8RLzxUBOrAvYB58OvH4k9wx5s2m4xDfj
 ukJturSoO+gM/PJeHrqPeKACSkZh88NnLYEPy9s+wfhkDX+QJirjnHGio+0N0DeQBM5U
 WeIYUSArYBwbFcSiioudM7luKtDPh2ezrL5HYb2ytJfxYvTpr0PP1luwxJ9iPHrWUViz
 8VWTr6GqTUNTIgkrVMUEBZ7/A+difg9TTbgKdVu60+RNhIBzCoYt5mC9J36QJ0gvYykh
 qddg==
X-Gm-Message-State: AOAM530dwBFh/NT4S61C0ZmWh5DmJL8p36PbUilt7CaV2LXWEL1cVELm
 gFRe9/A0vSeqarG3LsET5YY=
X-Google-Smtp-Source: ABdhPJzYMoq3NBhxi7krevICequtWJEfWgUgrtHrAsDTen8PZkYoq9k8IB4yxGcw4QJ+afcOnH6Fnw==
X-Received: by 2002:a17:902:7001:b029:d3:f0d8:d271 with SMTP id
 y1-20020a1709027001b02900d3f0d8d271mr15533920plk.48.1602318392700; 
 Sat, 10 Oct 2020 01:26:32 -0700 (PDT)
Received: from [192.168.0.104] ([49.207.200.2])
 by smtp.gmail.com with ESMTPSA id w135sm3681015pfc.103.2020.10.10.01.26.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 10 Oct 2020 01:26:31 -0700 (PDT)
Subject: Re: [PATCH] staging: comedi: check validity of wMaxPacketSize of usb
 endpoints found
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20201009162030.293781-1-anant.thazhemadam@gmail.com>
 <20201010070007.GB132110@kroah.com>
 <b84879e9-425e-6354-d21a-cd7c5d237be5@gmail.com>
 <20201010080904.GA140279@kroah.com>
From: Anant Thazhemadam <anant.thazhemadam@gmail.com>
Message-ID: <0abda8b5-a05c-814f-6230-c88e81d5a3d0@gmail.com>
Date: Sat, 10 Oct 2020 13:56:27 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201010080904.GA140279@kroah.com>
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


On 10/10/20 1:39 pm, Greg Kroah-Hartman wrote:
> On Sat, Oct 10, 2020 at 07:29:13AM +0530, Anant Thazhemadam wrote:
>> Hi,
>>
>> On 10-10-2020 12:30, Greg Kroah-Hartman wrote:
>>> On Fri, Oct 09, 2020 at 09:50:29PM +0530, Anant Thazhemadam wrote:
>>>> While finding usb endpoints in vmk80xx_find_usb_endpoints(), check if 
>>>> wMaxPacketSize = 0 for the endpoints found.
>>>>
>>>> Some devices have isochronous endpoints that have wMaxPacketSize = 0
>>>> (as required by the USB-2 spec).
>>>> However, since this doesn't apply here, wMaxPacketSize = 0 can be
>>>> considered to be invalid.
>>>>
>>>> Reported-by: syzbot+009f546aa1370056b1c2@syzkaller.appspotmail.com
>>>> Tested-by: syzbot+009f546aa1370056b1c2@syzkaller.appspotmail.com
>>>> Signed-off-by: Anant Thazhemadam <anant.thazhemadam@gmail.com>
>>>> ---
>>> You sent 2 patches with the same subject, which one is the "latest" one?
>> This patch (that you have replied to) is the "latest" one.
>>
>>> Please always version your patches and put below the --- line what
>>> changed from the previous version, so that maintainers have a chance to
>>> know which to accept...
>> The other patch (with the same subject line) wasn't supposed to be sent out.
>> I realized there was a coding style error in that while sending, and cancelled
>> sending it, but it got sent nonetheless.
>> I would have included a v2 tag in this patch itself, but I didn't realize that the
>> previous one got sent until afterwards. :(
>> I'm sorry for that.
>>
>>> Can you fix this up and send a v3?
>> Shouldn't I resend this patch as a v2 instead? Since there wouldn't be any
>> changes from v2 (this patch) to v3 otherwise (unless of course, somebody could
>> suggest some more changes that could be made to this patch itself).
> The change would be that you are correctly listing the version
> information, so it would be v3 :)
>
Understood, thank you. I will send in a v3 as advised. :)

Thanks,
Anant

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
