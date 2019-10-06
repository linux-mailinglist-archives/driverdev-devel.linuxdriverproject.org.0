Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3EFCCEE6
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Oct 2019 07:45:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A718087816;
	Sun,  6 Oct 2019 05:45:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U09ONLy-mL18; Sun,  6 Oct 2019 05:45:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 76EC1877E6;
	Sun,  6 Oct 2019 05:45:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C67541BF5B3
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 05:45:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C12D885EF5
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 05:45:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ho3W5MjlvGIt for <devel@linuxdriverproject.org>;
 Sun,  6 Oct 2019 05:45:17 +0000 (UTC)
X-Greylist: delayed 00:05:16 by SQLgrey-1.7.6
Received: from mout.web.de (mout.web.de [217.72.192.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EC49B857D0
 for <devel@driverdev.osuosl.org>; Sun,  6 Oct 2019 05:45:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1570340710;
 bh=chjYK08RR6AxiHYkrjky48ZSi1luxWhiDDLUG0S6AAw=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=Ims7h8hK41TReXGNNeD6tQWloN9bdxf0Lc0A7rktHw7I3FyIsTUWlQsR85fELwtEi
 iRnPti+dV+z/a3zqxY2qXZA3I2fXyb+aalnz5pumakRSlZ4TwYvEflfUuxbhdhsvjl
 brp1iwmRQdSBsNTbHK6uZaqayfSAOMjyg+bb3EVI=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([2.244.114.140]) by smtp.web.de (mrweb102
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MTyDl-1ih0c32pAv-00QknY; Sun, 06
 Oct 2019 07:39:42 +0200
Subject: Re: staging: vt6655: Fix memory leak in vt6655_probe
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Navid Emamdoost <navid.emamdoost@gmail.com>, devel@driverdev.osuosl.org,
 kernel-janitors@vger.kernel.org
References: <20191004200319.22394-1-navid.emamdoost@gmail.com>
 <1d0ba4c6-99ed-e2c9-48a2-ce34b0042876@web.de>
 <20191005184035.GA2062613@kroah.com>
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <ea5e4945-b48f-0955-ba52-071ef1bb0e57@web.de>
Date: Sun, 6 Oct 2019 07:39:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191005184035.GA2062613@kroah.com>
Content-Language: en-US
X-Provags-ID: V03:K1:MS5LoYsk0re4zTSfMNFDJwfffuXBsSK5DkOUYDYvvdOeEdsCxod
 2zYoPOE2D2XJAz/QAGadoYQwLW3UiRCc8sCALGdGICB90cRxB7khmtN1BpQB6uG7f7zus+c
 Bm3Trc198ixi1uoZIhUHax6dsrOo2R/fbfgTE+l5Gg5D+reYoJEXCIW6JmBJedOgRv4Wc97
 abjdn3Rhcckdid17d1DWQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:9kmKLbM0su8=:44Y3yS/iyp32TvbLZLwQa8
 Nw4JBmFfkfoKSzRE7IzLgrbhr4UHdQTO1o08gqEgIGwQwlcJNeog2ripbwsoBpjz2t9Fox+go
 SKKYn+VPR42BF9jUD+dDqLtCJ0TFPkmfkyLmcp61PduUk4uGPgRwgRSHDj0zz5odB1mt6OVEj
 mr+VJhgtTM7M7H+FcIvqwsynysO/LFU85iaFDXu19d82jEe9/FZ9RQhnRrYkwFvkirOPxA3Ow
 NOJCn9xP1r6XbRUefZEeMXJYgeMni1guz+JrfxuVk/1KaqePTz4FFiY5HMK4kMXDgZ13oGBJT
 ZJg8sJxzta3KbUonkz77lwYF7U4+vztiVmDjEFjVQ8d4qC+OMZB+gAEGgHETL+XN5xVS71BgQ
 /gW7jakmO86rYLKeTYO63LZV2vuedJ+kurqp5JdEK37bvwKfnYl8EzsneA0lVgxYC4KG+3hmz
 SjHjV7P8gZXd8aSaAE4YCe8WOUr9fD5Ac7ZHBWzcnzmPMD8yXmrhFh/whFnutGUZx6aC9H0Ay
 P0uugViL829t5tqE2vxxIcXM73ZdnKVhh6mOtByvDOB4bX5Q0A4R+jmFzdHFxDAdRpnAUYp2X
 u+2+AeHUuBbX0PJpthXEo9o7ASfZ7YX8SjhTFCTp7Q50Rt7bcHBVthVAGrLXORUpsoDFlma9I
 lyqRBiRzHHLnRXd8wKRRNflu4OUm0n90FIYRwLwSYSW5BkLwf2wQbtsJauUXcakp9GysCOgCv
 XuGEcbxR6r51Kt2LoZH7iAV0W0y6JL5R1QT2jRfTpO6E9CveJcuk61WrP47/GZf+d76Wdmg3U
 D6MbUW2Mal3qwj7d/PN4fqANQH0WoivxDum5KSO5Kao0x9g/5f+Wq/m7qFWVoz+rvnQaezj0K
 L9fYZUSLWgHOKpuxxrs/jjdVvHsD9LHWTJXtQoQklAdTM2AvaxqOQKwk+4uy7swKKANXfv3WJ
 nLdZmWiE6R4kuioG16UfEf1tP73bhiDDn7ixuNPzJAzQRihPCsltEiBM5TwR13jacIQg0lmFW
 AmKHsb29gHnULwpxZnQ4n0qlGEBZ7df4txCoa0acUzYZgeMRzeQiry+R4K+12dku5MflT4B8g
 YpGouYYucbWi06QTyfZcM/4n8H1tuC+Xzn1CsWTF68doXfpuP/dlRwASS7l98uRwf6F1a0xuf
 W/IBM6XJKpejtQKjxSpsw/jNYzqxYHLTmH5pULhzHDSasbtD9v0Q5c90ZuEJjWYX/+AvI6dzy
 W3ppRSE8V7FI2Luxo2mfuZSf5wX6gTDu5Rx7fOp5DPk5T5JjHbHF7uH30+Ew=
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
Cc: Malcolm Priestley <tvboxspy@gmail.com>, Kangjie Lu <kjlu@umn.edu>,
 linux-kernel@vger.kernel.org, Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Navid Emamdoost <emamd001@umn.edu>,
 Forest Bond <forest@alittletooquiet.net>, Stephen McCamant <smccaman@umn.edu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Pj4+IEluIHZ0NjY1NV9wcm9iZSwgaWYgdm50X2luaXQoKSBmYWlscyB0aGUgY2xlYW51cCBjb2Rl
IG5lZWRzIHRvIGJlIGNhbGxlZAo+Pj4gbGlrZSBvdGhlciBlcnJvciBoYW5kbGluZyBjYXNlcy4g
VGhlIGNhbGwgdG8gZGV2aWNlX2ZyZWVfaW5mbygpIGlzCj4+PiBhZGRlZC4KPj4KPj4gUGxlYXNl
IGltcHJvdmUgdGhpcyBjaGFuZ2UgZGVzY3JpcHRpb24uCj4KPiBJdCBpcyBmaW5lIGFzLWlzLCBw
bGVhc2UgZG8gbm90IGNvbmZ1c2UgcGVvcGxlLgoKV291bGQgeW91IGxpa2UgdG8gY2xhcmlmeSBh
IGtub3duIGd1aWRlbGluZSBvbmNlIG1vcmU/Cmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3Nj
bS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL0RvY3VtZW50YXRpb24v
cHJvY2Vzcy9zdWJtaXR0aW5nLXBhdGNoZXMucnN0P2lkPTQzYjgxNWM2YThlN2RiY2NiNWI4YmQ5
YzRiMDk5YzI0YmMyMmQxMzUjbjE1MQrigJzigKYKRGVzY3JpYmUgeW91ciBjaGFuZ2VzIGluIGlt
cGVyYXRpdmUgbW9vZCwK4oCm4oCdCgpSZWdhcmRzLApNYXJrdXMKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxp
bnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qu
b3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
