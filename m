Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A667D2E3C60
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Dec 2020 15:03:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 03E5486CD7;
	Mon, 28 Dec 2020 14:03:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5rRmNEXPrLpT; Mon, 28 Dec 2020 14:03:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id ADD1786CC8;
	Mon, 28 Dec 2020 14:03:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 943761BF232
 for <devel@linuxdriverproject.org>; Mon, 28 Dec 2020 14:03:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 905E685E51
 for <devel@linuxdriverproject.org>; Mon, 28 Dec 2020 14:03:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wQxR6xxRcBU1 for <devel@linuxdriverproject.org>;
 Mon, 28 Dec 2020 14:03:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
 [209.85.167.50])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 08F0B85E47
 for <devel@driverdev.osuosl.org>; Mon, 28 Dec 2020 14:03:27 +0000 (UTC)
Received: by mail-lf1-f50.google.com with SMTP id 23so24024772lfg.10
 for <devel@driverdev.osuosl.org>; Mon, 28 Dec 2020 06:03:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4qvAPOSnb3gCPzAXuw8OIJYZA27uuHy18ix0nvJW1CU=;
 b=bl3r2U9yXYFzTcL+MMt8/u3WC03Tv2y9aGpfMDF+N5t5SOd8te41chnr2P+tYXgxap
 qwi67ZrMGeBXFF6i2U1/h8fpFscRnAJlA+bG6BE++9jg1sJirjaO75C7ygUTfOp9iHPc
 Yars2YYOMCQH/+4lrFdWgHgHubxtlUGfSVWkGmuTDRDCNETQoRFqyJm1yOemv2j+fOXU
 5/WBa1SGMKBukcACZnAJkY1bpWqyZu0kDtPBWL8qeKDNz7QV8CxI3OuE7812UUrxl/Ya
 aAvrf8QxKJLq4+dD8I+H5iaFUT2AaRAEOFTZRmLcbpirb4b1hMFAXt64Gu5605ULqSGz
 0zSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4qvAPOSnb3gCPzAXuw8OIJYZA27uuHy18ix0nvJW1CU=;
 b=RdFP3TtHjhLB3dXKeFmLeN4RyNbP5ZVe3nVYcErdVFw4o7ExQUf6PE2t2+3EPc124R
 vZgUjb0BQijaoNH7Lm7CKB5p0XMv54T2+9v2GDs4gLrK7w1kCMu7NLwNe0Z6zzFAWe79
 m8Ejphkyq/82M4F7ytUL13sDEYc4D7x42UgHZMumPraoeXpxjRxhwr0ghlzqSx2bweO0
 nM0shmXpnajKNJQ4B81nleETnz+HbgnBLRr50RQXPHPK7JrYbl75sW7aF/FnZcn5FNG7
 zaBkf0L4QRsmF92zKL8WY9JfmT67LOmKU6Yo2On6HUxjsiX1EwQHN2S7KAztIZYwYcXi
 z51A==
X-Gm-Message-State: AOAM533AcXvi8dZolkXYuYeGJwWiW7iX1cagTz3YKXeWemneIV2bJ3rI
 02wtdhEgFGsw43the3SKs80=
X-Google-Smtp-Source: ABdhPJzUpl1/di7tj7MASZGrGRvUabOdas4lVkZNDhVFRvZuxbYB/Sicx781pXRzuHaMyLMY0tnsEQ==
X-Received: by 2002:a19:ccc9:: with SMTP id c192mr12718066lfg.98.1609164205141; 
 Mon, 28 Dec 2020 06:03:25 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.googlemail.com with ESMTPSA id d23sm5324052lfl.115.2020.12.28.06.03.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Dec 2020 06:03:24 -0800 (PST)
Subject: Re: [PATCH v2 11/48] opp: Add dev_pm_opp_find_level_ceil()
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-12-digetx@gmail.com>
 <20201222064253.x7vsurh7q5k7qzb5@vireshk-i7>
 <fd7b9f42-d0a7-45eb-2a17-d46779011c58@gmail.com>
 <20201223041931.klnppy4fu3sdgtsz@vireshk-i7>
 <f00e0c74-8d9a-d3d3-81bb-3ac25a74175d@gmail.com>
 <20201224064339.zngidobhstnlu2a3@vireshk-i7>
 <780db190-d93d-3bca-4819-790010f82c62@gmail.com>
 <20201228062254.ui727ka2ftijov4m@vireshk-i7>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <c4a6336f-e7e6-b23e-4d60-a41d8e09aef3@gmail.com>
Date: Mon, 28 Dec 2020 17:03:23 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <20201228062254.ui727ka2ftijov4m@vireshk-i7>
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-clk@vger.kernel.org, devel@driverdev.osuosl.org,
 Kevin Hilman <khilman@kernel.org>, Nicolas Chauvet <kwizart@gmail.com>,
 Viresh Kumar <vireshk@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-tegra@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MjguMTIuMjAyMCAwOToyMiwgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gT24gMjQtMTItMjAs
IDE2OjAwLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+IEluIGEgZGV2aWNlIGRyaXZlciBJIHdh
bnQgdG8gc2V0IFBEIHRvIHRoZSBsb3dlc3QgcGVyZm9ybWFuY2Ugc3RhdGUgYnkKPj4gcmVtb3Zp
bmcgdGhlIHBlcmZvcm1hbmNlIHZvdGUgd2hlbiBkZXZfcG1fb3BwX3NldF9yYXRlKGRldiwgMCkg
aXMKPj4gaW52b2tlZCBieSB0aGUgZHJpdmVyLgo+Pgo+PiBUaGUgT1BQIGNvcmUgYWxyZWFkeSBk
b2VzIHRoaXMsIGJ1dCBpZiBPUFAgbGV2ZWxzIGRvbid0IHN0YXJ0IGZyb20gMCBpbgo+PiBhIGRl
dmljZS10cmVlIGZvciBQRCwgdGhlbiBpdCBjdXJyZW50bHkgZG9lc24ndCB3b3JrIHNpbmNlIHRo
ZXJlIGlzIGEKPj4gbmVlZCB0byBnZXQgYSByb3VuZGVkLXVwIHBlcmZvcm1hbmNlIHN0YXRlIGJl
Y2F1c2UKPj4gZGV2X3BtX29wcF9zZXRfdm9sdGFnZSgpIHRha2VzIE9QUCBlbnRyeSBmb3IgdGhl
IGFyZ3VtZW50IChwYXRjaGVzIDkgYW5kCj4+IDI4KS4KPj4KPj4gVGhlIFBEIHBvd2VyaW5nIG9m
ZiBhbmQgcGVyZm9ybWFuY2UtY2hhbmdlcyBhcmUgc2VwYXJhdGUgZnJvbSBlYWNoIG90aGVyCj4+
IGluIHRoZSBHRU5QRCBjb3JlLiBUaGUgR0VOUEQgY29yZSBhdXRvbWF0aWNhbGx5IHR1cm5zIG9m
ZiBkb21haW4gd2hlbgo+PiBhbGwgZGV2aWNlcyB3aXRoaW4gdGhlIGRvbWFpbiBhcmUgc3VzcGVu
ZGVkIGJ5IHN5c3RlbS1zdXNwZW5kIG9yIFJQTS4KPj4KPj4gVGhlIHBlcmZvcm1hbmNlIHN0YXRl
IG9mIGEgcG93ZXIgZG9tYWluIGlzIGNvbnRyb2xsZWQgc29sZWx5IGJ5IGEgZGV2aWNlCj4+IGRy
aXZlci4gR0VOUEQgY29yZSBvbmx5IGFnZ3JlZ2F0ZXMgdGhlIHBlcmZvcm1hbmNlIHJlcXVlc3Rz
LCBpdCBkb2Vzbid0Cj4+IGNoYW5nZSB0aGUgcGVyZm9ybWFuY2Ugc3RhdGUgb2YgYSBkb21haW4g
YnkgaXRzZWxmIHdoZW4gZGV2aWNlIGlzCj4+IHN1c3BlbmRlZCBvciByZXN1bWVkLCBJSVVDIHRo
aXMgaXMgaW50ZW50aW9uYWwuIEFuZCBJIHdhbnQgdG8gcHV0IGRvbWFpbgo+PiBpbnRvIGxvd2Vz
dCBwZXJmb3JtYW5jZSBzdGF0ZSB3aGVuIGRldmljZSBpcyBzdXNwZW5kZWQuCj4gCj4gUmlnaHQs
IHNvIGlmIHlvdSByZWFsbHkgd2FudCB0byBqdXN0IGRyb3AgdGhlIHBlcmZvcm1hbmNlIHZvdGUs
IHRoZW4gd2l0aCBhCj4gdmFsdWUgb2YgMCBmb3IgdGhlIHBlcmZvcm1hbmNlIHN0YXRlIHRoZSBj
YWxsIHdpbGwgcmVhY2ggdG8geW91ciBnZW5wZCdzCj4gY2FsbGJhY2sgLT5zZXRfcGVyZm9ybWFu
Y2Vfc3RhdGUoKS4gSnVzdCBhcyBkZXZfcG1fb3BwX3NldF9yYXRlKCkgYWNjZXB0cyB0aGUKPiBm
cmVxdWVuY3kgdG8gYmUgMCwgSSB3b3VsZCBleHBlY3QgZGV2X3BtX29wcF9zZXRfcmF0ZSgpIHRv
IGFjY2VwdCBvcHAgYXJndW1lbnQKPiBhcyBOVUxMIGFuZCBpbiB0aGF0IGNhc2Ugc2V0IHZvbHRh
Z2UgdG8gMCBhbmQgZG8gcmVndWxhdG9yX2Rpc2FibGUoKSBhcyB3ZWxsLgo+IFdvbid0IHRoYXQg
d29yayBiZXR0ZXIgdGhhbiBnb2luZyBmb3IgdGhlIGxvd2VzdCB2b2x0YWdlID8KPiAKCldlIGNh
biBtYWtlIGRldl9wbV9vcHBfc2V0X3ZvbHRhZ2UoKSB0byBhY2NlcHQgT1BQPU5VTEwgaW4gb3Jk
ZXIgdG8KZGlzYWJsZSB0aGUgcmVndWxhdG9yLCBsaWtlIGl0J3MgZG9uZSBmb3IgZGV2X3BtX29w
cF9zZXRfcmF0ZShkZXYsIDApLgpBbHRob3VnaCwgSSBkb24ndCBuZWVkIHRoaXMga2luZCBvZiBi
ZWhhdmlvdXIgZm9yIHRoZSBUZWdyYSBQRCBkcml2ZXIsCmFuZCB0aHVzLCB3b3VsZCBwcmVmZXIg
dG8gbGVhdmUgdGhpcyBmb3Igc29tZWJvZHkgZWxzZSB0byBpbXBsZW1lbnQgaW4KdGhlIGZ1dHVy
ZSwgb25jZSBpdCB3aWxsIGJlIHJlYWxseSBuZWVkZWQuCgpTdGlsbCB3ZSBuZWVkIHRoZSBkZXZf
cG1fb3BwX2ZpbmRfbGV2ZWxfY2VpbCgpIGJlY2F1c2UgbGV2ZWw9MCBtZWFucwp0aGF0IHdlIHdh
bnQgdG8gc2V0IFBEIHRvIHRoZSBsb3dlc3QgKG1pbmltYWwpIHBlcmZvcm1hbmNlIHN0YXRlLCBp
LmUuCml0IGRvZXNuJ3QgbmVjZXNzYXJpbHkgbWVhbiB0aGF0IHdlIHdhbnQgdG8gc2V0IHRoZSB2
b2x0YWdlIHRvIDAgYW5kCmRpc2FibGUgdGhlIFBEIGVudGlyZWx5LiBHRU5QRCBoYXMgYSBzZXBh
cmF0ZSBjb250cm9scyBmb3Igb24vb2ZmLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9q
ZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
