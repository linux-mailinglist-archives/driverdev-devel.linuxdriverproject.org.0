Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B12D7A4593
	for <lists+driverdev-devel@lfdr.de>; Sat, 31 Aug 2019 19:27:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 96184203BD;
	Sat, 31 Aug 2019 17:27:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E3WmP0+qM+Z4; Sat, 31 Aug 2019 17:27:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 099C120398;
	Sat, 31 Aug 2019 17:27:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 706001BF2AE
 for <devel@linuxdriverproject.org>; Sat, 31 Aug 2019 17:26:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6CDEE20379
 for <devel@linuxdriverproject.org>; Sat, 31 Aug 2019 17:26:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xcEkazgF1b6i for <devel@linuxdriverproject.org>;
 Sat, 31 Aug 2019 17:26:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 4B82F20109
 for <devel@driverdev.osuosl.org>; Sat, 31 Aug 2019 17:26:56 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id x18so9294197ljh.1
 for <devel@driverdev.osuosl.org>; Sat, 31 Aug 2019 10:26:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=rJkDLV4v1T0ZlJal69EutIWWJNaMipXTowQmmuZqIEw=;
 b=bijyrtLzJMpDV/QfoymnOP7MyNktKJQSo0LllG+wfXTIAZdYy44HJ1WbD2jhMHB7nC
 +pA0onOjlhFVSeRhEPyqgH3K+3JnKD10bNr084nZ0HomqzcBmA9X6OcTmJFv+6UF2Sxv
 QDLFjGy3jDzovxdewJh5aEwqDWV7ijBM4aiIHcJOYV5uojWJrau4PgcT9tOiaRW++VnN
 jVvQh5Nw9YCu1D9iczWKua6YZ5o/Qp8P+bTWRjwZs4zJUBsGvXWyD/JfVLd60J2YZhdM
 h+Yzmmbr5AZYJtgGXcab7pOY5HmsCj7YNXBaCT7AKoNZ1Z6rejRaxeB+mD+nO5/nuORl
 IWyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rJkDLV4v1T0ZlJal69EutIWWJNaMipXTowQmmuZqIEw=;
 b=UTNdjey5mNzHMg0EmVUN9k/c1Ut0RE1+GqaP7P1115GxCeceHBGy5jZE6en+ZzBjXj
 ZV+m8c9K9sLuKgu4kbwOZjzwn2yHtVOYn79dVnCaWghZVQwAFpiz3D6nvEYJK7gUCM5v
 idgj5rFrVunfTOaKGbGaPiJa4CZf9TIO+6F51MQtNc/78RPg/G96VHgFv09tGgw6Swxt
 I6uUAu3+Z0LUD5QqZEU49mcRBgKI4iVW2HnGMoIvqGlRrzNMo99qS04YQQepdHZlhMP7
 4B41Eg3mHfj9nATtf5E5ysuCUNpyc0jVoVSrOtlRZ/pP1d93relRaaOlPBlDVfJPmrlf
 1Cfw==
X-Gm-Message-State: APjAAAXWZSM70lEbvoMjxdxhw0bX+Dj1DKJt5NKdNYBrXPy0Vk25/hz3
 EfFmJp5QZ4De/K+Eu+USqrk=
X-Google-Smtp-Source: APXvYqzLz9TjucBk9Gq1E/bU6jz1XmD1zdYBh8oukD8QqhBwWU23nwqVGmcn3hFq7GpS9VEupaSl1g==
X-Received: by 2002:a2e:88c7:: with SMTP id a7mr12143536ljk.72.1567272414022; 
 Sat, 31 Aug 2019 10:26:54 -0700 (PDT)
Received: from [192.168.0.160] (ppp89-110-19-106.pppoe.avangarddsl.ru.
 [89.110.19.106])
 by smtp.gmail.com with ESMTPSA id p10sm1016775lji.71.2019.08.31.10.26.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 31 Aug 2019 10:26:53 -0700 (PDT)
Subject: Re: [PATCH] r8188eu: use skb_put_data instead of skb_put/memcpy pair
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <4c9e1e66-5ffc-c04b-9ea8-39cec5fd9b2a@gmail.com>
 <20190827103134.GC23584@kadam>
From: Ivan Safonov <insafonov@gmail.com>
Message-ID: <33548df8-6eb3-0ce6-d37e-1b4b79b0dcfc@gmail.com>
Date: Sat, 31 Aug 2019 20:30:16 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190827103134.GC23584@kadam>
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sanjana Sanikommu <sanjana99reddy99@gmail.com>,
 Colin Ian King <colin.king@canonical.com>,
 Vatsala Narang <vatsalanarang@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 8/27/19 1:31 PM, Dan Carpenter wrote:
> On Sun, Aug 25, 2019 at 11:48:58PM +0300, Ivan Safonov wrote:
>> skb_put_data is shorter and clear.
>>
> 
> Please don't start the commit message in the middle of a sentence.  It
> often gets split from the start of the sentence.  See how it looks here.
> https://marc.info/?l=linux-driver-devel&m=156676594611401&w=2
> 
> 
>> Signed-off-by: Ivan Safonov <insafonov@gmail.com>
>> ---
>>   drivers/staging/rtl8188eu/core/rtw_recv.c        | 6 +-----
>>   drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c | 3 +--
>>   2 files changed, 2 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c
>> b/drivers/staging/rtl8188eu/core/rtw_recv.c
>> index 620da6c003d8..d4278361e002 100644
>> --- a/drivers/staging/rtl8188eu/core/rtw_recv.c
>> +++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
>> @@ -1373,11 +1373,7 @@ static struct recv_frame *recvframe_defrag(struct
>> adapter *adapter,
>>                  /* append  to first fragment frame's tail (if privacy frame,
>> pull the ICV) */
>>                  skb_trim(prframe->pkt, prframe->pkt->len -
>> prframe->attrib.icv_len);
> 
> 
> Your email client corrupted the patch so it can't be applied.

Thanks, Dan.
> 
> regards,
> dan carpenter
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
