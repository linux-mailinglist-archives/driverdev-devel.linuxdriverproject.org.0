Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB5D1E993E
	for <lists+driverdev-devel@lfdr.de>; Sun, 31 May 2020 19:23:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3521185DC4;
	Sun, 31 May 2020 17:23:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A261PMrzaj-3; Sun, 31 May 2020 17:23:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2EDEC85CFE;
	Sun, 31 May 2020 17:23:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2D8261BF3BD
 for <devel@linuxdriverproject.org>; Sun, 31 May 2020 17:23:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 26D5C87ECB
 for <devel@linuxdriverproject.org>; Sun, 31 May 2020 17:23:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qm+Gc6mrTuSi for <devel@linuxdriverproject.org>;
 Sun, 31 May 2020 17:23:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CD51287EC4
 for <devel@driverdev.osuosl.org>; Sun, 31 May 2020 17:23:30 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id 82so2582132lfh.2
 for <devel@driverdev.osuosl.org>; Sun, 31 May 2020 10:23:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Gan8Hs5cLhd2R8PjllgAUBiWMj838r9OJwwYSGGCD8k=;
 b=dDBuriuXusck1paeyAvVZbqTUhubuee/TOwISJbBrCcoICtysuO5DR8/1bQrKiRpVq
 WxTXJo4D/6APNYU0c0DhTcIZMxxFuRkXl7rL55sFGkx5UcpzGbWbQHCBC8OGZVbz2Rwz
 YJJzysWpOdQmvmQq94I23nDyXl2zrNN2InUoulU3G4aqg0x5al5GqkVqEpBVc/MjkZk8
 IO6g6fZ0JuAqcu1IskHfeeh28i71CgAEIcOo5j0yy3g3Tjstd3kKvOVZPdW3tQnhH2Lr
 OPfD6eswxlH3ZgW8rCS/G51Ex91m5OM3hQIatPid4uQIns8UJGjqfom0/7SpExs72p7s
 KBJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Gan8Hs5cLhd2R8PjllgAUBiWMj838r9OJwwYSGGCD8k=;
 b=eIJxtGRXkQ5g5h1Kf+mMQz+MWnSrwBofLkXY6PCrqgY6JleedmLdSHCcEguzx5aTr4
 6VUBQyHeSNE4Y8vAp1GSchMkWo56ogVZvUGNL/yDsAj0i42tihz3p2gd0ozxHEA86APM
 +syvvTBkaB9nlvjEj1A4DnQFLxLK3mU1t8dPUkySNx2Syj5bu5QE69Gs9Ava/k6rQ8RT
 cYV4q+gNU3VH04qdcPPtipz9nlZcNWtlOkjSr7VRjsnjdOkW1aOZdPG9oc3ugWtBnau9
 QlJYKLO1LY7yohItKX0xK/8+zRK2cZfpMEp8wHK8LvVqG/QpbBrjXESVMkhdWAv+waDC
 dwQg==
X-Gm-Message-State: AOAM53231jLbnWOzMfjG+XJhSRAwPGopv0XTuWz9ZjaKt3AW4RjgOGjn
 7Uf3SwQb21d7PY3UHj95Myo=
X-Google-Smtp-Source: ABdhPJwhgVcXUg6sMnXYxPyIr1PDPj4hJk7IJi78gsp/fFui98Ztizd+IjRh3XdVQrQGGzrDhhxkbA==
X-Received: by 2002:a19:356:: with SMTP id 83mr9470602lfd.179.1590945808848;
 Sun, 31 May 2020 10:23:28 -0700 (PDT)
Received: from [192.168.0.160] (84.188.smarthome.spb.ru. [80.249.188.84])
 by smtp.gmail.com with ESMTPSA id p68sm3927319lfa.71.2020.05.31.10.23.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 31 May 2020 10:23:28 -0700 (PDT)
Subject: Re: [PATCH] staging:r8723bs: remove wrappers around skb_clone()
To: Joe Perches <joe@perches.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20200531160843.39120-1-insafonov@gmail.com>
 <7bf8612d3708b811e026daec5c7a1486c5954905.camel@perches.com>
From: Ivan Safonov <insafonov@gmail.com>
Message-ID: <8e4df253-e021-6c29-96ab-24eed9b61eb2@gmail.com>
Date: Sun, 31 May 2020 20:28:10 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <7bf8612d3708b811e026daec5c7a1486c5954905.camel@perches.com>
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

On 5/31/20 7:15 PM, Joe Perches wrote:
> On Sun, 2020-05-31 at 19:08 +0300, Ivan Safonov wrote:
>> Wrappers around skb_clone() do not simplify the driver code.
> []
>> -inline struct sk_buff *_rtw_skb_clone(struct sk_buff *skb)
>> -{
>> -	return skb_clone(skb, in_interrupt() ? GFP_ATOMIC : GFP_KERNEL);
>> -}
>> -
> []
>> diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
> []
>> @@ -110,7 +110,7 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
>>   			if (memcmp(pattrib->dst, myid(&padapter->eeprompriv), ETH_ALEN)) {
>>   				if (bmcast) {
>>   					psta = rtw_get_bcmc_stainfo(padapter);
>> -					pskb2 = rtw_skb_clone(pkt);
>> +					pskb2 = skb_clone(pkt, GFP_ATOMIC);
> 
> Why make every clone allocation GFP_ATOMIC ?

The rtw_os_recv_indicate_pkt() is always called from an interrupt handler.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
