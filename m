Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F921265B6
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Dec 2019 16:26:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9028B87EFB;
	Thu, 19 Dec 2019 15:26:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lSdTnZZJ815F; Thu, 19 Dec 2019 15:26:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 60ABD85F96;
	Thu, 19 Dec 2019 15:26:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C54AF1BF599
 for <devel@linuxdriverproject.org>; Thu, 19 Dec 2019 15:26:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BCFCF8639E
 for <devel@linuxdriverproject.org>; Thu, 19 Dec 2019 15:26:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nMHXtgN-1y4Z for <devel@linuxdriverproject.org>;
 Thu, 19 Dec 2019 15:26:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BE20185F96
 for <devel@driverdev.osuosl.org>; Thu, 19 Dec 2019 15:26:11 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id k8so6678978ljh.5
 for <devel@driverdev.osuosl.org>; Thu, 19 Dec 2019 07:26:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=EfMJAK6QdKFsh+fBVzyJUPJJh4olOvNdwOUocs3Xhps=;
 b=nsuYK9rVKQACfeRu9Z8HMvUbUy2U3uac5KvqBY2uHv1G4NDmeVbxnMm99VdxvlyrjY
 Ms5Paep/aqE1Qpugiti/UroiLXFPeLkDlymrD59PBm96RE2dGyxD/7btwCQucWGMVexF
 EALSGO0JH++DxTRly89fl1pXYNs+sojGl3R074/v5B/zea69udGzrNZAuEJj1wYI8USd
 CAsv8qQs/Vq/qd+d7kSbfA0QuJtJeEz0dkNKQqNsmcLLGLwGozQCtESJdrtFKbTDsg5Z
 LGKIOVl9Y5jvj+BZnwfoNhuoE+wdwDG64FAavt9FajbRp6lnTFXx/3tQ+9QTJV850WA1
 xJKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=EfMJAK6QdKFsh+fBVzyJUPJJh4olOvNdwOUocs3Xhps=;
 b=BifHSHIB5+tP6mP/15d7rSIS6ZoHzgWf/LYNlVjw13FzSTUjL4nAO6iRMFhhKD0Wkj
 7Vi9ac2ik5Bwk+6vNG0w72lS9+9o30UJ0LuNlZ1g0Ddo2x30wNA2v1VizK/IwIZ9cphk
 0HhI0meO3pWwKMehaI1LEFSXydGXbd48KLTAC5q7axTMT5DMTN8Zwd192nvWUfSCEdf9
 aYsq3GTUMoeGk3QReJPi4/UtNkFxZWbOr072KxLRPA95TrALrI2kBgsMC6ltK0AxFIIP
 mnLAmf7ejyCGLVw4Huz+8bP79HFEOroqKjiqorkQRHmphmtQ8Yty0GSKb5PQjoBvl1x+
 nI8Q==
X-Gm-Message-State: APjAAAU1U9VI59s8kf6aM7dO3z9w9NGjAbIE9ZrLEg0IhlVyN97JKIm5
 i6b4iscE4kwJLfXPkKdxaNY=
X-Google-Smtp-Source: APXvYqyxpPlUqDrJrTTqoRBffG4scu7HrXDMd4IQ99CE0YQXdPBAVdVy6IGag/hmiTmUvSgTzs0DRg==
X-Received: by 2002:a2e:93d5:: with SMTP id p21mr6652104ljh.50.1576769170048; 
 Thu, 19 Dec 2019 07:26:10 -0800 (PST)
Received: from [192.168.2.145] (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.googlemail.com with ESMTPSA id i16sm2728741lfo.87.2019.12.19.07.26.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Dec 2019 07:26:09 -0800 (PST)
Subject: Re: [PATCH v1 0/3] Tegra GPIO: Minor code clean up
To: Thierry Reding <thierry.reding@gmail.com>
References: <20191215183047.9414-1-digetx@gmail.com>
 <20191219145341.GL1440537@ulmo>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <aff1c503-f4da-275d-b867-ca14c86a00db@gmail.com>
Date: Thu, 19 Dec 2019 18:26:08 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20191219145341.GL1440537@ulmo>
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
Cc: devel@driverdev.osuosl.org, linux-gpio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MTkuMTIuMjAxOSAxNzo1MywgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKPiBPbiBTdW4sIERl
YyAxNSwgMjAxOSBhdCAwOTozMDo0NFBNICswMzAwLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+
IEhlbGxvLAo+Pgo+PiBJIHdhcyBpbnZlc3RpZ2F0aW5nIHdoeSBDUFUgaGFuZ3MgZHVyaW5nIG9m
IEdQSU8gZHJpdmVyIHN1c3BlbmQgYW5kIGluCj4+IHRoZSBlbmQgaXQgdHVybmVkIG91dCB0aGF0
IGl0IGlzIGEgQnJvYWRjb20gV2lGaSBkcml2ZXIgcHJvYmxlbSBiZWNhdXNlCj4+IGl0IGtlZXBz
IE9PQiB3YWtlLWludGVycnVwdCBlbmFibGVkIHdoaWxlIFdMQU4gaW50ZXJmYWNlIGlzIERPV04g
YW5kIHRoaXMKPj4gbWF5IGNhdXNlIGEgYml0IHdlaXJkIENQVSBoYW5nIG9uIHdyaXRpbmcgdG8g
SU5UX0VOQiByZWdpc3RlciBkdXJpbmcgb2YKPj4gR1BJTyBkcml2ZXIgc3VzcGVuZC4gTWVhbndo
aWxlIEkgYWxzbyBub3RpY2VkIHRoYXQgYSBmZXcgdGhpbmdzIGNvdWxkIGJlCj4+IGltcHJvdmVk
IGluIHRoZSBkcml2ZXIsIHRoYXQncyB3aGF0IHRoaXMgc21hbGwgc2VyaWVzIGFkZHJlc3Nlcy4K
Pj4KPj4gRG1pdHJ5IE9zaXBlbmtvICgzKToKPj4gICBncGlvOiB0ZWdyYTogVXNlIGdlbmVyaWMg
cmVhZGxfcmVsYXhlZC93cml0ZWxfcmVsYXhlZCBhY2Nlc3NvcnMKPj4gICBncGlvOiB0ZWdyYTog
UHJvcGVybHkgaGFuZGxlIGlycV9zZXRfaXJxX3dha2UoKSBlcnJvcgo+PiAgIGdwaW86IHRlZ3Jh
OiBVc2UgTk9JUlEgcGhhc2UgZm9yIHN1c3BlbmQvcmVzdW1lCj4+Cj4+ICBkcml2ZXJzL2dwaW8v
Z3Bpby10ZWdyYS5jIHwgMjEgKysrKysrKysrKy0tLS0tLS0tLS0tCj4+ICAxIGZpbGUgY2hhbmdl
ZCwgMTAgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCj4gCj4gUGF0Y2hlcyBsb29rIGdv
b2Q6Cj4gCj4gUmV2aWV3ZWQtYnk6IFRoaWVycnkgUmVkaW5nIDx0cmVkaW5nQG52aWRpYS5jb20+
Cj4gCj4gSSBhbHNvIGFwcGxpZWQgdGhpcyBzZXJpZXMgb24gdG9wIG9mIHY1LjUtcmMxIGFuZCBy
YW4gaXQgdGhyb3VnaCBvdXIKPiB0ZXN0IHN5c3RlbToKPiAKPiAgICAgVGVzdCByZXN1bHRzOgo+
ICAgICAgICAgMTMgYnVpbGRzOiAgMTMgcGFzcywgMCBmYWlsCj4gICAgICAgICAyMiBib290czog
ICAyMiBwYXNzLCAwIGZhaWwKPiAgICAgICAgIDM0IHRlc3RzOiAgIDM0IHBhc3MsIDAgZmFpbAo+
IAo+ICAgICBMaW51eCB2ZXJzaW9uOiAgNS41LjAtcmMxLWczZDBiNGZjZWQzOWUKPiAgICAgQm9h
cmRzIHRlc3RlZDogIHRlZ3JhMTI0LWpldHNvbi10azEsIHRlZ3JhMTg2LXAyNzcxLTAwMDAsCj4g
ICAgICAgICAgICAgICAgICAgICB0ZWdyYTE5NC1wMjk3Mi0wMDAwLCB0ZWdyYTIwLXZlbnRhbmEs
Cj4gICAgICAgICAgICAgICAgICAgICB0ZWdyYTIxMC1wMjM3MS0yMTgwLCB0ZWdyYTMwLWNhcmRo
dS1hMDQKPiAKPiBBbGwgdGVzdHMgcGFzc2luZywgc286Cj4gCj4gVGVzdGVkLWJ5OiBUaGllcnJ5
IFJlZGluZyA8dHJlZGluZ0BudmlkaWEuY29tPgo+IAoKVGhhbmsgeW91IHZlcnkgbXVjaCEKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGlu
ZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51
eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
