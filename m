Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D9AAA36C583
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Apr 2021 13:47:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3CB3783B6B;
	Tue, 27 Apr 2021 11:47:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TRpbET37Md_o; Tue, 27 Apr 2021 11:47:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E97583A56;
	Tue, 27 Apr 2021 11:47:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4F87E1BF5B5
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 11:47:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3DBF983B58
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 11:47:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZZCYcfbcEztU for <devel@linuxdriverproject.org>;
 Tue, 27 Apr 2021 11:47:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8C10783A56
 for <devel@driverdev.osuosl.org>; Tue, 27 Apr 2021 11:47:04 +0000 (UTC)
Received: by mail-lf1-x12c.google.com with SMTP id b23so10660715lfv.8
 for <devel@driverdev.osuosl.org>; Tue, 27 Apr 2021 04:47:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=6mN7UJosAzy0Fgag1DI+J5II0Cv8JwYcpqR0ZdaZ6Pw=;
 b=VXVdlKxet0oHyPdjnO6HFu2QcGCTj2OnpNUQBPewkERKV+sw2dsktG1hLLOs3DcZaO
 9DOXKyYVY6Tza+Oa/28VnQIzzIzhF2iS6NwC91VoSxakURxdNl3e2QqsRBj1NBRCZkwI
 edbTrVaohbDwNfjnP8OUaT/PNSySXJdBF0wLnz/EPNa5DOaZhXwbWlrDuKzgVuPNwiDD
 2Zdpm0gQ+laaB0mM1y4PZOUmOYhtytVWEnFv88OojOpD3ngTCQTKjrnLE8Q6NbEPBWQS
 oNfsAvXkSyXdQlDMnf66Ju89qCVFs0AiOCZDF/iVmjAZJXhgeASyrIYcCc8REWBl2hxo
 r5VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6mN7UJosAzy0Fgag1DI+J5II0Cv8JwYcpqR0ZdaZ6Pw=;
 b=FKmsfUqnngMj6agkqgHqroH+PS1prWi/5bA9L545x57Z1LFUlKL+8r3cEwJBSm7rZ0
 576Dmd+lFB9b9k3hzDpGWDBUDzpOTu/9I9l/xRNEjE5izIuWFDS0NDwDY92hV74uZee8
 3jrEfnRFLUoKz283diIeCz/LTS3xR1aS4pceBLN5KmENgNNb0Erj4YLTbOzJuxmIkH7k
 J/t6KloduFmXOiW0s7IyfIf1HjnI/4vjXLNX8lF6Gn2R98WhKVaxWu5AeFbnNco/5wc/
 xBevRHMizkuCNsCnkhtgAAPnCos9Ae/YK6cEZ8XjvGXEr34saDI1tKZNI4/f3tM/4pAI
 vmng==
X-Gm-Message-State: AOAM530CMPIHiusAWmGZerqvthHmIqWc/P/TgpsRYaRzUhkTxShfkniM
 USaRJ6i5XIhPZ1DM/2pLAxs=
X-Google-Smtp-Source: ABdhPJx6kko3TABajn1fiMhwaIKekxa1aDYYmrMmB2KvhSCMsDtZmlLmkmnRpfkACnQvOdILCmZEfA==
X-Received: by 2002:a19:a40a:: with SMTP id q10mr16261069lfc.302.1619524022256; 
 Tue, 27 Apr 2021 04:47:02 -0700 (PDT)
Received: from [192.168.2.145] (109-252-193-102.dynamic.spd-mgts.ru.
 [109.252.193.102])
 by smtp.googlemail.com with ESMTPSA id i8sm363303ljb.43.2021.04.27.04.47.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 27 Apr 2021 04:47:01 -0700 (PDT)
Subject: Re: [PATCH v3 25/79] staging: media: vde: use
 pm_runtime_resume_and_get()
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
References: <cover.1619519080.git.mchehab+huawei@kernel.org>
 <d7fb2d00224d37ba1c6c6e9b73609af95c886844.1619519080.git.mchehab+huawei@kernel.org>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <2e8bdea5-b2a7-df95-9d93-7c1f2df6158d@gmail.com>
Date: Tue, 27 Apr 2021 14:47:01 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <d7fb2d00224d37ba1c6c6e9b73609af95c886844.1619519080.git.mchehab+huawei@kernel.org>
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

MjcuMDQuMjAyMSAxMzoyNiwgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiINC/0LjRiNC10YI6Cj4gQEAg
LTEwODgsOCArMTA5MCw5IEBAIHN0YXRpYyBpbnQgdGVncmFfdmRlX3JlbW92ZShzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICpwZGV2KQo+ICB7Cj4gIAlzdHJ1Y3QgdGVncmFfdmRlICp2ZGUgPSBwbGF0
Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KTsKPiAgCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5k
ZXY7Cj4gKwlpbnQgcmV0Owo+ICAKPiAtCXBtX3J1bnRpbWVfZ2V0X3N5bmMoZGV2KTsKPiArCXJl
dCA9IHBtX3J1bnRpbWVfcmVzdW1lX2FuZF9nZXQoZGV2KTsKClNob3VsZCBiZSBjbGVhbmVyIHRv
IHJldHVybiBlcnJvciBkaXJlY3RseSBoZXJlLCBJTU8uCgo+ICAJcG1fcnVudGltZV9kb250X3Vz
ZV9hdXRvc3VzcGVuZChkZXYpOwo+ICAJcG1fcnVudGltZV9kaXNhYmxlKGRldik7Cj4gIAo+IEBA
IC0xMDk3LDcgKzExMDAsOCBAQCBzdGF0aWMgaW50IHRlZ3JhX3ZkZV9yZW1vdmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKPiAgCSAqIEJhbGFuY2UgUlBNIHN0YXRlLCB0aGUgVkRFIHBv
d2VyIGRvbWFpbiBpcyBsZWZ0IE9OIGFuZCBoYXJkd2FyZQo+ICAJICogaXMgY2xvY2stZ2F0ZWQu
IEl0J3Mgc2FmZSB0byByZWJvb3QgbWFjaGluZSBub3cuCj4gIAkgKi8KPiAtCXBtX3J1bnRpbWVf
cHV0X25vaWRsZShkZXYpOwo+ICsJaWYgKHJldCA+PSAwKQo+ICsJCXBtX3J1bnRpbWVfcHV0X25v
aWRsZShkZXYpOwo+ICAJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHZkZS0+Y2xrKTsKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlz
dApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2
ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
