Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 196D99D28B
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Aug 2019 17:18:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4BF32220DD;
	Mon, 26 Aug 2019 15:18:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5oQjksbcqFFP; Mon, 26 Aug 2019 15:18:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BC99121FA9;
	Mon, 26 Aug 2019 15:18:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C1B5A1BF3A8
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 15:18:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BE47585C32
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 15:18:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vynts-lxdLBW for <devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 15:18:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4101985C2E
 for <devel@driverdev.osuosl.org>; Mon, 26 Aug 2019 15:18:51 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id j4so1687782lfh.8
 for <devel@driverdev.osuosl.org>; Mon, 26 Aug 2019 08:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=50mv38tNDYl/ZA4wnFVjnzU9tnzotrbGWCLUfU9Ss9U=;
 b=DD954qxFZhSRbJXXAWT8UGI78Qw8ddSTsJ57rK3XJ2/Wkv3WEez0EMD7YmJN/2ZyOa
 lHwom4XrlZmbf1KZeQLf7asnloWFOOVQf5xcoWVTpcs1szbaGxrmsAO0GkI3d+aVs+tS
 45DW701tM8vydRxSmqzFNoVGNFbONfoNF0eFihwp/hHhOgmbmtHCvxq0ShKSH9bK4uVZ
 lWRizjWpZp076tU3UDHdesfEOgSmRxcFr2Q3vf20XLtbKjWauLGo6ia5FwENMqkF2Pnt
 2si39G/XXBu4K0XjMggmMk0bTE/w5zakucAW0rL5geUPbRtC+zO8WmLsph6xVKz/nJqS
 Q4Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=50mv38tNDYl/ZA4wnFVjnzU9tnzotrbGWCLUfU9Ss9U=;
 b=nma+j9eWViBvPKiEr3Gp+vDzLCGWeZRULpUdEUG0m1K+V/60tsBYH50ntOCoyb8Ldg
 rOp2AP9q3nGYeg/WtssGOf0m5EcWvfSVRWXhEAlh6yBSH38M00Wa8yZbnCKFdfamPqjh
 qS0xe+W3aWvVD0ds22r/32K/v5spbtYY2gn5ChSnMiigSRkLcfj/j3y4k+v7uAOG7N7F
 Zz5KlTdAdwu/ZOoCwJdbut5fqoEklti5tzINqeRMK0VfeVoy7iNrX8cXLaHaKYaRU5KN
 l2v/vGJ2lVtHJMebe/kpp/Nzsrz023kxCu+wGnVcx3Tc+LqVcsbzJU9o9/CnKZ/IiVpV
 o7GQ==
X-Gm-Message-State: APjAAAVDd73YaHNz6xrmuBnqo/Mzl6+Gj9lhpvCvcSYvnroA3fW5IL8/
 MVOcaUXdsoEpNcHx49GZISQ=
X-Google-Smtp-Source: APXvYqxwBaKVRDZOzhOVbJvIe3ncrV9/xEPeURbvLz9/UhsnEu7vyFngUol6rQSCZMHo+7dD8ZFuQg==
X-Received: by 2002:a19:674d:: with SMTP id e13mr11176375lfj.176.1566832729324; 
 Mon, 26 Aug 2019 08:18:49 -0700 (PDT)
Received: from [192.168.2.145] ([94.29.34.218])
 by smtp.googlemail.com with ESMTPSA id m74sm2356165lje.72.2019.08.26.08.18.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 26 Aug 2019 08:18:48 -0700 (PDT)
Subject: Re: [PATCH] media: staging: tegra-vde: Disable building with
 COMPILE_TEST
To: YueHaibing <yuehaibing@huawei.com>, mchehab@kernel.org,
 gregkh@linuxfoundation.org, thierry.reding@gmail.com, jonathanh@nvidia.com,
 robin.murphy@arm.com, hverkuil-cisco@xs4all.nl
References: <20190826133140.13456-1-yuehaibing@huawei.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <58a8c62c-a45e-77e4-d2cb-99f95b847a73@gmail.com>
Date: Mon, 26 Aug 2019 18:18:47 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190826133140.13456-1-yuehaibing@huawei.com>
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
 iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGVsbG8gWXVlLAoKMjYuMDguMjAxOSAxNjozMSwgWXVlSGFpYmluZyDQv9C40YjQtdGCOgo+IElm
IENPTVBJTEVfVEVTVCBpcyB5IGFuZCBJT01NVV9TVVBQT1JUIGlzIG4sIHNlbGVjdGluZyBURUdS
QV9WREUKPiB0byBtIHdpbGwgc2V0IElPTU1VX0lPVkEgdG8gbSwgdGhpcyBmYWlscyB0aGUgYnVp
bGRpbmcgb2YKPiBURUdSQV9IT1NUMVggYW5kIERSTV9URUdSQSB3aGljaCBpcyB5IGxpa2UgdGhp
czoKPiAKPiBkcml2ZXJzL2dwdS9ob3N0MXgvY2RtYS5vOiBJbiBmdW5jdGlvbiBgaG9zdDF4X2Nk
bWFfaW5pdCc6Cj4gY2RtYS5jOigudGV4dCsweDY2Yyk6IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8g
YGFsbG9jX2lvdmEnCj4gY2RtYS5jOigudGV4dCsweDY5OCk6IHVuZGVmaW5lZCByZWZlcmVuY2Ug
dG8gYF9fZnJlZV9pb3ZhJwo+IAo+IGRyaXZlcnMvZ3B1L2RybS90ZWdyYS9kcm0ubzogSW4gZnVu
Y3Rpb24gYHRlZ3JhX2RybV91bmxvYWQnOgo+IGRybS5jOigudGV4dCsweGViMCk6IHVuZGVmaW5l
ZCByZWZlcmVuY2UgdG8gYHB1dF9pb3ZhX2RvbWFpbicKPiBkcm0uYzooLnRleHQrMHhlYjQpOiB1
bmRlZmluZWQgcmVmZXJlbmNlIHRvIGBpb3ZhX2NhY2hlX3B1dCcKPiAKPiBSZXBvcnRlZC1ieTog
SHVsayBSb2JvdCA8aHVsa2NpQGh1YXdlaS5jb20+Cj4gRml4ZXM6IDZiMjI2NTk3NTIzOSAoIm1l
ZGlhOiBzdGFnaW5nOiB0ZWdyYS12ZGU6IEZpeCBidWlsZCBlcnJvciIpCj4gRml4ZXM6IGIzMDFm
OGRlMTkyNSAoIm1lZGlhOiBzdGFnaW5nOiBtZWRpYTogdGVncmEtdmRlOiBBZGQgSU9NTVUgc3Vw
cG9ydCIpCj4gU2lnbmVkLW9mZi1ieTogWXVlSGFpYmluZyA8eXVlaGFpYmluZ0BodWF3ZWkuY29t
Pgo+IC0tLQo+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL0tjb25maWcgfCA0ICsr
LS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS9LY29uZmlnIGIv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS9LY29uZmlnCj4gaW5kZXggYmE0OWVhNS4u
YTQxZDMwYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL0tj
b25maWcKPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL0tjb25maWcKPiBA
QCAtMSw5ICsxLDkgQEAKPiAgIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+ICBj
b25maWcgVEVHUkFfVkRFCj4gIAl0cmlzdGF0ZSAiTlZJRElBIFRlZ3JhIFZpZGVvIERlY29kZXIg
RW5naW5lIGRyaXZlciIKPiAtCWRlcGVuZHMgb24gQVJDSF9URUdSQSB8fCBDT01QSUxFX1RFU1QK
PiArCWRlcGVuZHMgb24gQVJDSF9URUdSQQo+ICAJc2VsZWN0IERNQV9TSEFSRURfQlVGRkVSCj4g
LQlzZWxlY3QgSU9NTVVfSU9WQSBpZiAoSU9NTVVfU1VQUE9SVCB8fCBDT01QSUxFX1RFU1QpCj4g
KwlzZWxlY3QgSU9NTVVfSU9WQSBpZiBJT01NVV9TVVBQT1JUCj4gIAlzZWxlY3QgU1JBTQo+ICAJ
aGVscAo+ICAJICAgIFNheSBZIGhlcmUgdG8gZW5hYmxlIHN1cHBvcnQgZm9yIHRoZSBOVklESUEg
VGVncmEgdmlkZW8gZGVjb2Rlcgo+IAoKV2hhdCBhYm91dCB0aGlzIHZhcmlhbnQ6CgoJc2VsZWN0
IElPTU1VX0lPVkEgaWYgKElPTU1VX1NVUFBPUlQgJiYgIUNPTVBJTEVfVEVTVCkKCndoaWNoIHNo
b3VsZCBmaXggdGhlIGJ1aWxkaW5nIGFuZCBwcmVzZXJ2ZSBjb21waWxlLXRlc3RpbmcuCgpJdCBz
aG91bGRuJ3QgbWF0dGVyIGF0IGFsbCB3aGV0aGVyIElPVkEgaXMgZW5hYmxlZCBvciBub3QgZm9y
CmNvbXBpbGUtdGVzdGluZyBvZiB0aGUgZHJpdmVyLgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2
ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
