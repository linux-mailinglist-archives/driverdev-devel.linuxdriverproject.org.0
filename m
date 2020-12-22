Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9058F2E0EBF
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Dec 2020 20:18:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3D3CC872CB;
	Tue, 22 Dec 2020 19:18:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GpnOQXPSqEvM; Tue, 22 Dec 2020 19:18:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A7D8E87244;
	Tue, 22 Dec 2020 19:17:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4563F1BF3D1
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 19:17:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 41DFE85E60
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 19:17:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1phR1Mo0EieO for <devel@linuxdriverproject.org>;
 Tue, 22 Dec 2020 19:17:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
 [209.85.167.42])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D091F85E51
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 19:17:55 +0000 (UTC)
Received: by mail-lf1-f42.google.com with SMTP id o17so34563146lfg.4
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 11:17:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=uAS0dihWy6acCqxpttIdhhTtHB8s/0UZpEYGm2Afc0A=;
 b=Ja6Fajx15rlf/wUqhyfUGdtaYQa9NzWt1VxfeKaPGV9DHxto9LH4yd453M9YVRn9hR
 kMbMcKAkpViTQLSWE6kfgTI9BzKCWleBfhF4TmcR8FomhMo+L1pLmEMxbkFr4E1Svw1X
 iH6DJqofxOW5ofM0w9hmIf01D2Fp9mgjq3RzN5mL/qEtilJU/pFtiNljC50W1hqQ9h6Z
 L1euixnvk5wTR9lEvRSwJzkfEpU9tm8R+yftg3S65OZT5rgnL5Tfw2M2LGeki9D0BLqS
 wI4IXEjFsh3bdQ1a0XPmqyAso4vjl+nJSZ1RGI4YOqkQWlpnKFhv+ZGCJjn//trtFq6Z
 QEIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=uAS0dihWy6acCqxpttIdhhTtHB8s/0UZpEYGm2Afc0A=;
 b=hAQiSppRe50zfSiZTMsGgWNteW+HFCb4bqWX4ub/fZnjjfssxCFpl3AB0b3WHwCAI8
 GY7Ewl19DtCXRRPGS/I2+Yi34ffcKxUZrgp1f+9JO5yDeTEZsthdwNaqkceFaWY87v2b
 I7pDwBOYL6dEe9ns5vCjM+eiOYEBjDM6qeYeFO7MgwMNNwaqJ2ejvyFEN+a0vqIsrDh4
 wdknszrdv4dLmVnK+B5fu0IAJP7wnFiY2cg5hjevxDLSpdf+D4qitNbLs3HaBe3udosb
 aEoM/Nho45baAzeU9qt0mZi3OYmpMrs1ngvKMNQjWuvKDbBH8gLm6oxdhtd4auBpBAon
 7kSQ==
X-Gm-Message-State: AOAM531oNrhmjKjCRsh4XhDm5GgXQyQLGVkirdXm1OqJpxlkNHrHaNZi
 wpD0nS7hoh92kyc3l9sGWDI=
X-Google-Smtp-Source: ABdhPJxG08S3x744/H672jNAdqohPPQE2x83DMhx6bVvTBDJ0O2sHn/mTSk/1sieF+CRr2XQTCHbeg==
X-Received: by 2002:a19:d93:: with SMTP id 141mr9654897lfn.229.1608664674109; 
 Tue, 22 Dec 2020 11:17:54 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.googlemail.com with ESMTPSA id y9sm3014739ljy.37.2020.12.22.11.17.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Dec 2020 11:17:53 -0800 (PST)
Subject: Re: [PATCH v2 14/48] opp: Filter out OPPs based on availability of a
 required-OPP
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-15-digetx@gmail.com>
 <20201222085940.y625zxee4tevbqm5@vireshk-i7>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <9ed8bde3-f7b5-025c-c038-87f35ea39e5f@gmail.com>
Date: Tue, 22 Dec 2020 22:17:52 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <20201222085940.y625zxee4tevbqm5@vireshk-i7>
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

MjIuMTIuMjAyMCAxMTo1OSwgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gT24gMTctMTItMjAs
IDIxOjA2LCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+IEEgcmVxdWlyZWQgT1BQIG1heSBub3Qg
YmUgYXZhaWxhYmxlLCBhbmQgdGh1cywgYWxsIE9QUHMgd2hpY2ggYXJlIHVzaW5nCj4+IHRoaXMg
cmVxdWlyZWQgT1BQIHNob3VsZCBiZSB1bmF2YWlsYWJsZSB0b28uCj4+Cj4+IFNpZ25lZC1vZmYt
Ynk6IERtaXRyeSBPc2lwZW5rbyA8ZGlnZXR4QGdtYWlsLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJz
L29wcC9jb3JlLmMgfCAxMSArKysrKysrKysrLQo+PiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBQbGVhc2Ugc2VuZCBhIHNlcGFyYXRlIHBhdGNo
c2V0IGZvciBmaXhlcywgYXMgdGhlc2UgY2FuIGFsc28gZ28gdG8gNS4xMSBpdHNlbGYuCgpBbHJp
Z2h0LCBhbHRob3VnaCBJIGRvbid0IHRoaW5rIHRoYXQgdGhpcyBwYXRjaCBmaXhlcyBhbnkgcHJv
YmxlbXMgZm9yCmV4aXN0aW5nIE9QUCB1c2Vycy4KCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL29w
cC9jb3JlLmMgYi9kcml2ZXJzL29wcC9jb3JlLmMKPj4gaW5kZXggZDlmZWI3NjM5NTk4Li4zZDAy
ZmUzMzYzMGIgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvb3BwL2NvcmUuYwo+PiArKysgYi9kcml2
ZXJzL29wcC9jb3JlLmMKPj4gQEAgLTE1ODgsNyArMTU4OCw3IEBAIGludCBfb3BwX2FkZChzdHJ1
Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZfcG1fb3BwICpuZXdfb3BwLAo+PiAgCSAgICAgc3Ry
dWN0IG9wcF90YWJsZSAqb3BwX3RhYmxlLCBib29sIHJhdGVfbm90X2F2YWlsYWJsZSkKPj4gIHsK
Pj4gIAlzdHJ1Y3QgbGlzdF9oZWFkICpoZWFkOwo+PiAtCWludCByZXQ7Cj4+ICsJaW50IGksIHJl
dDsKPj4gIAo+PiAgCW11dGV4X2xvY2soJm9wcF90YWJsZS0+bG9jayk7Cj4+ICAJaGVhZCA9ICZv
cHBfdGFibGUtPm9wcF9saXN0Owo+PiBAQCAtMTYxNSw2ICsxNjE1LDE1IEBAIGludCBfb3BwX2Fk
ZChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZfcG1fb3BwICpuZXdfb3BwLAo+PiAgCQkJ
IF9fZnVuY19fLCBuZXdfb3BwLT5yYXRlKTsKPj4gIAl9Cj4+ICAKPj4gKwlmb3IgKGkgPSAwOyBp
IDwgb3BwX3RhYmxlLT5yZXF1aXJlZF9vcHBfY291bnQgJiYgbmV3X29wcC0+YXZhaWxhYmxlOyBp
KyspIHsKPj4gKwkJaWYgKG5ld19vcHAtPnJlcXVpcmVkX29wcHNbaV0tPmF2YWlsYWJsZSkKPj4g
KwkJCWNvbnRpbnVlOwo+PiArCj4+ICsJCW5ld19vcHAtPmF2YWlsYWJsZSA9IGZhbHNlOwo+PiAr
CQlkZXZfd2FybihkZXYsICIlczogT1BQIG5vdCBzdXBwb3J0ZWQgYnkgcmVxdWlyZWQgT1BQICVw
T0YgKCVsdSlcbiIsCj4+ICsJCQkgX19mdW5jX18sIG5ld19vcHAtPnJlcXVpcmVkX29wcHNbaV0t
Pm5wLCBuZXdfb3BwLT5yYXRlKTsKPiAKPiBXaHkgbm90IGp1c3QgYnJlYWsgZnJvbSBoZXJlID8K
ClRoZSBuZXdfb3BwIGNvdWxkIGJlIGFscmVhZHkgbWFya2VkIGFzIHVuYXZhaWxhYmxlIGJ5IGEg
cHJldmlvdXMgdm9sdGFnZQpjaGVjaywgaGVuY2UgdGhpcyBsb29wIHNob3VsZCBiZSBza2lwcGVk
IGVudGlyZWx5IGluIHRoYXQgY2FzZS4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVj
dC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpdmVyZGV2LWRldmVsCg==
