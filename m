Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D4C288EC2
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Oct 2020 18:25:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 633B6877FA;
	Fri,  9 Oct 2020 16:25:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nxGezz5a-Yj7; Fri,  9 Oct 2020 16:25:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D7EFA877DC;
	Fri,  9 Oct 2020 16:24:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 796691BF255
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 16:24:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 628472001D
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 16:24:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CVVkzKg3n3x5 for <devel@linuxdriverproject.org>;
 Fri,  9 Oct 2020 16:24:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 7763D20000
 for <devel@driverdev.osuosl.org>; Fri,  9 Oct 2020 16:24:53 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id u24so7597727pgi.1
 for <devel@driverdev.osuosl.org>; Fri, 09 Oct 2020 09:24:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:cc:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=Jur5Bq54qriS0f641DZfn/1aFXoa3qoJ8oSWG2dKR9E=;
 b=KnTl2YiXqu6kxvV/SiXf71ElLRsPogVU0Nuxn4Iw9xjXknnLTXVMrXCiB4Icr4tKGS
 JxfB6gZAlefX7i66UCihpRBYz8xN0MjCD0AitIgSpibXrwzwVh1cqhRv3wIEdJ0mPMiC
 636xzIVwXFe/ViO0wd0KQayuzDGmYK9d6oSkva474NyQXRI1drMIMYGPc+IycmiNxKPN
 /d69sbKv/H6LJQH/igU/8ptOlIzHapHD3B3WtaVW31rKW/r2J8dXI91eM5UfSzc9+29S
 KSxPDaQ0YEc3t8Vlo5Gz8NFrF2aanuoOHwl/3Fu56nfcu6oL4iSifVIKJzhQknJj4K4G
 5rxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Jur5Bq54qriS0f641DZfn/1aFXoa3qoJ8oSWG2dKR9E=;
 b=mLrqQ9ZjAgU5ISM0jrqFQhTKaBxA2L0urMggyElhm1/b+zDio1gtmfi4mfal3Jd+B3
 a+oH/YFrC7EhBxSnE25yWszU2auavzbZqr51nalcXa/4/+HsiA8V4lJSxba+OuhnlL80
 pqlwsyJTms7G3JCtQyZ11Y2L5RE3TdUR8f94NkbirXc6/Ddvr4hkO2zo+bjc9ZZchw5i
 w7Inb46YEEDs4xRScRRRh1l53f+CGX6Af7rCySd1aQkouFgE4hzy2jmPen6lPgNW0HQV
 Ts66YfIUSHOms1VeUe6FZRTbkhp125J4dPceTYmzKci/usZH5tt8Lx+OdXFeOeqm+M4t
 w8hw==
X-Gm-Message-State: AOAM532UY16loJUUisZEtmnpiah39IsGi8QVz1aBxZM4ytZwbR+SKZXO
 fo/JYs60m5T/rdx4eGIhJqo=
X-Google-Smtp-Source: ABdhPJwX59dsYqV7LKdMHJ+iopNl3ggAeS1pu/x2L71uhzAnMQYFAiF2RMg5h9sMWuU5mLbFJF4Pvg==
X-Received: by 2002:a17:90a:1861:: with SMTP id
 r88mr5359154pja.222.1602260692871; 
 Fri, 09 Oct 2020 09:24:52 -0700 (PDT)
Received: from [192.168.0.104] ([49.207.205.113])
 by smtp.gmail.com with ESMTPSA id o134sm11231313pfg.134.2020.10.09.09.24.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 09 Oct 2020 09:24:52 -0700 (PDT)
Subject: Re: [PATCH] staging: comedi: check validity of wMaxPacketSize of usb
 endpoints found
References: <20201009161646.286286-1-anant.thazhemadam@gmail.com>
From: Anant Thazhemadam <anant.thazhemadam@gmail.com>
Message-ID: <21e614cc-abf7-9332-81be-c969b0fd29b6@gmail.com>
Date: Fri, 9 Oct 2020 21:54:48 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201009161646.286286-1-anant.thazhemadam@gmail.com>
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
 linux-kernel@vger.kernel.org, Ian Abbott <abbotti@mev.co.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


On 09/10/20 9:46 pm, Anant Thazhemadam wrote:
> While finding usb endpoints in vmk80xx_find_usb_endpoints(), check if 
> wMaxPacketSize = 0 for the endpoints found.
>
> Some devices have isochronous endpoints that have wMaxPacketSize = 0
> (as required by the USB-2 spec).
> However, since this doesn't apply here, wMaxPacketSize = 0 can be
> considered to be invalid.
>
> Reported-by: syzbot+009f546aa1370056b1c2@syzkaller.appspotmail.com
> Tested-by: syzbot+009f546aa1370056b1c2@syzkaller.appspotmail.com
> Signed-off-by: Anant Thazhemadam <anant.thazhemadam@gmail.com>
> ---
> The error (as detected by syzbot) is generated in 
> vmk80xx_write_packet() (which is called in vmk80xx_reset_device()) when
> it tries to assign devpriv->usb_tx_buf[0] = cmd.
>
> This NULL pointer dereference issue arises because
> size = usb_endpoint_maxp(devpriv->ep_tx) = 0.
>
> This can be traced back to vmk80xx_find_usb_endpoints(), where the usb 
> endpoints are found, and assigned accordingly.
> (For some more insight, in vmk80xx_find_usb_endpoints(), 
> if one of intf->cur_altsetting->iface_desc->endpoints' desc value = 0, 
> and consequently this endpoint is assigned to devpriv->ep_tx,
> this issue gets triggered.)
>
> Checking if the wMaxPacketSize of an endpoint is invalid and returning
> an error value accordingly, seems to fix the error.
>
> We could also alternatively perform this checking (if the size is 0 or not) 
> in vmk80xx_reset_device() itself, but it only seemed like covering up the issue
> at that place, rather than fixing it, so I wasn't sure that was any better.
>
> However, if I'm not wrong, this might end up causing the probe to fail, and I'm 
> not sure if that's the right thing to do in cases like this, and if it isn't I'd
> like some input on what exactly is the required course of action in cases like this.
>
>  drivers/staging/comedi/drivers/vmk80xx.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/staging/comedi/drivers/vmk80xx.c b/drivers/staging/comedi/drivers/vmk80xx.c
> index 65dc6c51037e..cb0a965d3c37 100644
> --- a/drivers/staging/comedi/drivers/vmk80xx.c
> +++ b/drivers/staging/comedi/drivers/vmk80xx.c
> @@ -667,6 +667,9 @@ static int vmk80xx_find_usb_endpoints(struct comedi_device *dev)
>  	if (!devpriv->ep_rx || !devpriv->ep_tx)
>  		return -ENODEV;
>  
> +	if(!usb_endpoint_maxp(devpriv->ep_rx) || !usb_endpoint_maxp(devpriv->ep_tx))
> +		return -EINVAL;
> +
>  	return 0;
>  }
>  

The patch in this mail has a coding style issue (that I thought I had fixed), and was sent out by
mistake.
Please ignore this mail. Apologies.

Thanks,
Anant
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
