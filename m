Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A500D1208D9
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Dec 2019 15:46:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0075521543;
	Mon, 16 Dec 2019 14:46:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HPOl1kZi9Tzx; Mon, 16 Dec 2019 14:46:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D016F214E6;
	Mon, 16 Dec 2019 14:46:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AD6D31BF3EA
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 14:46:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 98E5A85DA4
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 14:46:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3TTlDged3WFN for <devel@linuxdriverproject.org>;
 Mon, 16 Dec 2019 14:46:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7D99985D4B
 for <devel@driverdev.osuosl.org>; Mon, 16 Dec 2019 14:46:02 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id y1so4429532lfb.6
 for <devel@driverdev.osuosl.org>; Mon, 16 Dec 2019 06:46:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=8hrwNb+62xlSS4630TGqVTgZpEq9XuNM/h7RXL5PTp4=;
 b=JeX9P7d5K86kD8jxLP0OqYX0Xo7tQt3V7bahsEzimx4TzCVwClPFlR1qlAegLRv9r3
 p8si4pZeC0qzILFh9hYvpL75xyt2EuEUHmYq40odgPYB7fFdVDDRc7/E0Y9prfl5ZKSX
 ZAzBRUWj4mgKGDR60sKFlX5R5yuStVbhL5mwyjaAvTs+KxHi81GdWr0JtXqnbEq/oPxg
 W95/lZ8Uf2WuFbM25WYjm9l3PABEQOoX1Hbb5u7vzgLpx54F1dlY9qKrNXb2bE6WBlFr
 VOUYhlxkep9Ckt8hE950xvXYsYhSgMr2Pypq0rp6B4/fxv8QlzH9KyO9FRoh5IccS695
 +GbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8hrwNb+62xlSS4630TGqVTgZpEq9XuNM/h7RXL5PTp4=;
 b=aVEnNFjFx+ptDAGlgpzi4tWdxcNnWLHC4Fcw7criXI/uxi96VClBUaq541qj5wZl4t
 9Ks0ibnd0YuiqxKhnNWzUbziAdME5bywGbaYuywSRDlMPP3ETDtbEa7KxMeAhUTWrtu+
 VFND9C/ctg11ULyIDM4UCn/pV/u/TlW6mayLkh/mCCebWxBY/SyNcBiSisZ611i1WkoD
 1AnP5OBkdkKCvmCXJ+iDgv3l9lPTdILoBzGlTW7kQO7O5nt2n9bCSaoUL2m6zrIr/Cgj
 NCWSK7hJfTMBwY47fBw9PTiMP7Htju4bCQSSM2z30hC4aEnfCOgb36ud+cYNmENDa6uK
 aEaw==
X-Gm-Message-State: APjAAAWAHeKgwXqq7qzi9iVx1IBouyVp9FslCeTcReAcEpZBnFEF7oKv
 JFvvCICCLEl2mhilq6BRGyU=
X-Google-Smtp-Source: APXvYqxpUiYf76+8+R/J8+oxqzt6bKaYvjoUEm+LQ9lETcooxx3UqoSOQ5rP7pNrP6GB6JavMqdwKw==
X-Received: by 2002:a19:8a41:: with SMTP id m62mr16906210lfd.5.1576507560617; 
 Mon, 16 Dec 2019 06:46:00 -0800 (PST)
Received: from [192.168.2.145] (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.googlemail.com with ESMTPSA id n23sm9158442lfa.41.2019.12.16.06.45.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Dec 2019 06:45:59 -0800 (PST)
Subject: Re: [PATCH v1 0/3] Tegra GPIO: Minor code clean up
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
References: <20191215183047.9414-1-digetx@gmail.com>
Message-ID: <b108c394-cdbc-e6c7-1688-69e05eea2279@gmail.com>
Date: Mon, 16 Dec 2019 17:45:57 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20191215183047.9414-1-digetx@gmail.com>
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
Cc: linux-tegra@vger.kernel.org, linux-gpio@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MTUuMTIuMjAxOSAyMTozMCwgRG1pdHJ5IE9zaXBlbmtvINC/0LjRiNC10YI6Cj4gSGVsbG8sCj4g
Cj4gSSB3YXMgaW52ZXN0aWdhdGluZyB3aHkgQ1BVIGhhbmdzIGR1cmluZyBvZiBHUElPIGRyaXZl
ciBzdXNwZW5kIGFuZCBpbgo+IHRoZSBlbmQgaXQgdHVybmVkIG91dCB0aGF0IGl0IGlzIGEgQnJv
YWRjb20gV2lGaSBkcml2ZXIgcHJvYmxlbSBiZWNhdXNlCj4gaXQga2VlcHMgT09CIHdha2UtaW50
ZXJydXB0IGVuYWJsZWQgd2hpbGUgV0xBTiBpbnRlcmZhY2UgaXMgRE9XTiBhbmQgdGhpcwo+IG1h
eSBjYXVzZSBhIGJpdCB3ZWlyZCBDUFUgaGFuZyBvbiB3cml0aW5nIHRvIElOVF9FTkIgcmVnaXN0
ZXIgZHVyaW5nIG9mCj4gR1BJTyBkcml2ZXIgc3VzcGVuZC4gTWVhbndoaWxlIEkgYWxzbyBub3Rp
Y2VkIHRoYXQgYSBmZXcgdGhpbmdzIGNvdWxkIGJlCj4gaW1wcm92ZWQgaW4gdGhlIGRyaXZlciwg
dGhhdCdzIHdoYXQgdGhpcyBzbWFsbCBzZXJpZXMgYWRkcmVzc2VzLgo+IAo+IERtaXRyeSBPc2lw
ZW5rbyAoMyk6Cj4gICBncGlvOiB0ZWdyYTogVXNlIGdlbmVyaWMgcmVhZGxfcmVsYXhlZC93cml0
ZWxfcmVsYXhlZCBhY2Nlc3NvcnMKPiAgIGdwaW86IHRlZ3JhOiBQcm9wZXJseSBoYW5kbGUgaXJx
X3NldF9pcnFfd2FrZSgpIGVycm9yCj4gICBncGlvOiB0ZWdyYTogVXNlIE5PSVJRIHBoYXNlIGZv
ciBzdXNwZW5kL3Jlc3VtZQo+IAo+ICBkcml2ZXJzL2dwaW8vZ3Bpby10ZWdyYS5jIHwgMjEgKysr
KysrKysrKy0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAx
MSBkZWxldGlvbnMoLSkKPiAKCkZvciB0aGUgcmVmZXJlbmNlLCBoZXJlIGlzIHRoZSBXaUZpIGRy
aXZlciBmaXg6CgpodHRwczovL3BhdGNod29yay5vemxhYnMub3JnL3BhdGNoLzEyMDk5OTcvCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxp
bmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
