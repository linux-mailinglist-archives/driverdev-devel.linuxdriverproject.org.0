Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E71F8A38B
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Aug 2019 18:42:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1B384221B5;
	Mon, 12 Aug 2019 16:42:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wCgvZoeJsnjr; Mon, 12 Aug 2019 16:42:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7DF03220FB;
	Mon, 12 Aug 2019 16:42:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 53F681BF41F
 for <devel@linuxdriverproject.org>; Mon, 12 Aug 2019 16:42:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 505B984AE2
 for <devel@linuxdriverproject.org>; Mon, 12 Aug 2019 16:42:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wIAJoAm_-CMA for <devel@linuxdriverproject.org>;
 Mon, 12 Aug 2019 16:42:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 59C4B84AE1
 for <devel@driverdev.osuosl.org>; Mon, 12 Aug 2019 16:42:33 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id z17so10469267ljz.0
 for <devel@driverdev.osuosl.org>; Mon, 12 Aug 2019 09:42:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ozj3HWG6u6WFRMPDTuQbMffve34JSmH8p0q+ZkIw8XA=;
 b=kdTrnznY0ezwmK90LkssxTwtB4Fd8Cx3FNt5PqxgtfkoAL7kGnyrNFj5LUUmqjMoY2
 bLO3HJbyP+RuyCLuwIQK3TS4yblcNqm13U3EktOzREhNXejGO61zB5fmPQRwTjEtwjGT
 aABoMMF7biT8hXhaaXsyRDwsP24ALrslfudwMx4uEAIYS3So5FZ0+sX1BPepvSfpvxaS
 P3x2fQgTI/sPoIOS2NFigF5EJ7bEF2KinUM5+Exo+5fsjjXmdCGqmZMbNM5p/q7SNu+S
 liVtytDJ+Aq1MokyqNCJPTRdUBR6RNQxV3xkek+uuEWkqsTNPdTx8d5+zwBugPpNtZoL
 LCfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ozj3HWG6u6WFRMPDTuQbMffve34JSmH8p0q+ZkIw8XA=;
 b=AOQRhPtHGKcV+877BJYQgWCBQGLBlDgjDBKJfUaTwMTqLPN9+dImsrE8mUMtLxOIPl
 V00gBDiSvZrMf9yH2A2pQwSQlqDRZzkM6z3GJTCnue1Ov9d2uZ0FKd7SfuoXfhnnvMVP
 4F1U0r42XaB1RlIOT9lTJpJlxb+Gqu5IWFpwENBi6glm8ynaIzywVHaIyMA/aQCO+nIQ
 8pajptd6VGTcrSlL+tiftIdZFWF70b/Fi7XVrQ4YtdfH4j1cl64mpMVqJ+TQjEQMC1Kw
 lpywnD8F01hWgFFqzVZNpr/TZwb7rw6+O5Qdzq4N9uWEYT2NeaWInRq3XHIu2GXVkYcm
 gj+g==
X-Gm-Message-State: APjAAAWjc6++Ia0dMJZzAkfRcR1fbILJcYovm4d9lZQ5DtjMNeckadnw
 Np8fjKW4bGnWIoSDjxfHIhg=
X-Google-Smtp-Source: APXvYqwrsiBom6sXbAvtUH5ZNer8hQ/6TRxY2p8vbUytdt+kTSF8r3G6P2ijhZEelRwijvd+3RbMnA==
X-Received: by 2002:a2e:9819:: with SMTP id a25mr7054589ljj.99.1565628151275; 
 Mon, 12 Aug 2019 09:42:31 -0700 (PDT)
Received: from [192.168.2.145] ([94.29.34.218])
 by smtp.googlemail.com with ESMTPSA id e87sm24327081ljf.54.2019.08.12.09.42.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 12 Aug 2019 09:42:30 -0700 (PDT)
Subject: Re: [PATCH v3] ARM: dts: tegra30: Connect SMMU with Video Decoder
 Engine
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
References: <20190623170730.5095-1-digetx@gmail.com>
 <20190623170730.5095-2-digetx@gmail.com>
Message-ID: <e2dbeed2-7596-d687-d200-8f08dc267c83@gmail.com>
Date: Mon, 12 Aug 2019 19:42:29 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190623170730.5095-2-digetx@gmail.com>
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
 linux-kernel@vger.kernel.org, Jonathan Hunter <jonathanh@nvidia.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Rob Herring <robh+dt@kernel.org>,
 linux-tegra@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MjMuMDYuMjAxOSAyMDowNywgRG1pdHJ5IE9zaXBlbmtvINC/0LjRiNC10YI6Cj4gRW5hYmxlIElP
TU1VIHN1cHBvcnQgZm9yIHRoZSB2aWRlbyBkZWNvZGVyLgo+IAo+IFNpZ25lZC1vZmYtYnk6IERt
aXRyeSBPc2lwZW5rbyA8ZGlnZXR4QGdtYWlsLmNvbT4KPiAtLS0KPiAKPiBObyBjaGFuZ2VzIHNp
bmNlIHYxLgo+IAo+ICBhcmNoL2FybS9ib290L2R0cy90ZWdyYTMwLmR0c2kgfCAxICsKPiAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jv
b3QvZHRzL3RlZ3JhMzAuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3RlZ3JhMzAuZHRzaQo+IGlu
ZGV4IDkzNGNhYTgzYzhkYi4uY2UxNjIxMjVlN2JmIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2Jv
b3QvZHRzL3RlZ3JhMzAuZHRzaQo+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3RlZ3JhMzAuZHRz
aQo+IEBAIC00MjQsNiArNDI0LDcgQEAKPiAgCQljbG9ja3MgPSA8JnRlZ3JhX2NhciBURUdSQTMw
X0NMS19WREU+Owo+ICAJCXJlc2V0LW5hbWVzID0gInZkZSIsICJtYyI7Cj4gIAkJcmVzZXRzID0g
PCZ0ZWdyYV9jYXIgNjE+LCA8Jm1jIFRFR1JBMzBfTUNfUkVTRVRfVkRFPjsKPiArCQlpb21tdXMg
PSA8Jm1jIFRFR1JBX1NXR1JPVVBfVkRFPjsKPiAgCX07Cj4gIAo+ICAJYXBibWlzY0A3MDAwMDgw
MCB7Cj4gCgpIZWxsbyBUaGllcnJ5LAoKV2lsbCBiZSBhd2Vzb21lIGlmIHlvdSBjb3VsZCBwaWNr
IHVwIHRoaXMgYW5kIFsxXVsyXSBmb3IgdjUuNC4gVGhlIHJlc3Qgb2YgdGhlIFZERSBwYXRjaGVz
CmFyZSBhbHJlYWR5IGFwcGxpZWQgYnkgdGhlIG1lZGlhIG1haW50YWluZXJzIGluIGxpbnV4LW5l
eHQsIHBsZWFzZSBub3RlIHRoYXQgWzJdIGlzIHJlcXVpcmVkCnRvIGF2b2lkIHByb2JsZW1zIGNh
dXNlZCBieSB0aGUgbm90b3Jpb3VzIGltcGxpY2l0IElPTU1VIGJhY2tpbmcuIFRoYW5rcyBpbiBh
ZHZhbmNlIQoKWzFdIGh0dHA6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wYXRjaC8xMTIwODY0Lwpb
Ml0gaHR0cDovL3BhdGNod29yay5vemxhYnMub3JnL3Byb2plY3QvbGludXgtdGVncmEvbGlzdC8/
c2VyaWVzPTExNTYwOApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK
