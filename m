Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BA81E9993
	for <lists+driverdev-devel@lfdr.de>; Sun, 31 May 2020 19:44:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7666D8699B;
	Sun, 31 May 2020 17:44:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rhlpuLCfjBx0; Sun, 31 May 2020 17:44:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8162781134;
	Sun, 31 May 2020 17:44:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 886191BF3BD
 for <devel@linuxdriverproject.org>; Sun, 31 May 2020 17:44:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8513F81134
 for <devel@linuxdriverproject.org>; Sun, 31 May 2020 17:44:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ktwl3n1Z3Ou8 for <devel@linuxdriverproject.org>;
 Sun, 31 May 2020 17:44:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 93C9B86767
 for <devel@driverdev.osuosl.org>; Sun, 31 May 2020 17:44:32 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id 9so3848546ljc.8
 for <devel@driverdev.osuosl.org>; Sun, 31 May 2020 10:44:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=2RMIV7m/Lpx/3Cc5jgcmhOCjHtYKoVJK72f4lQdlYTE=;
 b=qVzRun+Gv8KCaQjsJR4wIt57gzuhGj6TiqE5gakAl/pLFcwKNrCO4We/EAwcRPGYT5
 ZXEa/vsTlJzY7i2PmOOMDPASffsTfz1o8Y2EO5Kj7OYqafl4RMzGr0EZmnALMWaRrrix
 x4B3BKpYZUUc6SqEwOpMf3fEHCquetz9FN5eyl2igdTs+IpcF9pKXy8whjxOX69WiRMR
 SbZLl8hnQA+msMxFIcZwORvg/lIZbnM4O4ubIo3V9rAjVsbtuZ/JIUW/LuDqT/YEtDvu
 A8jwG1CHoC09UJ67a40SwL11xWShTPFFh6KqLQHbEVk7nsmzesIyijcjQDh0Y0KOWuWj
 KmQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2RMIV7m/Lpx/3Cc5jgcmhOCjHtYKoVJK72f4lQdlYTE=;
 b=cLjjoZxxhH2Yw4GVrUthlkzbOH+PWnLAVQrPTi+LW9V14f0rdN62E1ZqsCkbDu0nK3
 37FTMVFHDGuhqDX1fudtL755SlULi8KJw/ShaZcU9H4BW6WYkogmQujlG40b2yJJZ8yZ
 w1PGvpLn6QU7QBqsa9Q/wdU3hbdXfXrKbLvq3a8WYRD/35OKFJHldFyPi+W7qTTLPz4h
 rkoowqBeiDfokKR9Y69MqzyoVmo2UBGbgEDQCAy+XIwNZ4T8be3E8gLATKQvslnSnxEq
 aItm7Qy2xZ0dVvEPycYAVToDBDMJt6LQnpqZmt0gZ8ho2QWPyStff6upRKOnvkN41+zX
 QmgA==
X-Gm-Message-State: AOAM532jpUopSUTKvVqI3dRn6ss97Lr8RoqhMys0SUbfuiZQ0yl4S2Bt
 GwzAQ5yuuNAbbbSys2u7+mU=
X-Google-Smtp-Source: ABdhPJy7wkS5uf1TLRX/OePMnJFbEiewbjOPz+hQoSkXkJhj2uLJnjJDT6a6H0BcEj9vrTV9sAre8Q==
X-Received: by 2002:a2e:8782:: with SMTP id n2mr1630941lji.171.1590947070585; 
 Sun, 31 May 2020 10:44:30 -0700 (PDT)
Received: from [192.168.0.160] (84.188.smarthome.spb.ru. [80.249.188.84])
 by smtp.gmail.com with ESMTPSA id 22sm1610110lju.5.2020.05.31.10.44.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 31 May 2020 10:44:29 -0700 (PDT)
Subject: Re: [PATCH] staging:r8723bs: remove wrappers around skb_clone()
To: Joe Perches <joe@perches.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20200531160843.39120-1-insafonov@gmail.com>
 <7bf8612d3708b811e026daec5c7a1486c5954905.camel@perches.com>
 <8e4df253-e021-6c29-96ab-24eed9b61eb2@gmail.com>
 <24e0f572511724ea338f8802fde2ad3a359ea8d5.camel@perches.com>
From: Ivan Safonov <insafonov@gmail.com>
Message-ID: <1803e5d8-2629-adf3-6638-0ad843273a02@gmail.com>
Date: Sun, 31 May 2020 20:49:22 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <24e0f572511724ea338f8802fde2ad3a359ea8d5.camel@perches.com>
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
Cc: devel@driverdev.osuosl.org, R Veera Kumar <vkor@vkten.in>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 YueHaibing <yuehaibing@huawei.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>, linux-kernel@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>, Lukasz Szczesny <luk@wybcz.pl>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>, Pascal Terjan <pterjan@google.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 5/31/20 8:36 PM, Joe Perches wrote:
> On Sun, 2020-05-31 at 20:28 +0300, Ivan Safonov wrote:
>> On 5/31/20 7:15 PM, Joe Perches wrote:
>>> On Sun, 2020-05-31 at 19:08 +0300, Ivan Safonov wrote:
>>>> Wrappers around skb_clone() do not simplify the driver code.
>>> []
>>>> -inline struct sk_buff *_rtw_skb_clone(struct sk_buff *skb)
>>>> -{
>>>> -	return skb_clone(skb, in_interrupt() ? GFP_ATOMIC : GFP_KERNEL);
>>>> -}
>>>> -
>>> []
>>>> diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
>>> []
>>>> @@ -110,7 +110,7 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
>>>>    			if (memcmp(pattrib->dst, myid(&padapter->eeprompriv), ETH_ALEN)) {
>>>>    				if (bmcast) {
>>>>    					psta = rtw_get_bcmc_stainfo(padapter);
>>>> -					pskb2 = rtw_skb_clone(pkt);
>>>> +					pskb2 = skb_clone(pkt, GFP_ATOMIC);
>>>
>>> Why make every clone allocation GFP_ATOMIC ?
>>
>> The rtw_os_recv_indicate_pkt() is always called from an interrupt handler.
> 
> It'd be better to indicate you know that in the changelog
> as the subject and changelog just shows removing wrappers
> and the patch code does not agree with that.

Yes, it's right.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
