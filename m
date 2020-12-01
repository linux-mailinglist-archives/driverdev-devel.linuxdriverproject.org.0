Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C592CA5FE
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Dec 2020 15:44:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D9B3687F1C;
	Tue,  1 Dec 2020 14:44:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oXrdHIWtU6+R; Tue,  1 Dec 2020 14:44:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CB632871D2;
	Tue,  1 Dec 2020 14:44:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9B4D61BF290
 for <devel@linuxdriverproject.org>; Tue,  1 Dec 2020 14:44:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 974B685DC7
 for <devel@linuxdriverproject.org>; Tue,  1 Dec 2020 14:44:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nx1kg8Eo-FIv for <devel@linuxdriverproject.org>;
 Tue,  1 Dec 2020 14:44:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AD9EA85D8F
 for <devel@driverdev.osuosl.org>; Tue,  1 Dec 2020 14:44:33 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id y10so3291526ljc.7
 for <devel@driverdev.osuosl.org>; Tue, 01 Dec 2020 06:44:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=y9EUIaQ8GAN124ZcC2ubYB5qyTvd2qS6h+7s4S3ERhc=;
 b=tllgianMmrwuVpg6r3EmSTbKQSrPwzHyLcVAGFGi8/j+Pv2v6Gawoxml6JypW3e/Fu
 uMD0+CCTqDUo+pboGZDab1cgowlL44vTGDNNLVM87U+vO9qW04DMZQ5er5jwhoSwo+C2
 oDGz0FNJVfUs4T4OhzqtNobs6ut7R+2vCjVg8XmISnlQwEvbL5+UbB7Ge/dl49yB1TDK
 LYr25AZKa89UDlsmo2lD+gB7fYf6oEybJdqrCla7h3Sbvu7NLCHdyfDEaEBGwRbk0p3k
 4dHDlgZcvIAPJ7Rwh3E87FaAedb6Zaw4q8ebIT4+AAar4b0q2P++jCQn5/vGXhYLTolq
 mhEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=y9EUIaQ8GAN124ZcC2ubYB5qyTvd2qS6h+7s4S3ERhc=;
 b=SjN3uf49v6xY0X8ou8u67ZThfgHhLAC1kNt3DZHa4aAY8qNvo2/KaLz+UyCBV4NikR
 3BST10wn5zezZ4L+nbAQVhgEs2g973QpZfGuOZBYAhk6JIFkDXsvAWFDVMfLXX4eX3fV
 Un2QSTjSfyBB07clUPGxeA4mfmxvYNYfCQ7y3qdYSczJDyQ+yesS09BOztjS0vYk3+Ls
 S9IllM6/vI5nqNCdvN9Dal3urwQ52xDBMIyT/xl3yIIl9vNcQc4yemTVifWf921INcUR
 QpwhRkSALlkdMdiO6rrTmMHz7PU5QLIyGrFrOIUXj0MndXfdxk53o7ODC8EkP12f+x7P
 Hiig==
X-Gm-Message-State: AOAM531BTKhbfnENjEwA/IJ9OpEwjYL/1dybnmDkt6zvVJao7sdCrq9I
 Stp62qc+kX9LyxVNuIDGrMM=
X-Google-Smtp-Source: ABdhPJx2qDWHfrVca/Vv8M2UHUKK2ubeA/h9klMOPlTpcfO8LtF0Sa0uJ6QnKT2b0Nx9rH1QAeJ6mg==
X-Received: by 2002:a2e:9c51:: with SMTP id t17mr1411950ljj.302.1606833871765; 
 Tue, 01 Dec 2020 06:44:31 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-53.dynamic.spd-mgts.ru.
 [109.252.192.53])
 by smtp.googlemail.com with ESMTPSA id c14sm224862lfp.7.2020.12.01.06.44.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 01 Dec 2020 06:44:30 -0800 (PST)
Subject: Re: [PATCH v1 00/30] Introduce core voltage scaling for NVIDIA
 Tegra20/30 SoCs
To: Mark Brown <broonie@kernel.org>
References: <20201104234427.26477-1-digetx@gmail.com>
 <160683107675.35139.13466076210885462180.b4-ty@kernel.org>
 <858e4183-5064-084f-9b80-870e118c3edc@gmail.com>
 <20201201143420.GD5239@sirena.org.uk>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <2349ba09-95bf-1e2f-68ae-deea36805628@gmail.com>
Date: Tue, 1 Dec 2020 17:44:29 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <20201201143420.GD5239@sirena.org.uk>
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
Cc: Peter Chen <Peter.Chen@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 linux-pwm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Adrian Hunter <adrian.hunter@intel.com>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>, devel@driverdev.osuosl.org,
 linux-samsung-soc@vger.kernel.org, Nicolas Chauvet <kwizart@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Alan Stern <stern@rowland.harvard.edu>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MDEuMTIuMjAyMCAxNzozNCwgTWFyayBCcm93biDQv9C40YjQtdGCOgo+IE9uIFR1ZSwgRGVjIDAx
LCAyMDIwIGF0IDA1OjE3OjIwUE0gKzAzMDAsIERtaXRyeSBPc2lwZW5rbyB3cm90ZToKPj4gMDEu
MTIuMjAyMCAxNjo1NywgTWFyayBCcm93biDQv9C40YjQtdGCOgo+IAo+Pj4gWzEvMV0gcmVndWxh
dG9yOiBBbGxvdyBza2lwcGluZyBkaXNhYmxlZCByZWd1bGF0b3JzIGluIHJlZ3VsYXRvcl9jaGVj
a19jb25zdW1lcnMoKQo+Pj4gICAgICAgKG5vIGNvbW1pdCBpbmZvKQo+IAo+PiBDb3VsZCB5b3Ug
cGxlYXNlIGhvbGQgb24gdGhpcyBwYXRjaD8gSXQgd29uJ3QgYmUgbmVlZGVkIGluIGEgdjIsIHdo
aWNoCj4+IHdpbGwgdXNlIHBvd2VyIGRvbWFpbnMuCj4gCj4+IEFsc28sIEknbSBub3Qgc3VyZSB3
aGV0aGVyIHRoZSAic291bmQiIHRyZWUgaXMgc3VpdGFibGUgZm9yIGFueSBvZiB0aGUKPj4gcGF0
Y2hlcyBpbiB0aGlzIHNlcmllcy4KPiAKPiBJdCBkaWRuJ3QgYWN0dWFsbHkgZ2V0IGFwcGxpZWQg
KG5vdGUgdGhlICJubyBjb21taXQgaW5mbyIpIC0gaXQgbG9va3MKPiBsaWtlIGI0J3MgbWF0Y2hp
bmcgY29kZSBnb3QgY29uZnVzZWQgYW5kIGRlY2lkZWQgdG8gZ2VuZXJhdGUgbWFpbHMgZm9yCj4g
YW55dGhpbmcgdGhhdCBJJ3ZlIGV2ZXIgZG93bmxvYWRlZCBhbmQgbm90IHBvc3RlZC4KPiAKCkFs
cmlnaHQsIHRoYW5rIHlvdSBmb3IgdGhlIGNsYXJpZmljYXRpb24uCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBs
aW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
