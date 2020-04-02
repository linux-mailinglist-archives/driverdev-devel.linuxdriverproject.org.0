Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A3AC119C46C
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 16:38:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7D12B8721B;
	Thu,  2 Apr 2020 14:38:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wifgdYWqklJA; Thu,  2 Apr 2020 14:38:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DCE85871FD;
	Thu,  2 Apr 2020 14:37:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C97E41BF42C
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 14:37:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BD11C221B5
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 14:37:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H92KBrubbuGy for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 14:37:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by silver.osuosl.org (Postfix) with ESMTPS id D90BA221A9
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 14:37:56 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id s8so2352625wrt.7
 for <devel@driverdev.osuosl.org>; Thu, 02 Apr 2020 07:37:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=38AkG1J/VasVYvyO8FLPKGFVB9/daSIsdACwJ1jmT6w=;
 b=mV6zDSYqDp5UdxncOWm+lXHPzCxZTPcsxD7Y4qZG6GxtIOI7n2Tt1tjtqODXe1XonP
 OAXcNYyYlMJac/TvM+KVXpF303u1R9YTzAxas6XSeg4X8oEOkNwAVSdGtUffdrDiJtFp
 flyV4X09h+4tTRXQOf0Myw+NBmc3NsNXpSdZAbDjVkQ9BKab39lNcHZswSQYu1Fpp7qj
 CwD3rw5ZWHrB8RwDUhhLS+QuwfTVRKShQNQbrrhdOk14h5wFDHxeHqplJt0dE3v/jO2k
 LMujXX5d5kt24SkX9dQ7Su173WskYyvHna90o4QbwOv3b0cwBqchVgNL2pDMZPI5zpHr
 cHZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=38AkG1J/VasVYvyO8FLPKGFVB9/daSIsdACwJ1jmT6w=;
 b=IEBGFbH1jDgNxnWNxuhgBBelyusErDVhVesw4r6F4K2wsbPrgcUngARbO8bOmkxGef
 0C8FHJAnOKDLvKfC23zVZdFvB1I/dgEXgAoMeeb4rIz7EABB2M7nt4u/ZOpCF+UdPzkm
 2EJC3jjzzOQPKjl6+S6lt+jEn8A6/lYDGiBXBWToUYozE1+1wQFQO8bY7NjO2wBjb6fQ
 WuARQ+LLOgJOS6GYX9bIyOU0CltXB6Ylxx8x1bc8ErFqreTCq+D0meVRHmzLd8/LQKm6
 9oE6lEBHwoiTt2MMqkpnWhR0LX91AJaclmPya/0BOeKWu0SsVK9jNemPi2Kl+FFSvHPk
 l1Ug==
X-Gm-Message-State: AGi0PuZ1uO41FVrn59riLpsUql1R+7BvpuV2FGCZCPE8PapmEF21QirU
 ZbnEbGYjckr/ZqPh+xgVEGg=
X-Google-Smtp-Source: APiQypKP/NzZE8Bp6zRGZQB5jMxxV5ROKksg/0lNUpk/3V8+Un9IDmxt1EQ5jKflYscGyO2USHOJHQ==
X-Received: by 2002:adf:97d0:: with SMTP id t16mr3865783wrb.343.1585838275269; 
 Thu, 02 Apr 2020 07:37:55 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id e5sm7848520wru.92.2020.04.02.07.37.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Apr 2020 07:37:54 -0700 (PDT)
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: add rx0 mipi-phy for rk3399
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
References: <20200402000234.226466-4-helen.koike@collabora.com>
 <970b9e48-e38f-7e7a-3472-7dc5a4737e58@gmail.com> <105956984.FXDh2DO4ZE@diego>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <76211530-73ff-5f36-8915-8bdc036d4369@gmail.com>
Date: Thu, 2 Apr 2020 16:37:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <105956984.FXDh2DO4ZE@diego>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 dafna.hirschfeld@collabora.com, karthik.poduval@gmail.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, robh+dt@kernel.org, hverkuil-cisco@xs4all.nl,
 mark.rutland@arm.com, kernel@collabora.com, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gNC8yLzIwIDQ6MzEgUE0sIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEFtIERvbm5lcnN0YWcs
IDIuIEFwcmlsIDIwMjAsIDE1OjQ4OjAyIENFU1Qgc2NocmllYiBKb2hhbiBKb25rZXI6Cj4+IEhp
IEhlbGVuLAo+Pgo+Pj4gRnJvbTogSGVsZW4gS29pa2UgPGhlbGVuLmtvaWtlQGNvbGxhYm9yYS5j
b20+Cj4+Cj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMz
OTkuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kKPj4+IGlu
ZGV4IDMzY2MyMWZjZjRjMTAuLmZjMDI5NWQyYTY1YTEgMTAwNjQ0Cj4+PiAtLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpCj4+PiArKysgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpCj4+PiBAQCAtMTM5NCw2ICsxMzk0LDE3IEBAIGlv
X2RvbWFpbnM6IGlvLWRvbWFpbnMgewo+Pj4gIAkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4+PiAg
CQl9Owo+Pj4gIAo+Pgo+Pj4gKwkJbWlwaV9kcGh5X3J4MDogbWlwaS1kcGh5LXJ4MCB7Cj4+Cj4+
IEZvciBIZWlrbyBzb3J0IHN5c2NvbkBmZjc3MDAwMCBzdWJub2RlcyBhbHBoYWJldGljYWwgb3Ig
cmVnIHZhbHVlIGZpcnN0Pwo+IAo+IFNpbWlsYXIgdG8gbWFpbiBub2RlcyAuLi4gc28gdGhpbmdz
IHdpdGhvdXQgcmVnIGFscGhhYmV0aWNhbCwKPiB0aGUgcmVzdCBieSByZWcgYWRkcmVzcwo+IAph
bHBoYWJldGljYWwgZmlyc3Q6Cgppby1kb21haW5zCm1pcGktZHBoeS1yeDAKdXNiMi1waHlAZTQ1
MAouQC4uCgpvcgoKd2l0aCByZWcgdmFsdWVzIGZpcnN0OgoKLkAuLgplbW1jX3BoeTogcGh5QGY3
ODAKbWlwaS1kcGh5LXJ4MApwY2llLXBoeQoKPiAKPj4KPj4+ICsJCQljb21wYXRpYmxlID0gInJv
Y2tjaGlwLHJrMzM5OS1taXBpLWRwaHktcngwIjsKPj4+ICsJCQljbG9ja3MgPSA8JmNydSBTQ0xL
X01JUElEUEhZX1JFRj4sCj4+Cj4+PiArCQkJCTwmY3J1IFNDTEtfRFBIWV9SWDBfQ0ZHPiwKPj4+
ICsJCQkJPCZjcnUgUENMS19WSU9fR1JGPjsKPj4KPj4gQWxpZ24gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgXgo+Pgo+Pj4gKwkJCWNsb2NrLW5hbWVzID0gImRwaHktcmVmIiwgImRwaHktY2Zn
IiwgImdyZiI7Cj4+PiArCQkJcG93ZXItZG9tYWlucyA9IDwmcG93ZXIgUkszMzk5X1BEX1ZJTz47
Cj4+PiArCQkJI3BoeS1jZWxscyA9IDwwPjsKPj4+ICsJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+
Pj4gKwkJfTsKPj4+ICsKPj4+ICAJCXUycGh5MDogdXNiMi1waHlAZTQ1MCB7Cj4+PiAgCQkJY29t
cGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzOTktdXNiMnBoeSI7Cj4+PiAgCQkJcmVnID0gPDB4ZTQ1
MCAweDEwPjsKPj4KPj4KPiAKPiAKPiAKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnBy
b2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
