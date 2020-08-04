Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E6D23B4B6
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Aug 2020 07:58:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CEC698450D;
	Tue,  4 Aug 2020 05:58:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DbgPny07jQow; Tue,  4 Aug 2020 05:58:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 94317844AF;
	Tue,  4 Aug 2020 05:58:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8C6801BF2BD
 for <devel@linuxdriverproject.org>; Tue,  4 Aug 2020 05:58:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7DC8520429
 for <devel@linuxdriverproject.org>; Tue,  4 Aug 2020 05:58:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qvqYU08EHfTs for <devel@linuxdriverproject.org>;
 Tue,  4 Aug 2020 05:58:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 22CF320424
 for <devel@driverdev.osuosl.org>; Tue,  4 Aug 2020 05:58:26 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id s16so26976505ljc.8
 for <devel@driverdev.osuosl.org>; Mon, 03 Aug 2020 22:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=PovWtt/hyyq7GqZJhadvZnSefeeWx2retmil7K8DBl0=;
 b=j512w+piXkOClqZwk8PPWIIwmv0LZ2ToLx2E5QqSFqoaeD8Z210SHobH0nWqZ457K6
 37EtTc5wYusFkJcn1CXIOuJFGrldIzv38iLCWPhavlPqOmjjQ1AV7t02LJhB0llWOuD8
 PXpY45pb4tskFB9KonqhdxBL//A0ASC5mkelYHe4BtAt7ichpEF5SingqlUZLUHVGclZ
 rW4+Z6zePywYsuwkHH2QF+OCzTGGZGlaxmI7R+31SSUeGC9Mjpaca05Lf9QL7p5BkLpt
 omzrh6yFiKSIOAJXpO7jP/htzke0kGvBi6eeDRCXNkiAyLhXFE2V40g3sr4dni2+dSxu
 iDtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=PovWtt/hyyq7GqZJhadvZnSefeeWx2retmil7K8DBl0=;
 b=GKoN5n/VCUYruThikINzAw8F/ZronWDcEXghE03NWwWlcw4hzsqXgJC4BoTlWKmN5K
 F9ZlL3uTXRaHIi4A4GlLdAlmQCdHP4lq6Jbl4Sg5E80HYCnTLkhhzZKeAVG+ca+J1CzF
 1+yUgEMgJfK2gGknbBWZah3hUfzXlt1c4wNMFAqWpaKMrBfqH564H8vkijKe2+ABFT4Z
 FZEUYoTizIYiIxV8p632qrYUegJVV3fgo8nXcw750VimdiaWHeCAsh3tUL9iXOlEg0rg
 hXPdPl5Pk5qWlscMUCYt4etNAhFjL2PZ7/j3cG1Au406r/23W9j9oP0RxSvzbZITptaJ
 YQhA==
X-Gm-Message-State: AOAM532nQBGbTJiVZ5IOBaoGultWRvSyzepDKFtY9c6+NhtLgQO41pAf
 3yn0QvzHLIgFlyKKPvikBpM=
X-Google-Smtp-Source: ABdhPJw+sd1rKTXZJUSBPB0N65PD6421E06QjDff/C5/PXiL1pCUKBh5p9a8YKXRX13MwMy3rIgcRA==
X-Received: by 2002:a2e:b55c:: with SMTP id a28mr981400ljn.107.1596520704054; 
 Mon, 03 Aug 2020 22:58:24 -0700 (PDT)
Received: from [192.168.2.145] (94-29-41-50.dynamic.spd-mgts.ru. [94.29.41.50])
 by smtp.googlemail.com with ESMTPSA id m20sm6546686lfb.72.2020.08.03.22.58.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 03 Aug 2020 22:58:23 -0700 (PDT)
Subject: Re: [PATCH v2 -next] media: staging: tegra-vde: Mark
 tegra_vde_runtime_suspend/resume as __maybe_unused
To: YueHaibing <yuehaibing@huawei.com>, mchehab@kernel.org,
 gregkh@linuxfoundation.org, thierry.reding@gmail.com, jonathanh@nvidia.com,
 hverkuil-cisco@xs4all.nl
References: <20200803115901.44068-1-yuehaibing@huawei.com>
 <20200804014137.45444-1-yuehaibing@huawei.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <709889ed-7757-ab5b-53c9-a061ae062d08@gmail.com>
Date: Tue, 4 Aug 2020 08:58:22 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200804014137.45444-1-yuehaibing@huawei.com>
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

MDQuMDguMjAyMCAwNDo0MSwgWXVlSGFpYmluZyDQv9C40YjQtdGCOgo+IElmIENPTkZJR19QTSBp
cyBub3Qgc2V0LCBnY2Mgd2FybnM6Cj4gCj4gZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZk
ZS92ZGUuYzo5MTY6MTI6Cj4gIHdhcm5pbmc6ICd0ZWdyYV92ZGVfcnVudGltZV9zdXNwZW5kJyBk
ZWZpbmVkIGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtZnVuY3Rpb25dCj4gCj4gTWFrZSBpdCBfX21h
eWJlX3VudXNlZCB0byBmaXggdGhpcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBZdWVIYWliaW5nIDx5
dWVoYWliaW5nQGh1YXdlaS5jb20+Cj4gLS0tCj4gdjI6IGJvdGggc3VzcGVuZCBhbmQgcmVzdW1l
IGZ1bmN0aW9ucyBtYXJrZWQKPiAtLS0KPiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZk
ZS92ZGUuYyB8IDQgKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVncmEt
dmRlL3ZkZS5jIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS92ZGUuYwo+IGluZGV4
IGEzYzI0ZDk2ZDViOS4uMjg4NDViNWJhZmFmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc3RhZ2lu
Zy9tZWRpYS90ZWdyYS12ZGUvdmRlLmMKPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVn
cmEtdmRlL3ZkZS5jCj4gQEAgLTkxMyw3ICs5MTMsNyBAQCBzdGF0aWMgaXJxcmV0dXJuX3QgdGVn
cmFfdmRlX2lzcihpbnQgaXJxLCB2b2lkICpkYXRhKQo+ICAJcmV0dXJuIElSUV9IQU5ETEVEOwo+
ICB9Cj4gIAo+IC1zdGF0aWMgaW50IHRlZ3JhX3ZkZV9ydW50aW1lX3N1c3BlbmQoc3RydWN0IGRl
dmljZSAqZGV2KQo+ICtzdGF0aWMgX19tYXliZV91bnVzZWQgaW50IHRlZ3JhX3ZkZV9ydW50aW1l
X3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQo+ICB7Cj4gIAlzdHJ1Y3QgdGVncmFfdmRlICp2
ZGUgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKPiAgCWludCBlcnI7Cj4gQEAgLTkyOSw3ICs5Mjks
NyBAQCBzdGF0aWMgaW50IHRlZ3JhX3ZkZV9ydW50aW1lX3N1c3BlbmQoc3RydWN0IGRldmljZSAq
ZGV2KQo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gLXN0YXRpYyBpbnQgdGVncmFfdmRlX3J1bnRp
bWVfcmVzdW1lKHN0cnVjdCBkZXZpY2UgKmRldikKPiArc3RhdGljIF9fbWF5YmVfdW51c2VkIGlu
dCB0ZWdyYV92ZGVfcnVudGltZV9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQo+ICB7Cj4gIAlz
dHJ1Y3QgdGVncmFfdmRlICp2ZGUgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKPiAgCWludCBlcnI7
Cj4gCgpUaGFua3MhCgpSZXZpZXdlZC1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkaWdldHhAZ21haWwu
Y29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZl
bCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVy
ZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2
ZWwK
