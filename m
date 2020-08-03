Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67AFB23A81D
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Aug 2020 16:11:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EEF4D87535;
	Mon,  3 Aug 2020 14:11:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DdQaAeeyca6D; Mon,  3 Aug 2020 14:11:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6870B86A07;
	Mon,  3 Aug 2020 14:11:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1C6871BF3AD
 for <devel@linuxdriverproject.org>; Mon,  3 Aug 2020 14:11:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 18DBF851E5
 for <devel@linuxdriverproject.org>; Mon,  3 Aug 2020 14:11:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2AsDSWVGADTE for <devel@linuxdriverproject.org>;
 Mon,  3 Aug 2020 14:11:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2122A81722
 for <devel@driverdev.osuosl.org>; Mon,  3 Aug 2020 14:11:27 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id w25so4339098ljo.12
 for <devel@driverdev.osuosl.org>; Mon, 03 Aug 2020 07:11:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=YH7oVYHUYOmF2ZJdLJ9+nyMxPgXidrzPU6lX6vlVRJY=;
 b=ZMmlG02vyjbYZRIKxDsPQ1IWCfK2i1G9Zv0ChJdx6D3BsN7+02eLisw6oxRkploX1E
 81SeGVNSYrZwclL6vrSDB/9ESU480wBTty8BvTlgw08fRVilSJ5bK6m5sYSz/94iW2K2
 ByggkqK70WXpRT8cpGoti4+4YMnO+rWxEf37UtRVjde7+1JZgSdvFB2js2s/Rv+1SW30
 YgRjt4wq6xozFBHT/WSBuvNRWOkHAPIdITsQLBJsTNPAnJdK/4eIBmpOVuCLwrvahkIw
 W9CiTOdwjKkymHWiBw7OVzs6vgdDKi4PfaC/xtL6fpGp7Glu1qgDCoVdXeD5vDtkf1bK
 C7tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YH7oVYHUYOmF2ZJdLJ9+nyMxPgXidrzPU6lX6vlVRJY=;
 b=mAduEQN1nxWxSAWOebaPgiJicd5o+Fpz38Iqsq3xNq+W7M5My0HGJc7kAzEbPIvSpK
 HPh1sqxbxohUT4BGS1eM5cp6+ktEXorXbfaLmQQwlwnth9gUwFI/yT7LaIK/CJp3bVkm
 rzIZQ+92KPcR5Rzvtqjg4Wvp/OX0i9Yvzn/YTavjgIc6riZk27Sxjt1kiUHARwa9c8fn
 9nPu82fn4gw0NgKOzGq/Vt9r2FqhETst8Zctn80zmrdL54d5fUfnnd+ia5gzAMTP9azR
 rLSaM0+1Kv/H/9RXK4UxmxRIzCNlH543/YVZAklO0xeH8QDZj86ItYd3zwi9DGew0ji8
 xcdQ==
X-Gm-Message-State: AOAM5334W2743o3C5ma9SQZA8cKlTGZhOvQIb1zFBOXvFtBhutWoNGwX
 lHCxlaxtsx2qqRx74JRpgKQ=
X-Google-Smtp-Source: ABdhPJyPkmQIsIxZcpJbVcfG0GS1zjreLf3UCcfaqInza2W6ea+wP8F2ZE2lzGs6+STG30tb79F5TQ==
X-Received: by 2002:a05:651c:118f:: with SMTP id
 w15mr8041034ljo.211.1596463884908; 
 Mon, 03 Aug 2020 07:11:24 -0700 (PDT)
Received: from [192.168.2.145] (94-29-41-50.dynamic.spd-mgts.ru. [94.29.41.50])
 by smtp.googlemail.com with ESMTPSA id d6sm2596272ljg.25.2020.08.03.07.11.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 03 Aug 2020 07:11:24 -0700 (PDT)
Subject: Re: [PATCH -next] media: staging: tegra-vde: Mark
 tegra_vde_runtime_suspend as __maybe_unused
To: Yuehaibing <yuehaibing@huawei.com>, mchehab@kernel.org,
 gregkh@linuxfoundation.org, thierry.reding@gmail.com, jonathanh@nvidia.com,
 hverkuil-cisco@xs4all.nl
References: <20200803115901.44068-1-yuehaibing@huawei.com>
 <721b8d01-5d7e-09c6-5f86-705130ab31a9@gmail.com>
 <e15a688e-934b-82a8-34c5-aac07928fd8f@huawei.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <95162bdc-2658-30a7-6ed2-63e095244139@gmail.com>
Date: Mon, 3 Aug 2020 17:11:23 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <e15a688e-934b-82a8-34c5-aac07928fd8f@huawei.com>
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

MDMuMDguMjAyMCAxNjowMCwgWXVlaGFpYmluZyDQv9C40YjQtdGCOgo+IE9uIDIwMjAvOC8zIDIw
OjUxLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+IDAzLjA4LjIwMjAgMTQ6NTksIFl1ZUhhaWJp
bmcg0L/QuNGI0LXRgjoKPj4+IElmIENPTkZJR19QTSBpcyBub3Qgc2V0LCBnY2Mgd2FybnM6Cj4+
Pgo+Pj4gZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS92ZGUuYzo5MTY6MTI6Cj4+PiAg
d2FybmluZzogJ3RlZ3JhX3ZkZV9ydW50aW1lX3N1c3BlbmQnIGRlZmluZWQgYnV0IG5vdCB1c2Vk
IFstV3VudXNlZC1mdW5jdGlvbl0KPj4+Cj4+PiBNYWtlIGl0IF9fbWF5YmVfdW51c2VkIHRvIGZp
eCB0aGlzLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IFl1ZUhhaWJpbmcgPHl1ZWhhaWJpbmdAaHVh
d2VpLmNvbT4KPj4+IC0tLQo+Pj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUvdmRl
LmMgfCAyICstCj4+PiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9u
KC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUv
dmRlLmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL3ZkZS5jCj4+PiBpbmRleCBh
M2MyNGQ5NmQ1YjkuLjJkMDQzZDUxOGVlZiAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvc3RhZ2lu
Zy9tZWRpYS90ZWdyYS12ZGUvdmRlLmMKPj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS90
ZWdyYS12ZGUvdmRlLmMKPj4+IEBAIC05MTMsNyArOTEzLDcgQEAgc3RhdGljIGlycXJldHVybl90
IHRlZ3JhX3ZkZV9pc3IoaW50IGlycSwgdm9pZCAqZGF0YSkKPj4+ICAJcmV0dXJuIElSUV9IQU5E
TEVEOwo+Pj4gIH0KPj4+ICAKPj4+IC1zdGF0aWMgaW50IHRlZ3JhX3ZkZV9ydW50aW1lX3N1c3Bl
bmQoc3RydWN0IGRldmljZSAqZGV2KQo+Pj4gK3N0YXRpYyBfX21heWJlX3VudXNlZCBpbnQgdGVn
cmFfdmRlX3J1bnRpbWVfc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpCj4+PiAgewo+Pj4gIAlz
dHJ1Y3QgdGVncmFfdmRlICp2ZGUgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKPj4+ICAJaW50IGVy
cjsKPj4+Cj4+Cj4+IEhlbGxvIFl1ZSwKPj4KPj4gU2hvdWxkbid0IHRoZSB0ZWdyYV92ZGVfcnVu
dGltZV9yZXN1bWUoKSBiZSBtYXJrZWQgYXMgd2VsbD8KPiAKPiBObywgdGVncmFfdmRlX3J1bnRp
bWVfcmVzdW1lKCkgYWx3YXlzIGJlIGNhbGxlZCBieSB0ZWdyYV92ZGVfc2h1dGRvd24oKS4KCldl
bGwuLiBpdCdzIHVudXNlZCwgYnV0IGNvbXBpbGVyIGRvZXNuJ3QgY29tcGxhaW4gYWJvdXQgcnVu
dGltZV9yZXN1bWUoKQpiZWNhdXNlIGl0IHNlZXMgdGhlIHBvdGVudGlhbCByZWZlcmVuY2UgdG8g
dGhhdCBmdW5jdGlvbiBpbiB0aGUgY29kZQooZXZlbiB0aGF0IGl0J3MgYSBkZWFkIGNvZGUpLCB3
aGlsZSBydW50aW1lX3N1c3BlbmQoKSByZWZlcmVuY2UgaXMKY29tcGxldGVseSByZW1vdmVkIGJ5
IHByZXByb2Nlc3NvciBiZWZvcmUgY29tcGlsZXIgc2VlcyB0aGUgY29kZS4KClNob3VsZCBiZSBu
aWNlciB0byBoYXZlIGJvdGggc3VzcGVuZCBhbmQgcmVzdW1lIGZ1bmN0aW9ucyBtYXJrZWQsIGZv
cgpjb25zaXN0ZW5jeSwgSU1PLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9y
ZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5m
by9kcml2ZXJkZXYtZGV2ZWwK
