Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D63136D3A0
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Apr 2021 10:05:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AA2BB40554;
	Wed, 28 Apr 2021 08:05:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id es-m_Ake3umI; Wed, 28 Apr 2021 08:05:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2C46040551;
	Wed, 28 Apr 2021 08:05:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 236621BF3C5
 for <devel@linuxdriverproject.org>; Wed, 28 Apr 2021 08:05:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1125C82B1B
 for <devel@linuxdriverproject.org>; Wed, 28 Apr 2021 08:05:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1xc7owjZENwY for <devel@linuxdriverproject.org>;
 Wed, 28 Apr 2021 08:05:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com
 [IPv6:2a00:1450:4864:20::236])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 20165829BB
 for <devel@driverdev.osuosl.org>; Wed, 28 Apr 2021 08:05:07 +0000 (UTC)
Received: by mail-lj1-x236.google.com with SMTP id u25so32914061ljg.7
 for <devel@driverdev.osuosl.org>; Wed, 28 Apr 2021 01:05:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Nps3nttZguJ8BCD0NvcBimYy31g7NyHD2WV72x2rWLs=;
 b=scSO1JI2a1WTmBO2H/Tv1tlocFWHO1F1qZLoPwpZbG2D7xUkdpbBZrcN+R9+dNVG3d
 lx+Gvzn8Z1G/A6pg9rnrjis1Bh+m7iFL2BLoQsJI3JQBnBW1+9QURc7oK6pwP86UQ+4I
 bv/9z8+yk5GYeIObu6e4WXOdwdJ1nPbX9LNB8BuXqK7SVZTVnpOibFdZWaSJQ77JkKkf
 FVKzw2j9pCmFA7Ufk66d5GcyzMeBSLFmqeOPWR3MlmT7Mb8KUiyvJOaytc4tboFfrAWy
 g57cQG+k/ihpkB3mxhHFMyWl414dNqsBmYR4vUoO1qh+PATE3DM5DEI4XBZIUZIXHkWY
 bqQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Nps3nttZguJ8BCD0NvcBimYy31g7NyHD2WV72x2rWLs=;
 b=PooO1/Tp8MfDRZCuWmz+do1eLMPX6Wred+ACcUszCChyi7u/bMBs5tzTPtMlhmdjvT
 9MXabBNxsb2755kOWg8OT/kyyRGBpqJUAAytJX7kerntKPKBDLzg89KiAkDNeio07G+Y
 L3WKwcOvFo+g+SS1jzCPBsKfQ3UprLAvwy196TBgRdNZBvJfvuYE+e4il5Vy0IKexVlC
 J1D1EPf0pKO/qXfrs/RGw5M6h5IaFsH4wz+GSnM1cWOLI2+pOJaJjBoczgI4jabN4TBv
 jC0QVjXmRK771d4Su6vQ16OyAc75zgwKtow94at4qcT/1AkRKubFYILzxqBhLfQpOWc0
 386w==
X-Gm-Message-State: AOAM533Q6Zv2dsDdigwVO5jtvHVpnY45tzIrB7jUyiErrvXlzCgpX36T
 S96SU/SdOpmDKeO6YzGLzgo=
X-Google-Smtp-Source: ABdhPJzdMSR2iHItWodo7Bu1HRxq1zEW2JmCm7rT5HXh8mlSNUuxgSjlcM8R1zaHbOgEbpqbC0RWdA==
X-Received: by 2002:a05:651c:550:: with SMTP id
 q16mr20156382ljp.70.1619597105514; 
 Wed, 28 Apr 2021 01:05:05 -0700 (PDT)
Received: from [192.168.2.145] (109-252-193-102.dynamic.spd-mgts.ru.
 [109.252.193.102])
 by smtp.googlemail.com with ESMTPSA id q9sm522412lfc.201.2021.04.28.01.05.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 28 Apr 2021 01:05:05 -0700 (PDT)
Subject: Re: [PATCH v3 25/79] staging: media: vde: use
 pm_runtime_resume_and_get()
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
References: <cover.1619519080.git.mchehab+huawei@kernel.org>
 <d7fb2d00224d37ba1c6c6e9b73609af95c886844.1619519080.git.mchehab+huawei@kernel.org>
 <2e8bdea5-b2a7-df95-9d93-7c1f2df6158d@gmail.com>
 <20210428092043.380c9d4c@coco.lan>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <433bd38c-aec9-a17e-35ca-8a6fca5fa5ef@gmail.com>
Date: Wed, 28 Apr 2021 11:05:04 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210428092043.380c9d4c@coco.lan>
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
 linuxarm@huawei.com, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 mauro.chehab@huawei.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MjguMDQuMjAyMSAxMDoyMCwgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiINC/0LjRiNC10YI6Cj4gRW0g
VHVlLCAyNyBBcHIgMjAyMSAxNDo0NzowMSArMDMwMAo+IERtaXRyeSBPc2lwZW5rbyA8ZGlnZXR4
QGdtYWlsLmNvbT4gZXNjcmV2ZXU6Cj4gCj4+IDI3LjA0LjIwMjEgMTM6MjYsIE1hdXJvIENhcnZh
bGhvIENoZWhhYiDQv9C40YjQtdGCOgo+Pj4gQEAgLTEwODgsOCArMTA5MCw5IEBAIHN0YXRpYyBp
bnQgdGVncmFfdmRlX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+Pj4gIHsK
Pj4+ICAJc3RydWN0IHRlZ3JhX3ZkZSAqdmRlID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7
Cj4+PiAgCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4+PiArCWludCByZXQ7Cj4+
PiAgCj4+PiAtCXBtX3J1bnRpbWVfZ2V0X3N5bmMoZGV2KTsKPj4+ICsJcmV0ID0gcG1fcnVudGlt
ZV9yZXN1bWVfYW5kX2dldChkZXYpOyAgCj4+Cj4+IFNob3VsZCBiZSBjbGVhbmVyIHRvIHJldHVy
biBlcnJvciBkaXJlY3RseSBoZXJlLCBJTU8uCj4gCj4gSSBkb3VibGUtY2hlY2tlZCBob3cgZHJp
dmVycy9iYXNlL3BsYXRmb3JtLmMgZGVhbHMgd2l0aCBub24temVybwo+IHJldHVybnMgYXQgdGhl
IC5yZW1vdmUgbWV0aG9kOgo+IAo+IAlzdGF0aWMgaW50IHBsYXRmb3JtX3JlbW92ZShzdHJ1Y3Qg
ZGV2aWNlICpfZGV2KQo+IAl7Cj4gCSAgICAgICAgc3RydWN0IHBsYXRmb3JtX2RyaXZlciAqZHJ2
ID0gdG9fcGxhdGZvcm1fZHJpdmVyKF9kZXYtPmRyaXZlcik7Cj4gCSAgICAgICAgc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqZGV2ID0gdG9fcGxhdGZvcm1fZGV2aWNlKF9kZXYpOwo+IAkKPiAJICAg
ICAgICBpZiAoZHJ2LT5yZW1vdmUpIHsKPiAJICAgICAgICAgICAgICAgIGludCByZXQgPSBkcnYt
PnJlbW92ZShkZXYpOwo+IAkKPiAJICAgICAgICAgICAgICAgIGlmIChyZXQpCj4gCSAgICAgICAg
ICAgICAgICAgICAgICAgIGRldl93YXJuKF9kZXYsICJyZW1vdmUgY2FsbGJhY2sgcmV0dXJuZWQg
YSBub24temVybyB2YWx1ZS4gVGhpcyB3aWxsIGJlIGlnbm9yZWQuXG4iKTsKPiAJICAgICAgICB9
Cj4gCSAgICAgICAgZGV2X3BtX2RvbWFpbl9kZXRhY2goX2RldiwgdHJ1ZSk7Cj4gCQo+IAkgICAg
ICAgIHJldHVybiAwOwo+IAl9Cj4gCj4gQmFzaWNhbGx5LCBpdCB3aWxsIHByaW50IGEgbWVzc2Fn
ZSBidXQgd2lsbCBpZ25vcmUgd2hhdGV2ZXIgaGFwcGVucwo+IGFmdGVyd2FyZHMuCj4gCj4gU28s
IGlmIHRoZSBkcml2ZXIgaXMgY2hhbmdlZCB0byByZXR1cm4gYW4gZXJyb3IgdGhlcmUsIGl0IHdp
bGwgbGVhawo+IHJlc291cmNlcy4KCkluZGVlZCwgdGhhbmsgeW91LiBCdXQgdGhlbiB0aGUgcG1f
cnVudGltZV9nZXRfc3luYygpIHNob3VsZCBiZSBtb3JlCmFwcHJvcHJpYXRlIHNpbmNlIHRoaXMg
ZnVuY3Rpb24gaXMgc3BlY2lmaWNhbGx5IG1hZGUgZm9yIHN1Y2ggY2FzZXMKd2hlcmUgcmV0dXJu
ZWQgdmFsdWUgaXMgaWdub3JlZC4KCkEgYmV0dGVyIG9wdGlvbiBjb3VsZCBiZSBiZXR0ZXIgdG8g
YWRkIGEgY2xhcmlmeWluZyBjb21tZW50IHRvIHRoZSBjb2RlCnJhdGhlciB0aGFuIHRvIGNoYW5n
ZSBpdCB0byBhIHZhcmlhbnQgd2hpY2ggaW50cm9kdWNlcyBjb25mdXNpb24sIElNTy4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcg
bGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhk
cml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
