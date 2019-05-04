Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D3DB613B46
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 May 2019 19:10:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8355E86E1A;
	Sat,  4 May 2019 17:10:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pdUPwQO7CLdh; Sat,  4 May 2019 17:10:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 34A7E86DD6;
	Sat,  4 May 2019 17:10:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BA0B31BF5F6
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 17:10:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B6FD986866
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 17:10:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5oIDf7M8nHdB for <devel@linuxdriverproject.org>;
 Sat,  4 May 2019 17:10:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D073F86418
 for <devel@driverdev.osuosl.org>; Sat,  4 May 2019 17:10:22 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id q10so3028942wrj.10
 for <devel@driverdev.osuosl.org>; Sat, 04 May 2019 10:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=atT2PRRwfJHRr9FSlj3tbZ1dsSbh6dLp1StgbzO3rdo=;
 b=KhiQ80aeSCZBx9GsJ0x6gbcb4udn0+9Y/WCZNOmq1/7qfbwsTsRzlPmwngmwd/+0qy
 B+C+gTgQf3or6ZTbXN2b2H0zNwhQvmUOqCBj904VxbgpMv7TRUhsmXsY2PpZAVpaSNDa
 WmRT5DRaC2SGJBpgh758bScZDPRHKr6rJHo3EXgh8ml/DTCtf5obpFsyOYkRgWgiGnW0
 klOj9kY5GUlscGCXeAMIiPzhGLtuXxO2sRYpS4dEsbJhwQxuUa/A5n4Mqv79Lh7V4oA/
 kN1+TNNB5hGSYMj6UKfzaMMXwvCaE6T9Sj2I8J1KSN6de19OYuXnkGH5CrkKsrIya2RD
 zSoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=atT2PRRwfJHRr9FSlj3tbZ1dsSbh6dLp1StgbzO3rdo=;
 b=eIxMl3jFxGttRfGMKmUPVpGFIs6XGhqfALbJJvIih3WUqaMja9NLte0gmf71qAZGfo
 PQD0ozYEEBImnjfGqoPiKMWzKLewgjvvCVpXJCxUGuxhBNkCA8rq9SCHiz2IwhkpnEbJ
 pgXJ3iQ1/PIStoPurd8kZlElFBjTE8zWRGeZStx+uZOD+Y1v3p0H+gIYDFylAn+EXLcn
 xgna+4PyLb3taHAsz5XcsggHW6+44uQ8WCgwbHIje+dCy05S6fRq9O17jekVMVmL2XVD
 kGvcpPTlpgcL+nhfrJ7tAfIwq8n2jRhl823jNV6WV/FhPE0fyHrHBxch5Hf9z6y8cbA/
 xkXw==
X-Gm-Message-State: APjAAAXpSvW1tJ8pHVNCtUftfB6pjzItKSolh/wG6OyuaD9fKupdwD+J
 OzY2llZEDs4l3kbxLc0pCqbAHg==
X-Google-Smtp-Source: APXvYqyNQIA8XC8jOUU6Wd97yxXPKmQleklS7w4lUoxAHB1j+lC/eX1JWsOl/Ai0KTUPoCat71k4Fw==
X-Received: by 2002:a5d:6301:: with SMTP id i1mr11646967wru.172.1556989821167; 
 Sat, 04 May 2019 10:10:21 -0700 (PDT)
Received: from [192.168.86.34]
 (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
 by smtp.googlemail.com with ESMTPSA id s3sm10862997wre.97.2019.05.04.10.10.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 May 2019 10:10:20 -0700 (PDT)
Subject: Re: [RESEND PATCH v6 0/5] Add i.MX8MM OCOTP support
To: Bryan O'Donoghue <pure.logic@nexus-software.ie>,
 Greg KH <gregkh@linuxfoundation.org>
References: <20190503165342.30139-1-pure.logic@nexus-software.ie>
 <20190504083939.GA1859@kroah.com>
 <d67c692d-9e4f-9d08-12bc-ab3644fbaa8c@nexus-software.ie>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <2e9d5ed8-eeeb-4829-734c-fa418d99bfeb@linaro.org>
Date: Sat, 4 May 2019 18:10:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <d67c692d-9e4f-9d08-12bc-ab3644fbaa8c@nexus-software.ie>
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
Cc: devel@driverdev.osuosl.org, aisheng.dong@nxp.com, peng.fan@nxp.com,
 abel.vesa@nxp.com, anson.huang@nxp.com, linux-imx@nxp.com,
 kernel@pengutronix.de, fabio.estevam@nxp.com, leonard.crestez@nxp.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgpPbiAwNC8wNS8yMDE5IDE1OjQ5LCBCcnlhbiBPJ0Rvbm9naHVlIHdyb3RlOgo+IE9uIDA0LzA1
LzIwMTkgMDk6MzksIEdyZWcgS0ggd3JvdGU6Cj4+IE9uIEZyaSwgTWF5IDAzLCAyMDE5IGF0IDA1
OjUzOjM3UE0gKzAxMDAsIEJyeWFuIE8nRG9ub2dodWUgd3JvdGU6Cj4+PiBWNiBSRVNFTkQ6Cj4+
PiAtIEFkZGluZyBHcmVnIHRvIHNlbmRlciBsaXN0LiBHcmVnIGxvb2tzIGxpa2UgeW91IGFyZSB0
aGUgcmlnaHQgCj4+PiBwZXJzb24gdG8KPj4+IMKgwqAgYXBwbHkgdGhpcy4KPj4KPj4gJCAuL3Nj
cmlwdHMvZ2V0X21haW50YWluZXIucGwgLS1maWxlIGRyaXZlcnMvbnZtZW0vaW14LW9jb3RwLmMK
Pj4gU3Jpbml2YXMgS2FuZGFnYXRsYSA8c3Jpbml2YXMua2FuZGFnYXRsYUBsaW5hcm8ub3JnPiAo
bWFpbnRhaW5lcjpOVk1FTSAKPj4gRlJBTUVXT1JLKQo+PiBTaGF3biBHdW8gPHNoYXduZ3VvQGtl
cm5lbC5vcmc+IChtYWludGFpbmVyOkFSTS9GUkVFU0NBTEUgSU1YIC8gTVhDIAo+PiBBUk0gQVJD
SElURUNUVVJFKQo+PiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+IChtYWlu
dGFpbmVyOkFSTS9GUkVFU0NBTEUgSU1YIC8gCj4+IE1YQyBBUk0gQVJDSElURUNUVVJFKQo+PiBQ
ZW5ndXRyb25peCBLZXJuZWwgVGVhbSA8a2VybmVsQHBlbmd1dHJvbml4LmRlPiAKPj4gKHJldmll
d2VyOkFSTS9GUkVFU0NBTEUgSU1YIC8gTVhDIEFSTSBBUkNISVRFQ1RVUkUpCj4+IEZhYmlvIEVz
dGV2YW0gPGZlc3RldmFtQGdtYWlsLmNvbT4gKHJldmlld2VyOkFSTS9GUkVFU0NBTEUgSU1YIC8g
TVhDIAo+PiBBUk0gQVJDSElURUNUVVJFKQo+PiBOWFAgTGludXggVGVhbSA8bGludXgtaW14QG54
cC5jb20+IChyZXZpZXdlcjpBUk0vRlJFRVNDQUxFIElNWCAvIE1YQyAKPj4gQVJNIEFSQ0hJVEVD
VFVSRSkKPj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnIChtb2RlcmF0ZWQg
bGlzdDpBUk0vRlJFRVNDQUxFIElNWCAKPj4gLyBNWEMgQVJNIEFSQ0hJVEVDVFVSRSkKPj4gbGlu
dXgta2VybmVsQHZnZXIua2VybmVsLm9yZyAob3BlbiBsaXN0KQo+Pgo+Pgo+PiBXaHkgbWU/Pz8K
Pj4KPiAKPiBMb29rZWQgbGlrZSB5b3Ugd2VyZSBkb2luZyB0aGUgbWVyZ2VzIHRvIG1lLgo+IAo+
IGNvbW1pdCAzOGU3YjZlZmU5OTdjNGViOWE1YTgwOWRjMmIyZmU2Yzc1OWI3YzRiCj4gU2lnbmVk
LW9mZi1ieTogU3Jpbml2YXMgS2FuZGFnYXRsYSA8c3Jpbml2YXMua2FuZGFnYXRsYUBsaW5hcm8u
b3JnPgo+IFNpZ25lZC1vZmYtYnk6IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91
bmRhdGlvbi5vcmc+Cj4gCj4gUGluZywgU3JpbmksIGFueSBjaGFuY2UgeW91IGNhbiBtZXJnZSB0
aGlzIHRvIHlvdXIgdHJlZSA/CgpUaGFua3lvdSBmb3IgeW91ciBwYXRpZW5jZS4KCk5vcm1hbGx5
IEkgZG9uJ3QgdGFrZSBwYXRjaGVzIHRoYXQgYXJlIHNlbnQgYWZ0ZXIgcmM1IGludG8gbmV4dCBt
ZXJnZSAKd2luZG93LiBVbmxlc3MgdGhlcmUgaXMgYW4gdXJnZW50IGZpeC4gSW4gdGhpcyBjYXNl
IEkgd2lsbCBiZSBhcHBseWluZyAKdGhlc2Ugc2VyaWVzIHRvIG52bWVtIG5leHQgYnJhbmNoIG9u
Y2UgcmMxIGlzIHJlbGVhc2VkIGZvciA1LjMgbWVyZ2Ugd2luZG93LgoKQWxzbyBhbnkgZGV2aWNl
IHRyZWUgYmluZGluZ3MgY2hhbmdlcyBuZWVkIHRvIFJldmlld2VkIGJ5IERUIG1haW50YWluZXIg
CmJlZm9yZSBJIHBpY2sgdXAgdGhlc2UgcGF0Y2hlcy4KCgotLXNyaW5pCgo+IAo+IC0tLQo+IGJv
ZApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBt
YWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2
LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
