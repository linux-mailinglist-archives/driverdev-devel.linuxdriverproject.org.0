Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A791369FFC
	for <lists+driverdev-devel@lfdr.de>; Sat, 24 Apr 2021 09:35:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 12C6940135;
	Sat, 24 Apr 2021 07:35:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1BXRhdPuTkWC; Sat, 24 Apr 2021 07:35:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4EDFB40133;
	Sat, 24 Apr 2021 07:35:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E57E41BF2F6
 for <devel@linuxdriverproject.org>; Sat, 24 Apr 2021 07:35:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E200E40133
 for <devel@linuxdriverproject.org>; Sat, 24 Apr 2021 07:35:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hs6sMk02aESl for <devel@linuxdriverproject.org>;
 Sat, 24 Apr 2021 07:35:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com
 [IPv6:2a00:1450:4864:20::233])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1F74540132
 for <devel@driverdev.osuosl.org>; Sat, 24 Apr 2021 07:35:25 +0000 (UTC)
Received: by mail-lj1-x233.google.com with SMTP id a5so21156333ljk.0
 for <devel@driverdev.osuosl.org>; Sat, 24 Apr 2021 00:35:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=2xzt0TwFb7j5MFVkCwVBVCaWI3Xt54Nzm8hUuSX7Cvs=;
 b=hxPk+ZwFtxfPuYj5FheeGacrvGCGSaPpyL0IS7nUKDIL26hgkb/qRm5KgE55q23mQw
 cNkdvFrvG4kUxeGFYQ1zfDOhLvqMW8HKegQe0eiIM+Wc/UnCbkNBP3VUDQC/ONeDjuHY
 LI6TBb2CQJFKEQlh17XyVy5KMSvZKbTvJsGn6Yrv1C/3PZRLJL8R9o01b9tLpwj/omhp
 Pbe4hNlMCfmbIttqVq4CoXmvkqE8HiJWiaXQ011FhxJlm2Jik0F4UWSDgVHu8kfwx0PL
 tOwyGKSt4LP2VREo1nU2pNfMiJD4oOQ9dtlDBYh+IKMEwo2j5GZpdFGSs1doykGBkcr3
 hsmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2xzt0TwFb7j5MFVkCwVBVCaWI3Xt54Nzm8hUuSX7Cvs=;
 b=ZE604ib25Yp9SdYv2rZ5ac6qMpUQXfHxMki2ghqYDef4gak1/Ikf8ZDHL4UsjKCf5s
 /6j3celQLx4ObcyUmS4NVP2P19oqKrBtBpWawLzlwjML8ugNAHj0KHNkRiVTGyBJ/MC4
 iG54/O1yPXzPsJE7iGablZsyRfC3dgFP7ZRJbnG737zcVavQVMxDJR+6wIwOqS09pNyF
 5BC2N7DE71L5/lVQO8UDOiT6L+Wkd+iExsMro/5muarAN3PcOFZ21qjS9ZUhrHafqVOn
 uRb4bizXGahoqCsi8sEw8Nhx4s7RamatAeaktAd2Dx4XJLR8iUzrY7mS4U2kahp3yakc
 GWuQ==
X-Gm-Message-State: AOAM530K81l414SfP7i1Jb2KlIBRNM0P4hYYu6WNT04skEzCiWOc/QTX
 LhZ5ByiM6LsvfM7fSeqVxX4=
X-Google-Smtp-Source: ABdhPJz3hk6pvojBuze7LU7uwmy4xRRaSDqJeO49ImDYhiosWRVfDwrj9DXybLRRMSMDys3mqsskbg==
X-Received: by 2002:a2e:b6c7:: with SMTP id m7mr4974245ljo.241.1619249724022; 
 Sat, 24 Apr 2021 00:35:24 -0700 (PDT)
Received: from [192.168.2.145] (109-252-193-103.dynamic.spd-mgts.ru.
 [109.252.193.103])
 by smtp.googlemail.com with ESMTPSA id s8sm762729ljg.16.2021.04.24.00.35.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 24 Apr 2021 00:35:23 -0700 (PDT)
Subject: Re: [PATCH 17/78] staging: media: vde: use pm_runtime_resume_and_get()
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
References: <cover.1619191723.git.mchehab+huawei@kernel.org>
 <0eeb886803679cd908cb4576d35b2314993abd2c.1619191723.git.mchehab+huawei@kernel.org>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <2349831b-e7cd-d38d-fc19-5fabf06f773e@gmail.com>
Date: Sat, 24 Apr 2021 10:35:22 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <0eeb886803679cd908cb4576d35b2314993abd2c.1619191723.git.mchehab+huawei@kernel.org>
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

MjQuMDQuMjAyMSAwOTo0NCwgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiINC/0LjRiNC10YI6Cj4gQ29t
bWl0IGRkODA4OGQ1YTg5NiAoIlBNOiBydW50aW1lOiBBZGQgcG1fcnVudGltZV9yZXN1bWVfYW5k
X2dldCB0byBkZWFsIHdpdGggdXNhZ2UgY291bnRlciIpCj4gYWRkZWQgcG1fcnVudGltZV9yZXN1
bWVfYW5kX2dldCgpIGluIG9yZGVyIHRvIGF1dG9tYXRpY2FsbHkgaGFuZGxlCj4gZGV2LT5wb3dl
ci51c2FnZV9jb3VudCBkZWNyZW1lbnQgb24gZXJyb3JzLgo+IAo+IFVzZSB0aGUgbmV3IEFQSSwg
aW4gb3JkZXIgdG8gY2xlYW51cCB0aGUgZXJyb3IgY2hlY2sgbG9naWMuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFiK2h1YXdlaUBrZXJuZWwub3JnPgo+
IC0tLQo+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL3ZkZS5jIHwgMTYgKysrKysr
KysrKy0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlv
bnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS92
ZGUuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUvdmRlLmMKPiBpbmRleCAyODg0
NWI1YmFmYWYuLjg5MzZmMTQwYTI0NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVk
aWEvdGVncmEtdmRlL3ZkZS5jCj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZk
ZS92ZGUuYwo+IEBAIC03NzUsOSArNzc1LDkgQEAgc3RhdGljIGludCB0ZWdyYV92ZGVfaW9jdGxf
ZGVjb2RlX2gyNjQoc3RydWN0IHRlZ3JhX3ZkZSAqdmRlLAo+ICAJaWYgKHJldCkKPiAgCQlnb3Rv
IHJlbGVhc2VfZHBiX2ZyYW1lczsKPiAgCj4gLQlyZXQgPSBwbV9ydW50aW1lX2dldF9zeW5jKGRl
dik7Cj4gKwlyZXQgPSBwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0KGRldik7Cj4gIAlpZiAocmV0
IDwgMCkKPiAtCQlnb3RvIHB1dF9ydW50aW1lX3BtOwo+ICsJCWdvdG8gdW5sb2NrOwo+ICAKPiAg
CS8qCj4gIAkgKiBXZSByZWx5IG9uIHRoZSBWREUgcmVnaXN0ZXJzIHJlc2V0IHZhbHVlLCBvdGhl
cndpc2UgVkRFCj4gQEAgLTg0Myw2ICs4NDMsOCBAQCBzdGF0aWMgaW50IHRlZ3JhX3ZkZV9pb2N0
bF9kZWNvZGVfaDI2NChzdHJ1Y3QgdGVncmFfdmRlICp2ZGUsCj4gIHB1dF9ydW50aW1lX3BtOgo+
ICAJcG1fcnVudGltZV9tYXJrX2xhc3RfYnVzeShkZXYpOwo+ICAJcG1fcnVudGltZV9wdXRfYXV0
b3N1c3BlbmQoZGV2KTsKPiArCj4gK3VubG9jazoKPiAgCW11dGV4X3VubG9jaygmdmRlLT5sb2Nr
KTsKPiAgCj4gIHJlbGVhc2VfZHBiX2ZyYW1lczoKPiBAQCAtMTA2OSw4ICsxMDcxLDggQEAgc3Rh
dGljIGludCB0ZWdyYV92ZGVfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAg
CSAqIHBvd2VyLWN5Y2xlIGl0IGluIG9yZGVyIHRvIHB1dCBoYXJkd2FyZSBpbnRvIGEgcHJlZGlj
dGFibGUgbG93ZXIKPiAgCSAqIHBvd2VyIHN0YXRlLgo+ICAJICovCj4gLQlwbV9ydW50aW1lX2dl
dF9zeW5jKGRldik7Cj4gLQlwbV9ydW50aW1lX3B1dChkZXYpOwo+ICsJaWYgKHBtX3J1bnRpbWVf
cmVzdW1lX2FuZF9nZXQoZGV2KSA+PSAwKQo+ICsJCXBtX3J1bnRpbWVfcHV0KGRldik7Cj4gIAo+
ICAJcmV0dXJuIDA7Cj4gIAo+IEBAIC0xMDg4LDggKzEwOTAsOSBAQCBzdGF0aWMgaW50IHRlZ3Jh
X3ZkZV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgewo+ICAJc3RydWN0
IHRlZ3JhX3ZkZSAqdmRlID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7Cj4gIAlzdHJ1Y3Qg
ZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2Owo+ICsJaW50IHJldDsKPiAgCj4gLQlwbV9ydW50aW1l
X2dldF9zeW5jKGRldik7Cj4gKwlyZXQgPSBwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0KGRldik7
Cj4gIAlwbV9ydW50aW1lX2RvbnRfdXNlX2F1dG9zdXNwZW5kKGRldik7Cj4gIAlwbV9ydW50aW1l
X2Rpc2FibGUoZGV2KTsKPiAgCj4gQEAgLTEwOTcsNyArMTEwMCw4IEBAIHN0YXRpYyBpbnQgdGVn
cmFfdmRlX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJICogQmFsYW5j
ZSBSUE0gc3RhdGUsIHRoZSBWREUgcG93ZXIgZG9tYWluIGlzIGxlZnQgT04gYW5kIGhhcmR3YXJl
Cj4gIAkgKiBpcyBjbG9jay1nYXRlZC4gSXQncyBzYWZlIHRvIHJlYm9vdCBtYWNoaW5lIG5vdy4K
PiAgCSAqLwo+IC0JcG1fcnVudGltZV9wdXRfbm9pZGxlKGRldik7Cj4gKwlpZiAocmV0ID49IDAp
Cj4gKwkJcG1fcnVudGltZV9wdXRfbm9pZGxlKGRldik7Cj4gIAljbGtfZGlzYWJsZV91bnByZXBh
cmUodmRlLT5jbGspOwo+ICAKPiAgCW1pc2NfZGVyZWdpc3RlcigmdmRlLT5taXNjZGV2KTsKPiAK
CkhlbGxvIE1hdXJvLAoKVGhhbmsgeW91IHZlcnkgbXVjaCBmb3IgdGhlIHBhdGNoLiBJdCBsb29r
cyB0byBtZSB0aGF0IHRoZSBvcmlnaW5hbAp2YXJpYW50IHdhcyBhIGJpdCBzaW1wbGVyLCB0aGlz
IHBhdGNoIGFkZHMgbW9yZSBjb2RlIGxpbmVzIHdpdGhvdXQKY2hhbmdpbmcgdGhlIHByZXZpb3Vz
IGJlaGF2aW91ci4gT3IgYW0gSSBtaXNzaW5nIHNvbWV0aGluZz8KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxp
bnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qu
b3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
