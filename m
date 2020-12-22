Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 058352E0EA3
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Dec 2020 20:16:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AC3F28698B;
	Tue, 22 Dec 2020 19:16:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cRZoKB9Y7W37; Tue, 22 Dec 2020 19:16:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D5DAF86976;
	Tue, 22 Dec 2020 19:16:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DEEAD1BF3D1
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 19:16:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CD11623265
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 19:16:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id olUJqb6b72l9 for <devel@linuxdriverproject.org>;
 Tue, 22 Dec 2020 19:16:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com
 [209.85.167.54])
 by silver.osuosl.org (Postfix) with ESMTPS id EBF6822FB9
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 19:16:48 +0000 (UTC)
Received: by mail-lf1-f54.google.com with SMTP id 23so34450705lfg.10
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 11:16:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=8LCUpi0Bv6VHRO4Owbo1wWhzpbnTDyEyoeExPvlxMpw=;
 b=vFetG7ZFiwo/yl2NVh6oxZB18mV9BShqVa3lTahkF2pbDbu5TcdQOVLTO9/MLdYMgq
 ooq3rs8c9z/DAR+8w42Ilbyxx83xu3+IFmczYSfH6ENb9n1NSjmJWRJkERDT1Mn7Nh08
 viagp2OH5JNp9vScykSOW3b1eELwwOeCGJKHk9bSrw3vI9f1Oe0sV7kdYwZ/GEYDeU/1
 sjMuyUiPHcViXdEjn92uDcql0QBnLolR1Q5Z+wcG75qtWKugSe4EDgBeaAWR7gBHBV1I
 24OG3co9a+ITHYeJZuGofzuBloji4Hh9BlFFjnWrNFKEJrcHVtx2QGEbFA50Clag2TUP
 ySFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8LCUpi0Bv6VHRO4Owbo1wWhzpbnTDyEyoeExPvlxMpw=;
 b=ObwWibJdywhvdCdeMn+X0D4mO2bqjROPM48l8JwPgnk/JpEd6DWZt4eyJIpYJ6jLwO
 wpNFHWzBPltjHCm59SfDtC5X6JxpwkFvdWIZf21SCS3y40Q0WZKo57V31yrlL8jSpJtb
 k3mFwBfOhPS0ZTjLbG8rGLWD1CKuCwcRrOknVVwbZ6NU+BnjZJBRQaW2LUy+RfytaBer
 0xVEz7M5WTmNratrhRghBfI6aMy5+ytG1t3i/3gMf1zv6M2ID/obMZ+EYk5eg7jDMsZv
 GL3By22atPZMOoKM7Bv0sB4DHuAxytrbSkQpCQszuljQT7otko0qWhVk/VHh+emXC0/D
 GTyA==
X-Gm-Message-State: AOAM531KzKGSPrF+Qkl6K2v3St3mXpI5CkE2GXNaYq9lRkUf8LloQPRa
 2WklU6awTfUGaY3yZt5MJIkfbJNBfz8=
X-Google-Smtp-Source: ABdhPJzESFVQASn+ZGQhw50PNtNWOiEZe3+iV8slMZ9kttc1xtTyrnY0QBd85AxyTY+oYzyLIPm/3Q==
X-Received: by 2002:ac2:44ba:: with SMTP id c26mr9218189lfm.132.1608664607240; 
 Tue, 22 Dec 2020 11:16:47 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.googlemail.com with ESMTPSA id s25sm2944290ljo.106.2020.12.22.11.16.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Dec 2020 11:16:46 -0800 (PST)
Subject: Re: [PATCH v2 02/48] dt-bindings: memory: tegra30: emc: Replace core
 regulator with power domain
To: Rob Herring <robh@kernel.org>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-3-digetx@gmail.com>
 <20201221225405.GA723611@robh.at.kernel.org>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <048f9453-c57a-0e42-2684-327781435085@gmail.com>
Date: Tue, 22 Dec 2020 22:16:45 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <20201221225405.GA723611@robh.at.kernel.org>
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
 devicetree@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 linux-tegra@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MjIuMTIuMjAyMCAwMTo1NCwgUm9iIEhlcnJpbmcg0L/QuNGI0LXRgjoKPiBPbiBUaHUsIERlYyAx
NywgMjAyMCBhdCAwOTowNTo1MlBNICswMzAwLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+IFBv
d2VyIGRvbWFpbiBmaXRzIG11Y2ggYmV0dGVyIHRoYW4gYSB2b2x0YWdlIHJlZ3VsYXRvciBpbiBy
ZWdhcmRzIHRvCj4+IGEgcHJvcGVyIGhhcmR3YXJlIGRlc2NyaXB0aW9uIGFuZCBmcm9tIGEgc29m
dHdhcmUgcGVyc3BlY3RpdmUgYXMgd2VsbC4KPj4gSGVuY2UgcmVwbGFjZSB0aGUgY29yZSByZWd1
bGF0b3Igd2l0aCB0aGUgcG93ZXIgZG9tYWluLiBOb3RlIHRoYXQgdGhpcwo+PiBkb2Vzbid0IGFm
ZmVjdCBhbnkgZXhpc3RpbmcgRFRCcyBiZWNhdXNlIHdlIGhhdmVuJ3Qgc3RhcnRlZCB0byB1c2Ug
dGhlCj4+IHJlZ3VsYXRvciB5ZXQsIGFuZCB0aHVzLCBpdCdzIG9rYXkgdG8gY2hhbmdlIGl0Lgo+
Pgo+PiBTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgT3NpcGVua28gPGRpZ2V0eEBnbWFpbC5jb20+Cj4+
IC0tLQo+PiAgLi4uL2JpbmRpbmdzL21lbW9yeS1jb250cm9sbGVycy9udmlkaWEsdGVncmEzMC1l
bWMueWFtbCAgICAgfCA2ICsrKy0tLQo+PiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KSwgMyBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9tZW1vcnktY29udHJvbGxlcnMvbnZpZGlhLHRlZ3JhMzAtZW1jLnlhbWwg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVtb3J5LWNvbnRyb2xsZXJzL252
aWRpYSx0ZWdyYTMwLWVtYy55YW1sCj4+IGluZGV4IDBhMmUyYzBkMGZkZC4uN2I0YWY5MTY5YjBi
IDEwMDY0NAo+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVtb3J5
LWNvbnRyb2xsZXJzL252aWRpYSx0ZWdyYTMwLWVtYy55YW1sCj4+ICsrKyBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZW1vcnktY29udHJvbGxlcnMvbnZpZGlhLHRlZ3JhMzAt
ZW1jLnlhbWwKPj4gQEAgLTM5LDkgKzM5LDkgQEAgcHJvcGVydGllczoKPj4gICAgICBkZXNjcmlw
dGlvbjoKPj4gICAgICAgIFBoYW5kbGUgb2YgdGhlIE1lbW9yeSBDb250cm9sbGVyIG5vZGUuCj4+
ICAKPj4gLSAgY29yZS1zdXBwbHk6Cj4+ICsgIHBvd2VyLWRvbWFpbnM6Cj4+ICAgICAgZGVzY3Jp
cHRpb246Cj4+IC0gICAgICBQaGFuZGxlIG9mIHZvbHRhZ2UgcmVndWxhdG9yIG9mIHRoZSBTb0Mg
ImNvcmUiIHBvd2VyIGRvbWFpbi4KPj4gKyAgICAgIFBoYW5kbGUgdG8gdGhlIFNvQyAiY29yZSIg
cG93ZXIgZG9tYWluLgo+IAo+IHBvd2VyLWRvbWFpbnMgbmVlZHMgdG8gZGVmaW5lIGhvdyBtYW55
IChtYXhJdGVtcykuCgpPa2F5LCB0aGFua3MuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnBy
b2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
