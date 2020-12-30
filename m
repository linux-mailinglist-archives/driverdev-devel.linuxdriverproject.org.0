Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 400A42E79DC
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Dec 2020 15:02:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2B45B86B0B;
	Wed, 30 Dec 2020 14:02:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xynL-rWwksSW; Wed, 30 Dec 2020 14:02:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E9BDF86AF0;
	Wed, 30 Dec 2020 14:02:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 11E901BF86D
 for <devel@linuxdriverproject.org>; Wed, 30 Dec 2020 14:02:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0C29A871D4
 for <devel@linuxdriverproject.org>; Wed, 30 Dec 2020 14:02:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3i0zEnPVrydc for <devel@linuxdriverproject.org>;
 Wed, 30 Dec 2020 14:02:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
 [209.85.167.46])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0EDA5871CA
 for <devel@driverdev.osuosl.org>; Wed, 30 Dec 2020 14:02:17 +0000 (UTC)
Received: by mail-lf1-f46.google.com with SMTP id y19so37663083lfa.13
 for <devel@driverdev.osuosl.org>; Wed, 30 Dec 2020 06:02:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=kgbDtfqk5fP8ba7WjhXh9EaZlWvPtHxJW5owvXGnu28=;
 b=UhvgoE4yfbHePS8AaVrQlFt/hwDbTrDKwDFCbRhhHEgAe1Hv4O3OeOiKmqtsQSuVUt
 2EzhCLUkVX94507wJTEO5Xcx1y+/WKL+HxJw3rG+NdjkqHYpTIHmHfAD6BDhG9cTHfw/
 vI46uHG3aMxT/34J9JakJmRQGq2WI51algXfdeGu//jRDCGJYh6bFnl478JzLePw7j/B
 PkiZp4Mvwg7KwrUqwWlkYglwRdXL9EVQm3e922wabLwzAcaGgWzj9L4tsiCFYznbDjk8
 mPEUkLquIXzerq6FYZOehyvFtuTnWM/jmFGV4sZIvKmT7wLr8MTGy18L+eHVf9I8UdGN
 c/Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=kgbDtfqk5fP8ba7WjhXh9EaZlWvPtHxJW5owvXGnu28=;
 b=tKfsRwaK149ZHyb/8wdO/HH5UYy5RrziiaOblJ69N8xHHSzhIaxm55jyke0YDrbJ5H
 rG/Qt7DEBz6SSWa7dc8n/52SCMFNbpgsS56JtST32xRQ5u6NOjULytRQ2aUWv+92ZOHL
 aAzjtkAK8FPZKm2i0NUG+vKNzsmUU+IGhuvBoIkgOO+k3RTKWPyzJgM8Z4xgFDC4AnI7
 uA6FeEccWzcW8DgU17Zk3I+xAfjosxKU3bhiZ47hPSsj0OuTUxiQdXVdWimyEIFme3mv
 XmpdKazIDv1o0H/ZiAhJHS7ovPItQXArj9xepymFrN0zI1LhnwNo1PgXLw209K/g3NKX
 wngg==
X-Gm-Message-State: AOAM5308XwreL4tjUONAUBJF75S/SbMXBi9Zms59819v2rYGDRf3K4Jr
 mCMZ/sjSGquyPgfiupGqrJk=
X-Google-Smtp-Source: ABdhPJw9wWSFuQc16RX9NiqQUb8w4TZ5fG/vmflab4lL/iZ0G+l9QXIErYZJBZgqcLvosb2HGM3QiA==
X-Received: by 2002:a2e:8910:: with SMTP id d16mr25849728lji.357.1609336933615; 
 Wed, 30 Dec 2020 06:02:13 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.googlemail.com with ESMTPSA id o12sm5965987lfb.49.2020.12.30.06.02.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 30 Dec 2020 06:02:12 -0800 (PST)
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
 <c4a6336f-e7e6-b23e-4d60-a41d8e09aef3@gmail.com>
 <20201230044637.jjyw5gwe73ovslbd@vireshk-i7>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <7f2385d1-603d-28ab-34e8-3623635045f6@gmail.com>
Date: Wed, 30 Dec 2020 17:02:11 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <20201230044637.jjyw5gwe73ovslbd@vireshk-i7>
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

MzAuMTIuMjAyMCAwNzo0NiwgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gT24gMjgtMTItMjAs
IDE3OjAzLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+IDI4LjEyLjIwMjAgMDk6MjIsIFZpcmVz
aCBLdW1hciDQv9C40YjQtdGCOgo+Pj4gT24gMjQtMTItMjAsIDE2OjAwLCBEbWl0cnkgT3NpcGVu
a28gd3JvdGU6Cj4+Pj4gSW4gYSBkZXZpY2UgZHJpdmVyIEkgd2FudCB0byBzZXQgUEQgdG8gdGhl
IGxvd2VzdCBwZXJmb3JtYW5jZSBzdGF0ZSBieQo+Pj4+IHJlbW92aW5nIHRoZSBwZXJmb3JtYW5j
ZSB2b3RlIHdoZW4gZGV2X3BtX29wcF9zZXRfcmF0ZShkZXYsIDApIGlzCj4+Pj4gaW52b2tlZCBi
eSB0aGUgZHJpdmVyLgo+Pj4+Cj4+Pj4gVGhlIE9QUCBjb3JlIGFscmVhZHkgZG9lcyB0aGlzLCBi
dXQgaWYgT1BQIGxldmVscyBkb24ndCBzdGFydCBmcm9tIDAgaW4KPj4+PiBhIGRldmljZS10cmVl
IGZvciBQRCwgdGhlbiBpdCBjdXJyZW50bHkgZG9lc24ndCB3b3JrIHNpbmNlIHRoZXJlIGlzIGEK
Pj4+PiBuZWVkIHRvIGdldCBhIHJvdW5kZWQtdXAgcGVyZm9ybWFuY2Ugc3RhdGUgYmVjYXVzZQo+
Pj4+IGRldl9wbV9vcHBfc2V0X3ZvbHRhZ2UoKSB0YWtlcyBPUFAgZW50cnkgZm9yIHRoZSBhcmd1
bWVudCAocGF0Y2hlcyA5IGFuZAo+Pj4+IDI4KS4KPj4+Pgo+Pj4+IFRoZSBQRCBwb3dlcmluZyBv
ZmYgYW5kIHBlcmZvcm1hbmNlLWNoYW5nZXMgYXJlIHNlcGFyYXRlIGZyb20gZWFjaCBvdGhlcgo+
Pj4+IGluIHRoZSBHRU5QRCBjb3JlLiBUaGUgR0VOUEQgY29yZSBhdXRvbWF0aWNhbGx5IHR1cm5z
IG9mZiBkb21haW4gd2hlbgo+Pj4+IGFsbCBkZXZpY2VzIHdpdGhpbiB0aGUgZG9tYWluIGFyZSBz
dXNwZW5kZWQgYnkgc3lzdGVtLXN1c3BlbmQgb3IgUlBNLgo+Pj4+Cj4+Pj4gVGhlIHBlcmZvcm1h
bmNlIHN0YXRlIG9mIGEgcG93ZXIgZG9tYWluIGlzIGNvbnRyb2xsZWQgc29sZWx5IGJ5IGEgZGV2
aWNlCj4+Pj4gZHJpdmVyLiBHRU5QRCBjb3JlIG9ubHkgYWdncmVnYXRlcyB0aGUgcGVyZm9ybWFu
Y2UgcmVxdWVzdHMsIGl0IGRvZXNuJ3QKPj4+PiBjaGFuZ2UgdGhlIHBlcmZvcm1hbmNlIHN0YXRl
IG9mIGEgZG9tYWluIGJ5IGl0c2VsZiB3aGVuIGRldmljZSBpcwo+Pj4+IHN1c3BlbmRlZCBvciBy
ZXN1bWVkLCBJSVVDIHRoaXMgaXMgaW50ZW50aW9uYWwuIEFuZCBJIHdhbnQgdG8gcHV0IGRvbWFp
bgo+Pj4+IGludG8gbG93ZXN0IHBlcmZvcm1hbmNlIHN0YXRlIHdoZW4gZGV2aWNlIGlzIHN1c3Bl
bmRlZC4KPj4+Cj4+PiBSaWdodCwgc28gaWYgeW91IHJlYWxseSB3YW50IHRvIGp1c3QgZHJvcCB0
aGUgcGVyZm9ybWFuY2Ugdm90ZSwgdGhlbiB3aXRoIGEKPj4+IHZhbHVlIG9mIDAgZm9yIHRoZSBw
ZXJmb3JtYW5jZSBzdGF0ZSB0aGUgY2FsbCB3aWxsIHJlYWNoIHRvIHlvdXIgZ2VucGQncwo+Pj4g
Y2FsbGJhY2sgLT5zZXRfcGVyZm9ybWFuY2Vfc3RhdGUoKS4gSnVzdCBhcyBkZXZfcG1fb3BwX3Nl
dF9yYXRlKCkgYWNjZXB0cyB0aGUKPj4+IGZyZXF1ZW5jeSB0byBiZSAwLCBJIHdvdWxkIGV4cGVj
dCBkZXZfcG1fb3BwX3NldF9yYXRlKCkgdG8gYWNjZXB0IG9wcCBhcmd1bWVudAo+Pj4gYXMgTlVM
TCBhbmQgaW4gdGhhdCBjYXNlIHNldCB2b2x0YWdlIHRvIDAgYW5kIGRvIHJlZ3VsYXRvcl9kaXNh
YmxlKCkgYXMgd2VsbC4KPj4+IFdvbid0IHRoYXQgd29yayBiZXR0ZXIgdGhhbiBnb2luZyBmb3Ig
dGhlIGxvd2VzdCB2b2x0YWdlID8KPj4+Cj4+Cj4+IFdlIGNhbiBtYWtlIGRldl9wbV9vcHBfc2V0
X3ZvbHRhZ2UoKSB0byBhY2NlcHQgT1BQPU5VTEwgaW4gb3JkZXIgdG8KPj4gZGlzYWJsZSB0aGUg
cmVndWxhdG9yLCBsaWtlIGl0J3MgZG9uZSBmb3IgZGV2X3BtX29wcF9zZXRfcmF0ZShkZXYsIDAp
Lgo+PiBBbHRob3VnaCwgSSBkb24ndCBuZWVkIHRoaXMga2luZCBvZiBiZWhhdmlvdXIgZm9yIHRo
ZSBUZWdyYSBQRCBkcml2ZXIsCj4+IGFuZCB0aHVzLCB3b3VsZCBwcmVmZXIgdG8gbGVhdmUgdGhp
cyBmb3Igc29tZWJvZHkgZWxzZSB0byBpbXBsZW1lbnQgaW4KPj4gdGhlIGZ1dHVyZSwgb25jZSBp
dCB3aWxsIGJlIHJlYWxseSBuZWVkZWQuCj4+Cj4+IFN0aWxsIHdlIG5lZWQgdGhlIGRldl9wbV9v
cHBfZmluZF9sZXZlbF9jZWlsKCkgYmVjYXVzZSBsZXZlbD0wIG1lYW5zCj4+IHRoYXQgd2Ugd2Fu
dCB0byBzZXQgUEQgdG8gdGhlIGxvd2VzdCAobWluaW1hbCkgcGVyZm9ybWFuY2Ugc3RhdGUsIGku
ZS4KPj4gaXQgZG9lc24ndCBuZWNlc3NhcmlseSBtZWFuIHRoYXQgd2Ugd2FudCB0byBzZXQgdGhl
IHZvbHRhZ2UgdG8gMCBhbmQKPj4gZGlzYWJsZSB0aGUgUEQgZW50aXJlbHkuIEdFTlBEIGhhcyBh
IHNlcGFyYXRlIGNvbnRyb2xzIGZvciBvbi9vZmYuCj4gCj4gT2suCj4gCgpJJ2xsIHNlcGFyYXRl
IHRoZSBPUFAgcGF0Y2hlcyBmcm9tIHRoaXMgc2VyaWVzIGFuZCB3aWxsIHByZXBhcmUgdjMsCnRo
YW5rIHlvdSBmb3IgdGhlIHJldmlldyEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVj
dC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpdmVyZGV2LWRldmVsCg==
