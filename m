Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0703723A6A2
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Aug 2020 14:51:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DB0B287AAF;
	Mon,  3 Aug 2020 12:51:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dYVdHJ7V9KsX; Mon,  3 Aug 2020 12:51:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EE077879F5;
	Mon,  3 Aug 2020 12:51:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8F2A31BF3C5
 for <devel@linuxdriverproject.org>; Mon,  3 Aug 2020 12:51:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 51B7A20432
 for <devel@linuxdriverproject.org>; Mon,  3 Aug 2020 12:51:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F9-B+Tgflobm for <devel@linuxdriverproject.org>;
 Mon,  3 Aug 2020 12:51:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by silver.osuosl.org (Postfix) with ESMTPS id BEDD620397
 for <devel@driverdev.osuosl.org>; Mon,  3 Aug 2020 12:51:20 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id h19so39485676ljg.13
 for <devel@driverdev.osuosl.org>; Mon, 03 Aug 2020 05:51:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=E1PtArgjfRMgQPkbPEpkNWZtVLcHwOpeacE7i+LTE34=;
 b=XfvhYsgHRryIe56E2n3nbUW+sRNhQGKbCAxxYdMS79gHcrQZ3iwoA5THCyJwqFvMan
 zEg/iqNxdvpeglrBf4i+8ZZVqTGFskKUU8FVFpIykIEzfv+0tZbp91OyTbmA94ImGJpD
 aiVKRIlTvCjZVCsOPqyf+O3aJFPX92Zd01jLqLbAzaU7hhBwN4QGg3DhjajdjnHmC4/U
 qABVxbj+TfwdOe1Fe/U7hspoM8HDJclIw3EHFBTAIpggmogkEyMtGhG2Ta4hRl3Qgaa5
 Lxu+J9+MF95vx2Mvy5InboBYs1/nDLoL6jgmsnlpD5G4+3UjmxAcR3tm4+AxiM5/nPZA
 LAxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=E1PtArgjfRMgQPkbPEpkNWZtVLcHwOpeacE7i+LTE34=;
 b=jXb7LB3W6PtEsedSL8cDN3gTQlaAw4uZCOVkSsdixg+NL9Rrx+oGxdfFZkcIiW/3q9
 OEFzcQ9iLTM5QuFRP0daxZEO5c58phPG7Z2ucTGmK8Ovwc4BG4nnTMgIExZ6TrJPWHuC
 k6ta3qUV1hvFPqNNfXaazbW4ToEG498BNexuJT/q/1y39F14U+mygUslg0Lms8wa/6Bq
 V21KSlUY6Pm9+ExJxgmSRMbww1uPlPoIw1gxFBT8T2i3PoPBaSRRYxpp7GU1lbRGISE6
 wi7XqRVOIppwKAGCfZFfqs4rbXlMsbvxQQs/+ttOtESDn8g4UyAA+HTyJY1M2Db2lFTD
 itBQ==
X-Gm-Message-State: AOAM533bxB5dHFL01TvP7ku7bAbJJ522ZVrygWlyWwm6FjQxBQ28L3cL
 qtQMggHsUYBLc7dd7ZOJD+Q=
X-Google-Smtp-Source: ABdhPJzz8tZyKT2FTlauL+UMMliVTqWJRdc4UfHZdfhNi5L45Su0vIUq+s+xHJd9w4s7odh9priVvg==
X-Received: by 2002:a2e:7f0f:: with SMTP id a15mr6801520ljd.454.1596459078782; 
 Mon, 03 Aug 2020 05:51:18 -0700 (PDT)
Received: from [192.168.2.145] (94-29-41-50.dynamic.spd-mgts.ru. [94.29.41.50])
 by smtp.googlemail.com with ESMTPSA id t20sm876625ljd.12.2020.08.03.05.51.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 03 Aug 2020 05:51:18 -0700 (PDT)
Subject: Re: [PATCH -next] media: staging: tegra-vde: Mark
 tegra_vde_runtime_suspend as __maybe_unused
To: YueHaibing <yuehaibing@huawei.com>, mchehab@kernel.org,
 gregkh@linuxfoundation.org, thierry.reding@gmail.com, jonathanh@nvidia.com,
 hverkuil-cisco@xs4all.nl
References: <20200803115901.44068-1-yuehaibing@huawei.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <721b8d01-5d7e-09c6-5f86-705130ab31a9@gmail.com>
Date: Mon, 3 Aug 2020 15:51:17 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200803115901.44068-1-yuehaibing@huawei.com>
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
Cc: linux-tegra@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MDMuMDguMjAyMCAxNDo1OSwgWXVlSGFpYmluZyDQv9C40YjQtdGCOgo+IElmIENPTkZJR19QTSBp
cyBub3Qgc2V0LCBnY2Mgd2FybnM6Cj4gCj4gZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZk
ZS92ZGUuYzo5MTY6MTI6Cj4gIHdhcm5pbmc6ICd0ZWdyYV92ZGVfcnVudGltZV9zdXNwZW5kJyBk
ZWZpbmVkIGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtZnVuY3Rpb25dCj4gCj4gTWFrZSBpdCBfX21h
eWJlX3VudXNlZCB0byBmaXggdGhpcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBZdWVIYWliaW5nIDx5
dWVoYWliaW5nQGh1YXdlaS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdy
YS12ZGUvdmRlLmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVncmEt
dmRlL3ZkZS5jIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS92ZGUuYwo+IGluZGV4
IGEzYzI0ZDk2ZDViOS4uMmQwNDNkNTE4ZWVmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc3RhZ2lu
Zy9tZWRpYS90ZWdyYS12ZGUvdmRlLmMKPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVn
cmEtdmRlL3ZkZS5jCj4gQEAgLTkxMyw3ICs5MTMsNyBAQCBzdGF0aWMgaXJxcmV0dXJuX3QgdGVn
cmFfdmRlX2lzcihpbnQgaXJxLCB2b2lkICpkYXRhKQo+ICAJcmV0dXJuIElSUV9IQU5ETEVEOwo+
ICB9Cj4gIAo+IC1zdGF0aWMgaW50IHRlZ3JhX3ZkZV9ydW50aW1lX3N1c3BlbmQoc3RydWN0IGRl
dmljZSAqZGV2KQo+ICtzdGF0aWMgX19tYXliZV91bnVzZWQgaW50IHRlZ3JhX3ZkZV9ydW50aW1l
X3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQo+ICB7Cj4gIAlzdHJ1Y3QgdGVncmFfdmRlICp2
ZGUgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKPiAgCWludCBlcnI7Cj4gCgpIZWxsbyBZdWUsCgpT
aG91bGRuJ3QgdGhlIHRlZ3JhX3ZkZV9ydW50aW1lX3Jlc3VtZSgpIGJlIG1hcmtlZCBhcyB3ZWxs
PwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBt
YWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2
LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
