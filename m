Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B53C2DF674
	for <lists+driverdev-devel@lfdr.de>; Sun, 20 Dec 2020 19:26:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6405C86AC8;
	Sun, 20 Dec 2020 18:26:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0dT1QBfBsjvd; Sun, 20 Dec 2020 18:26:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E18DA86AAC;
	Sun, 20 Dec 2020 18:26:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 502E51BF592
 for <devel@linuxdriverproject.org>; Sun, 20 Dec 2020 18:26:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4A32B86AAC
 for <devel@linuxdriverproject.org>; Sun, 20 Dec 2020 18:26:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c5jnlzcxX4q2 for <devel@linuxdriverproject.org>;
 Sun, 20 Dec 2020 18:26:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com
 [209.85.167.47])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 47E5286783
 for <devel@driverdev.osuosl.org>; Sun, 20 Dec 2020 18:26:34 +0000 (UTC)
Received: by mail-lf1-f47.google.com with SMTP id o17so18451103lfg.4
 for <devel@driverdev.osuosl.org>; Sun, 20 Dec 2020 10:26:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Dw4JPrP6acwrpZwuGGjt1P7HcEJMDGmCI8V3sWOk5Ic=;
 b=pT37pEqHrqcxmnPSmwxH9RNswp5aGcnhhkvGsin7xICzjgnixZn8OtcU68Lc88mq2F
 QeSH7/ZwBsEUnvTjmYhOv2U7rOCzN/Fwt5knsfkhL1k890q8dzOIpL+9Nub4xIEnFWiC
 I9BU8ipqTFV9wGpnkw3XaXsz9NPpZsKtXRALa5OlSF3SDGThfy0moA2TdgyGl0Q2nICC
 3592J56MExRzHJj3nzxSfQpzZ/eAcS7Tl2sO8BPDjAKnjOdLolp4Zdztugw7fu3gDLg1
 CNXQg+VpYtC8uFh8FVWXpKwvLIWY8ovV2QX09I5bwKez+3EBnhQsJkL28KhPfz9FOJY7
 l5VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Dw4JPrP6acwrpZwuGGjt1P7HcEJMDGmCI8V3sWOk5Ic=;
 b=tKGwQD+hk0OJMs1/S3dizov89agEDEEeq5lCLxxDGG2iw3iWuichOqBB4OBG5HLjnT
 idr0gl/C8u08YRE24NMjzuvyAoQPoUyhX78q7slLB8WxDFasIz1Zwwj2U55QuE/ns90N
 YohvcGxnsJBoGe52r0h4zdCS3YbawY1RTFd5cU2aMgOPzJXGxIGWb1dtMBPOLyJGV53I
 1V8pX9AJpZyvbr0iQrL75R7UT///KURMhwgrLTwjrgz/Bsb/9Qi2xq1hZak8oh/3FvkE
 0GOKxvSD9SjheSxGKRNQXqq8Q5wvLLp9gNW8TVddd2rTAPNQS+bUZnnNjZY4kP1vmesz
 Z49A==
X-Gm-Message-State: AOAM532UtkGMhW9QWpyB3+v2iZpVJH0DLPhva3kGbdrjHhfC5cZHLK1T
 yNy1d4bsD8dl+CL1fbt6AhY=
X-Google-Smtp-Source: ABdhPJwCPdrUxXmxfP01OJOvkTo9IkzknyisoOQ+UqFGkH2TZMJbXVFVbNUMFJk8uto6KAnZIThVbg==
X-Received: by 2002:ac2:59ce:: with SMTP id x14mr5133297lfn.545.1608488792261; 
 Sun, 20 Dec 2020 10:26:32 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.googlemail.com with ESMTPSA id p13sm1877788ljc.112.2020.12.20.10.26.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 20 Dec 2020 10:26:31 -0800 (PST)
Subject: Re: [PATCH v2 07/48] dt-bindings: arm: tegra: Add binding for core
 power domain
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-8-digetx@gmail.com> <20201219105720.GA5323@kozik-lap>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <cba644de-97fc-7249-31b5-d23e7e40634d@gmail.com>
Date: Sun, 20 Dec 2020 21:26:30 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <20201219105720.GA5323@kozik-lap>
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
 Viresh Kumar <vireshk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MTkuMTIuMjAyMCAxMzo1NywgS3J6eXN6dG9mIEtvemxvd3NraSDQv9C40YjQtdGCOgo+IE9uIFRo
dSwgRGVjIDE3LCAyMDIwIGF0IDA5OjA1OjU3UE0gKzAzMDAsIERtaXRyeSBPc2lwZW5rbyB3cm90
ZToKPj4gQWxsIE5WSURJQSBUZWdyYSBTb0NzIGhhdmUgYSBjb3JlIHBvd2VyIGRvbWFpbiB3aGVy
ZSBtYWpvcml0eSBvZiBoYXJkd2FyZQo+PiBibG9ja3MgcmVzaWRlLiBBZGQgYmluZGluZyBmb3Ig
dGhlIGNvcmUgcG93ZXIgZG9tYWluLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgT3NpcGVu
a28gPGRpZ2V0eEBnbWFpbC5jb20+Cj4+IC0tLQo+PiAgLi4uL2FybS90ZWdyYS9udmlkaWEsdGVn
cmEyMC1jb3JlLWRvbWFpbi55YW1sIHwgNDggKysrKysrKysrKysrKysrKysrKwo+PiAgMSBmaWxl
IGNoYW5nZWQsIDQ4IGluc2VydGlvbnMoKykKPj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3RlZ3JhL252aWRpYSx0ZWdyYTIwLWNvcmUt
ZG9tYWluLnlhbWwKPj4KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9hcm0vdGVncmEvbnZpZGlhLHRlZ3JhMjAtY29yZS1kb21haW4ueWFtbCBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vdGVncmEvbnZpZGlhLHRlZ3JhMjAtY29y
ZS1kb21haW4ueWFtbAo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiBpbmRleCAwMDAwMDAwMDAw
MDAuLmYzZDhmZDJkODM3MQo+PiAtLS0gL2Rldi9udWxsCj4+ICsrKyBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vdGVncmEvbnZpZGlhLHRlZ3JhMjAtY29yZS1kb21haW4u
eWFtbAo+PiBAQCAtMCwwICsxLDQ4IEBACj4+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBH
UEwtMi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlCj4+ICslWUFNTCAxLjIKPj4gKy0tLQo+PiArJGlk
OiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9hcm0vdGVncmEvbnZpZGlhLHRlZ3JhMjAt
Y29yZS1kb21haW4ueWFtbCMKPj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRh
LXNjaGVtYXMvY29yZS55YW1sIwo+PiArCj4+ICt0aXRsZTogTlZJRElBIFRlZ3JhIENvcmUgUG93
ZXIgRG9tYWluCj4+ICsKPj4gK21haW50YWluZXJzOgo+PiArICAtIERtaXRyeSBPc2lwZW5rbyA8
ZGlnZXR4QGdtYWlsLmNvbT4KPj4gKyAgLSBKb24gSHVudGVyIDxqb25hdGhhbmhAbnZpZGlhLmNv
bT4KPj4gKyAgLSBUaGllcnJ5IFJlZGluZyA8dGhpZXJyeS5yZWRpbmdAZ21haWwuY29tPgo+PiAr
Cj4+ICtwcm9wZXJ0aWVzOgo+PiArICBjb21wYXRpYmxlOgo+PiArICAgIGVudW06Cj4+ICsgICAg
ICAtIG52aWRpYSx0ZWdyYTIwLWNvcmUtZG9tYWluCj4+ICsgICAgICAtIG52aWRpYSx0ZWdyYTMw
LWNvcmUtZG9tYWluCj4gCj4gVGhlIGZpbGUgc2hvdWxkIGJlIGluIGJpbmRpbmdzL3Bvd2VyLgo+
IEluY2x1ZGUgYWxzbyB0aGUgcG93ZXItZG9tYWluLnlhbWwgc2NoZW1hLgo+IAo+PiArCj4+ICsg
IG9wZXJhdGluZy1wb2ludHMtdjI6Cj4+ICsgICAgZGVzY3JpcHRpb246Cj4+ICsgICAgICBTaG91
bGQgY29udGFpbiBsZXZlbCwgdm9sdGFnZXMgYW5kIG9wcC1zdXBwb3J0ZWQtaHcgcHJvcGVydHku
Cj4+ICsgICAgICBUaGUgc3VwcG9ydGVkLWh3IGlzIGEgYml0ZmllbGQgaW5kaWNhdGluZyBTb0Mg
c3BlZWRvIG9yIHByb2Nlc3MKPj4gKyAgICAgIElEIG1hc2suCj4+ICsKPj4gKyAgIiNwb3dlci1k
b21haW4tY2VsbHMiOgo+PiArICAgIGNvbnN0OiAwCj4+ICsKPj4gKyAgcG93ZXItc3VwcGx5Ogo+
PiArICAgIGRlc2NyaXB0aW9uOgo+PiArICAgICAgUGhhbmRsZSB0byB2b2x0YWdlIHJlZ3VsYXRv
ciBjb25uZWN0ZWQgdG8gdGhlIFNvQyBDb3JlIHBvd2VyIHJhaWwuCj4+ICsKPj4gK3JlcXVpcmVk
Ogo+PiArICAtIGNvbXBhdGlibGUKPj4gKyAgLSBvcGVyYXRpbmctcG9pbnRzLXYyCj4+ICsgIC0g
IiNwb3dlci1kb21haW4tY2VsbHMiCj4+ICsgIC0gcG93ZXItc3VwcGx5Cj4+ICsKPj4gK2FkZGl0
aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQo+PiArCj4+ICtleGFtcGxlczoKPj4gKyAgLSB8Cj4+ICsg
ICAgY29yZS1kb21haW4gewo+IAo+IHBvd2VyLWRvbWFpbiAodG8gZm9sbG93IHNjaGVtYSBhbmQg
ZGV2aWNldHJlZSBzcGVjKQoKVGhhbmtzIGZvciB0aGUgc3VnZ2VzdGlvbiwgSSdsbCB1cGRhdGUg
aXQgaW4gdjMuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8v
ZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJk
ZXYtZGV2ZWwK
