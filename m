Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 063F92AB108
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Nov 2020 06:53:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7242C85FC3;
	Mon,  9 Nov 2020 05:53:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QpXB-bIB6gH5; Mon,  9 Nov 2020 05:53:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 52EFC85F97;
	Mon,  9 Nov 2020 05:53:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0BEF31BF417
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 05:53:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D5C2720506
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 05:53:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eGp4Psdu0ODh for <devel@linuxdriverproject.org>;
 Mon,  9 Nov 2020 05:53:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 5BDE420504
 for <devel@driverdev.osuosl.org>; Mon,  9 Nov 2020 05:53:24 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id e7so7062202pfn.12
 for <devel@driverdev.osuosl.org>; Sun, 08 Nov 2020 21:53:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=I4CHDtUGbNIJQpM023wPiaWJqW6VgcrXTJggEv8wwSw=;
 b=qCNPstD8wk3f6WVndWAivRv5cGLOIzilHxs0sV7MkBI8GDXwzWkbmt+V1Ae9lrpsMJ
 B4t28mlabIok8WTUpK4tOZJhv14XX6QPx9rUN/5/7PjDOEIOF07vmO2pAN+fOFSCVQFs
 N9tTa3VjUXqiHFZpYHNhvX9c+lshFtkGG4kTSo9LVtvbWKYZTAF10/IyRus+uU55LRBE
 4k68uNqq+fkS72Id3gBgsPo8GFhIcdXrrqMldXmeqgNgvMOl+qXZJXb1YbEiT/aa1Etq
 o30FSX7jLjx5MVrVA99VofHiE5IMFfg3o0pRw5sTKSTM5XBTSZbKnADSmkIOStFM24ld
 zguw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=I4CHDtUGbNIJQpM023wPiaWJqW6VgcrXTJggEv8wwSw=;
 b=Zq1q+IcdRyfFxSuPPQqRmQikGL0E/QXMyUsHlh5pjqxmWUJjeCM5VJBgW+ry3b4rp3
 tu42BKpcH8SQ5I2rGXiVXHQ9pSj33sSHOi6gUcF6Hs6+SUTxxjQtoz4yL8BMcModAVN3
 DPDosLqCNCDJIzq89+L6yqPLIDpYOeBBPoqClo2iOYk7+fcnOoLybqmvWa9SygxHOYcv
 6fu7WgAch+lLFmwjwYubpZxmwnscdLV7UuHuwG0/ZJGaUN5zHgV2KAII/mtEQd2387r3
 V3ogFnKiqhnQ4VtzwhzSK0JtlG6iKDe4eStYbhU5JuIoQbHNtm0kyyvnBLlDK4Yxavc1
 Rbtw==
X-Gm-Message-State: AOAM533WUJ3xnBMJ8UmnL0nwhWdVWK+nrNUUmeKdyE0q/On4XSo0sbx7
 X7c1511owP4mFZsE8AwJOExt2Q==
X-Google-Smtp-Source: ABdhPJwcV7Uyws0t/xTffHxasXM2N+eWSdO5J/LaZj2Wqdrek/AXYoDsM1gv08im58tWUSJ8zIbVUg==
X-Received: by 2002:a17:90a:e110:: with SMTP id
 c16mr11572525pjz.84.1604901203964; 
 Sun, 08 Nov 2020 21:53:23 -0800 (PST)
Received: from localhost ([122.172.12.172])
 by smtp.gmail.com with ESMTPSA id 12sm3592369pjn.19.2020.11.08.21.53.22
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 08 Nov 2020 21:53:22 -0800 (PST)
Date: Mon, 9 Nov 2020 11:23:20 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v1 17/30] mmc: sdhci-tegra: Support OPP and core voltage
 scaling
Message-ID: <20201109055320.5y5gf2whwast2mi4@vireshk-i7>
References: <6fa54ce6-d5ae-d04f-7c77-b62c148d92b7@gmail.com>
 <20201106061513.uyys7njcqcdlah67@vireshk-i7>
 <a6926456-8bce-a438-bfaa-be334208f004@gmail.com>
 <CAEExFWsp0DWw1yO84e3vzr_YZkqkd+pyPfQQR3J2W6n3wTX4Jw@mail.gmail.com>
 <20201109050010.g47zojh6wafvwqva@vireshk-i7>
 <c584b301-e052-7f01-335d-8f9160865198@gmail.com>
 <20201109051014.oa6bt4g3ctm2hnuy@vireshk-i7>
 <4476fed9-a356-b7f1-32ee-935343e23038@gmail.com>
 <20201109053546.xupmmsx5qccn46tr@vireshk-i7>
 <33a7ad95-a8cf-7b88-0f78-09086c1a4adf@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <33a7ad95-a8cf-7b88-0f78-09086c1a4adf@gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
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
Cc: Peter Chen <Peter.Chen@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 linux-pwm@vger.kernel.org, Frank Lee <tiny.windzz@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 driver-dev <devel@driverdev.osuosl.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Alan Stern <stern@rowland.harvard.edu>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-media@vger.kernel.org, DTML <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 "open list:SECURE DIGITAL HO..." <linux-mmc@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMDktMTEtMjAsIDA4OjQ0LCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4gMDkuMTEuMjAyMCAw
ODozNSwgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gPiBPbiAwOS0xMS0yMCwgMDg6MTksIERt
aXRyeSBPc2lwZW5rbyB3cm90ZToKPiA+PiBUaGFua3MsIEkgbWFkZSBpdCBpbiBhIGRpZmZlcmVu
dCB3YXkgYnkgc2ltcGx5IGFkZGluZyBoZWxwZXJzIHRvIHRoZQo+ID4+IHBtX29wcC5oIHdoaWNo
IHVzZSBkZXZtX2FkZF9hY3Rpb25fb3JfcmVzZXQoKS4gVGhpcyBkb2Vzbid0IHJlcXVpcmUgdG8K
PiA+PiBhZGQgbmV3IGtlcm5lbCBzeW1ib2xzLgo+ID4gCj4gPiBJIHdpbGwgcHJlZmVyIHRvIGFk
ZCBpdCBpbiBjb3JlLmMgaXRzZWxmLCBhbmQgeWVzCj4gPiBkZXZtX2FkZF9hY3Rpb25fb3JfcmVz
ZXQoKSBsb29rcyBiZXR0ZXIuIEJ1dCBJIGFtIHN0aWxsIG5vdCBzdXJlIGZvcgo+ID4gd2hpY2gg
aGVscGVycyBkbyB3ZSBuZWVkIHRoZSBkZXZtXyooKSB2YXJpYW50cywgYXMgdGhpcyBpcyBvbmx5
IHVzZWZ1bAo+ID4gZm9yIG5vbi1DUFUgZGV2aWNlcy4gQnV0IGlmIHdlIGhhdmUgdXNlcnMgdGhh
dCB3ZSBjYW4gYWRkIHJpZ2h0IG5vdywKPiA+IHdoeSBub3QuCj4gCj4gQWxsIGN1cnJlbnQgbm9u
LUNQVSBkcml2ZXJzIChkZXZmcmVxLCBtbWMsIG1lbW9yeSwgZXRjKSBjYW4gYmVuZWZpdCBmcm9t
IGl0Lgo+IAo+IEZvciBUZWdyYSBkcml2ZXJzIHdlIG5lZWQgdGhlc2UgdmFyaWFudHM6Cj4gCj4g
ZGV2bV9wbV9vcHBfc2V0X3N1cHBvcnRlZF9odygpCj4gZGV2bV9wbV9vcHBfc2V0X3JlZ3VsYXRv
cnMoKSBbaWYgd2Ugd29uJ3QgdXNlIEdFTlBEXQo+IGRldm1fcG1fb3BwX3NldF9jbGtuYW1lKCkK
PiBkZXZtX3BtX29wcF9vZl9hZGRfdGFibGUoKQoKSSB0cmllZCB0byBsb29rIGVhcmxpZXIgZm9y
IHRoZSBzdHVmZiBhbHJlYWR5IG1lcmdlZCBpbiBhbmQgZGlkbid0CmZpbmQgYSBsb3Qgb2Ygc3R1
ZmYgd2hlcmUgdGhlIGRldm1fKiBjb3VsZCBiZSB1c2VkLCBtYXliZSBJIG1pc3NlZApzb21lIG9m
IGl0LgoKRnJhbmssIHdvdWxkIHlvdSBsaWtlIHRvIHJlZnJlc2ggeW91ciBzZXJpZXMgYmFzZWQg
b24gc3VnZ2VzdGlvbnMgZnJvbQpEbWl0cnkgYW5kIG1ha2Ugb3RoZXIgZHJpdmVycyBhZGFwdCB0
byB0aGUgbmV3IEFQSXMgPwoKLS0gCnZpcmVzaApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJw
cm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
