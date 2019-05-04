Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B1113C3C
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 May 2019 00:38:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B66F3215DF;
	Sat,  4 May 2019 22:38:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FdUz+P5hpA4U; Sat,  4 May 2019 22:38:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4CF92227CD;
	Sat,  4 May 2019 22:38:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 53E291BF389
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 22:38:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4E560864A4
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 22:38:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4V1NoX-qmRhO for <devel@linuxdriverproject.org>;
 Sat,  4 May 2019 22:38:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DC091864A0
 for <devel@driverdev.osuosl.org>; Sat,  4 May 2019 22:38:44 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id f37so10568903edb.13
 for <devel@driverdev.osuosl.org>; Sat, 04 May 2019 15:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nexus-software-ie.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=6dsdDQMlW00FuJC/0AlP/jbQxRyXKp1k3RgqJwWLklQ=;
 b=zKaYKzhUxWmZoHBOeE9gHwL97lq4zCcOAhu8mn2n8S/jimQQGFp7FZHjp9x0TOqv5j
 na5A+gapv+KPXnKOiHLOMbRe8OFxFAmJedpEww0WuvU9Dmt7tnxAgm4oQdMvPkqhCWqq
 P31VeHz3tk9OWcUAOVC9oNI6Xao65blXshRJLDO1Ofum6fiXnYGQr7GthZfU+cgsr+hm
 nTaeiCkXdr8+lN9mO88UFzfIAVQmoKHuZ67b9k6IY5r0jCCIzTGQfVLMHsEst/SpDLJK
 Dou8F8tru84AI3Sz+A/Q5D3fp64BELvIeJqzP61yUzRREKeIZmsBl6s7WB+kUSmOjbwC
 Egjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6dsdDQMlW00FuJC/0AlP/jbQxRyXKp1k3RgqJwWLklQ=;
 b=MaPpjCl3/6+kuYfNEGsW0+Wf1NQ1xgAWig4Yl0kJ15X56rO3KAf3+ykLWppxu19mUP
 7BcC8L+AIsXS7P144THguLh/OXIvDxhImuX+IU7Vb8LvZJ7iejS9ktzTTlC5Y4H0xaRJ
 f3ISIZSSmYedwdyWwQDQQSRA7OLFmZkG/q+r/bv1hhgwTorXlLNe7dYNTifdbW3Z80xg
 ZV6lJsKBh+xJ5oHdvKaXSEQb4iZl3uAQ+ibzV7ce9wTY21GwAPzGKZoS2SD6bfQ3/pWx
 Ag6+/lgW/QsIm3UqiKLFG0B5tkoxGYYDo52/B81JaW2gJMHId+d8Gnpca82hC5dJj3xg
 5/Bw==
X-Gm-Message-State: APjAAAX38PSBmot98oZmsU1EOLTPH+XSKXqEyaxls9GkmyqNDN5HfNxv
 y5l+VuJbQlQfJKQhdx6/+KbRqw==
X-Google-Smtp-Source: APXvYqwP7fxIzuRdgNT1rfXlxc5OPrSYVb3gD0HOdLQTyNwfEwQyydd0KWI4iQbfDOQ+EIdLJO+tkQ==
X-Received: by 2002:a17:906:c52:: with SMTP id
 t18mr12523193ejf.53.1557009522808; 
 Sat, 04 May 2019 15:38:42 -0700 (PDT)
Received: from [192.168.192.38] ([80.111.179.123])
 by smtp.gmail.com with ESMTPSA id p21sm884470ejo.15.2019.05.04.15.38.39
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 May 2019 15:38:41 -0700 (PDT)
Subject: Re: [RESEND PATCH v6 0/5] Add i.MX8MM OCOTP support
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Greg KH <gregkh@linuxfoundation.org>
References: <20190503165342.30139-1-pure.logic@nexus-software.ie>
 <20190504083939.GA1859@kroah.com>
 <d67c692d-9e4f-9d08-12bc-ab3644fbaa8c@nexus-software.ie>
 <2e9d5ed8-eeeb-4829-734c-fa418d99bfeb@linaro.org>
From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
Message-ID: <1397f626-f74c-1289-2c05-3dd7deb80bb8@nexus-software.ie>
Date: Sat, 4 May 2019 23:38:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <2e9d5ed8-eeeb-4829-734c-fa418d99bfeb@linaro.org>
Content-Language: en-US-large
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
Cc: devel@driverdev.osuosl.org, aisheng.dong@nxp.com, peng.fan@nxp.com,
 abel.vesa@nxp.com, anson.huang@nxp.com, linux-imx@nxp.com,
 kernel@pengutronix.de, fabio.estevam@nxp.com, leonard.crestez@nxp.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 04/05/2019 18:10, Srinivas Kandagatla wrote:
> Normally I don't take patches that are sent after rc5 into next merge 
> window. Unless there is an urgent fix. In this case I will be applying 
> these series to nvmem next branch once rc1 is released for 5.3 merge 
> window.

Great, that'll done fine Srini no rush.

I sometimes do a round of pings of outstanding patches I have to make 
sure they don't get lost in the ether.

So long as its on your radar that's good enough.

---
bod
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
