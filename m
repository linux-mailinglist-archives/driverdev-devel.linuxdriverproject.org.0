Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8BECABEFE
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Sep 2019 19:50:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 65A158820C;
	Fri,  6 Sep 2019 17:50:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oWC4Yd5KFi+N; Fri,  6 Sep 2019 17:50:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D1EF887E24;
	Fri,  6 Sep 2019 17:50:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1537C1BF401
 for <devel@linuxdriverproject.org>; Fri,  6 Sep 2019 17:50:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 105A487C22
 for <devel@linuxdriverproject.org>; Fri,  6 Sep 2019 17:50:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6g7bqmIJXwRq for <devel@linuxdriverproject.org>;
 Fri,  6 Sep 2019 17:50:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 288FF87C1A
 for <devel@driverdev.osuosl.org>; Fri,  6 Sep 2019 17:50:41 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id z6so128017oix.9
 for <devel@driverdev.osuosl.org>; Fri, 06 Sep 2019 10:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=F4XFpZ/Ntp6JNNqwWcwMDQ9RkygXrkeY+nz32s4dwlI=;
 b=a2lXYmPyCS4UA3sQ/bVxed9DPzu2SlgOjrFzOX4oEzGwjRtl+jVYZt6AjXGy07rY29
 24SeCgfuTyObZ50ZEOgxXU3gG6tUn6H4IVDoTClIE+Iw9fK2pvvQnoIfi3cVo1w/HlLM
 oxltd0ZVJUkncdo4JwomxUQA4leGpMW7mOd0bk1e8BvBDKPBY+dps8bkRhnCLoKHXjcp
 3JgnO54Au8u+2LWvy753N44LAAU0SSK5584KCAhPu9DIH/BGQult7vs/ODi6xQnAsPxV
 IQQc2dTxYlYZawB7hEzyyLD9RE9s1ay6pOfMo/0hkoiXozlSqCY+X/uZ9pW+Ro56aZjq
 UXog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=F4XFpZ/Ntp6JNNqwWcwMDQ9RkygXrkeY+nz32s4dwlI=;
 b=pvUD4/Kd+NFPySBNibGFyy4Gn9rL/5CPXpJGS9/U7DfxcFDBT0EVcpNWxzGjetWJbs
 8QRKV8bKC5W9Qq8MqydPH68vVO3BHZITaLOUR2M5OV3GjOIvj+hhO9xosE2E28aMa/95
 NLwbNzAyCBWUGKi+DYM92RJfQfjWnfHgq4xV2tR8y1Ph+UECVBF98MzKjD/d5obnP4Wm
 pKWCszWLTZE2nNzY5NaL2PNhdagh/JwxsimmMDbNw2gHkYuAfi7pExBvFPSj1BXSnnES
 nN4S9GxkjbXugKfzsGl3P6AOlFJ50LIH1G2uPrM0yXkukT3ZMMuHeM4uG0V1eoyfS6UN
 xKiw==
X-Gm-Message-State: APjAAAXZyXD9ECQB5KEYy42VDcG/kzfHR3VEI/myYBddZW7fVqPOrP39
 mlnzoVBNaZj706JAvHl0uis=
X-Google-Smtp-Source: APXvYqxzox6qJNPz7yEiqg0BiF3uTnaUtCGgjyVmQFBVlRPiRvwAQoEaZjVsB/vZH88rAZLKA1LVyg==
X-Received: by 2002:a54:4f11:: with SMTP id e17mr7643443oiy.46.1567792240430; 
 Fri, 06 Sep 2019 10:50:40 -0700 (PDT)
Received: from [192.168.1.156] (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id i47sm2453711ota.1.2019.09.06.10.50.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Sep 2019 10:50:40 -0700 (PDT)
Subject: Re: [PATCH] staging: rtl8188eu: make two arrays static const, makes
 object smaller
To: Colin King <colin.king@canonical.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
References: <20190906173949.21860-1-colin.king@canonical.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <9f1e1550-2a75-abc3-4d87-a0c1d1ae1ccb@lwfinger.net>
Date: Fri, 6 Sep 2019 12:50:39 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190906173949.21860-1-colin.king@canonical.com>
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 9/6/19 12:39 PM, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> Don't populate two arrays on the stack but instead make them
> static const. Makes the object code smaller by 49 bytes.
> 
> Before:
>     text	   data	    bss	    dec	    hex	filename
>    26821	   5616	      0	  32437	   7eb5	rtl8188eu/core/rtw_ieee80211.o
> 
> After:
>     text	   data	    bss	    dec	    hex	filename
>    26612	   5776	      0	  32388	   7e84	rtl8188eu/core/rtw_ieee80211.o
> 
> (gcc version 9.2.1, amd64)
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---

Acked-by: Larry Finger <Larry.Finger@lwfinger.net>

Thanks,

Larry
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
