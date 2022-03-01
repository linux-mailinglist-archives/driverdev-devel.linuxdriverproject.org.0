Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E45B14C9154
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Mar 2022 18:19:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 24F9481417;
	Tue,  1 Mar 2022 17:19:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U6H0Z9YskPxR; Tue,  1 Mar 2022 17:19:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6C7681400;
	Tue,  1 Mar 2022 17:19:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 527BE1BF867
 for <devel@linuxdriverproject.org>; Tue,  1 Mar 2022 17:19:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3FC2240116
 for <devel@linuxdriverproject.org>; Tue,  1 Mar 2022 17:19:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=quicinc.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KzuhOEMyAnAp for <devel@linuxdriverproject.org>;
 Tue,  1 Mar 2022 17:19:12 +0000 (UTC)
X-Greylist: delayed 00:06:05 by SQLgrey-1.8.0
Received: from alexa-out-sd-01.qualcomm.com (alexa-out-sd-01.qualcomm.com
 [199.106.114.38])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 34ADC40111
 for <devel@driverdev.osuosl.org>; Tue,  1 Mar 2022 17:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
 t=1646155152; x=1677691152;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=k6CREB0TD0/8UF4IksukPBWP48bQZt3imPBwgI28Sps=;
 b=nqYcicN7xIExHUf1YO5+pbvQjwvUSkZnJFNQCz9qS13GnU/ivIk0XCU8
 pxKH0A+6pNCSEseZlGaFZJ9pZZuzl9tBRk+thMdp3wR/WTwWRaO74hxqB
 Yyp7XfOwp9A3aty3NLwsOjCEt4bK3H6R/wjH9uO55iGO3aGYjs8UKw0kg s=;
Received: from unknown (HELO ironmsg01-sd.qualcomm.com) ([10.53.140.141])
 by alexa-out-sd-01.qualcomm.com with ESMTP; 01 Mar 2022 09:13:05 -0800
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
 by ironmsg01-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 09:13:04 -0800
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.15; Tue, 1 Mar 2022 09:13:04 -0800
Received: from [10.111.181.139] (10.49.16.6) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.15; Tue, 1 Mar 2022
 09:13:04 -0800
Message-ID: <4c3c55ac-1dda-410a-7125-ca0e2acee44d@quicinc.com>
Date: Tue, 1 Mar 2022 09:13:03 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Subject: Re: [PATCH 03/10] staging: wfx: format comments on 100 columns
Content-Language: en-US
To: Joe Perches <joe@perches.com>, Jerome Pouiller
 <Jerome.Pouiller@silabs.com>, <linux-wireless@vger.kernel.org>, Kalle Valo
 <kvalo@kernel.org>
References: <20220225112405.355599-1-Jerome.Pouiller@silabs.com>
 <20220225112405.355599-4-Jerome.Pouiller@silabs.com>
 <fe3c21a9c0178a2f0fcea698b8e6405a99747dea.camel@perches.com>
From: Jeff Johnson <quic_jjohnson@quicinc.com>
In-Reply-To: <fe3c21a9c0178a2f0fcea698b8e6405a99747dea.camel@perches.com>
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01c.na.qualcomm.com (10.47.97.35) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMi8yOC8yMDIyIDU6MTIgUE0sIEpvZSBQZXJjaGVzIHdyb3RlOgo+IE9uIEZyaSwgMjAyMi0w
Mi0yNSBhdCAxMjoyMyArMDEwMCwgSmVyb21lIFBvdWlsbGVyIHdyb3RlOgo+PiBGcm9tOiBKw6ly
w7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Cj4+Cj4+IEEgZmV3IGNv
bW1lbnRzIHdlcmUgbm90IHlldCBmb3JtYXR0ZWQgb24gMTAwIGNvbHVtbnMuCj4gCj4gSU1PLCBu
b25lIG9mIHRoZXNlIGNoYW5nZXMgYXJlIG5lY2Vzc2FyeSBvciBnb29kIGNoYW5nZXMuCj4gCj4g
ODAgY29sdW1ucyBpcyBwcmVmZXJyZWQuCj4gCj4gUmVhbGx5IGNvbW1lbnRzIHNob3VsZCBtb3N0
IGFsd2F5cyB1c2UgODAgY29sdW1ucywgYW5kCj4gb25seSBvY2Nhc2lvbmFsbHkgc2hvdWxkIGNv
ZGUgYmUgbW9yZSB0aGFuIDgwIGNvbHVtbnMKPiBhbmQgYWxtb3N0IG5ldmVyIHNob3VsZCBjb2Rl
IGJlIG1vcmUgdGhhbiAxMDAgY29sdW1ucy4KClRoYXQgd2FzIG15IHJlYWN0aW9uIGFzIHdlbGwu
IEp1c3QgYmVjYXVzZSB3ZSd2ZSByZWxheGVkIHJ1bGVzIHNvIHRoYXQgCndlICpjYW4qIGV4Y2Vl
ZCA4MCBjb2x1bW5zLCBpdCBkb2Vzbid0IG1lYW4gd2UgKnNob3VsZCosIGFuZCBkZWZpbml0ZWx5
IApkb2Vzbid0IG1lYW4gd2Ugc2hvdWxkICpzdHJpdmUqIHRvIGRvIHNvLgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2
ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJv
amVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
