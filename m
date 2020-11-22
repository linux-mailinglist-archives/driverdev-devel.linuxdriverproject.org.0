Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F04C22BC31A
	for <lists+driverdev-devel@lfdr.de>; Sun, 22 Nov 2020 03:01:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7407C86783;
	Sun, 22 Nov 2020 02:01:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M5u9wClUmlql; Sun, 22 Nov 2020 02:01:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A6E90863A1;
	Sun, 22 Nov 2020 02:01:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B6F951BF38E
 for <devel@linuxdriverproject.org>; Sun, 22 Nov 2020 02:01:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ABEFB86AC8
 for <devel@linuxdriverproject.org>; Sun, 22 Nov 2020 02:01:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D7RttG2utBgX for <devel@linuxdriverproject.org>;
 Sun, 22 Nov 2020 02:01:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 12A7B86A7D
 for <devel@driverdev.osuosl.org>; Sun, 22 Nov 2020 02:01:14 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id r24so2793321lfm.8
 for <devel@driverdev.osuosl.org>; Sat, 21 Nov 2020 18:01:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=uk/uljnw5dkhMuHJcyG6t+EUhLYhiEmvZcOgKfsyFbY=;
 b=kKIXK7FHodJdsPn2IJ69JCIa9qL7ywC1hkAJ7QFEXXgsc2cRhPGLZNDorNElSRze2k
 2vQBVFGBypoCKutrGo2Pow3GJLwjJeg+va//qSXIlT7ahPGGLkxZelTMNloVfGChq9Mv
 519vRHmEQp9T/t/BiB05lMm1+L0eane+LwY4M3aemBloR4HP6Qro3Bo8dPcFdAcv2h18
 PC4npNoZ3D/wLjCVyR6y33+2uj/IzITYckis+hjuc8ZEyvA+mMkG/Wl3mcfAeX3BLO4q
 /0989lWL3jPwMa7TKVuykqfjx4jN7xyD63E1GGyGwrwpyJ66RC2kbBM0wbCYRXwnHy3x
 +hlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=uk/uljnw5dkhMuHJcyG6t+EUhLYhiEmvZcOgKfsyFbY=;
 b=iPsYzOAPKyF/7vRjtUfz6Y0n4HeZuuCN62ZojkshnLvdlrwzGnHQ7zzQnQxSwP9LEE
 ExGxIE7sSNYU+mTkMo3Np+d2RXVmRcqrzLam2H+83PSXMsSiRpF6ExXFHGMjgA6zoy5K
 0ZjoKAxYBKoOHubCxin/AWRMXgwdu2wWtqeL2wCpurYaeUZ45R1/LkmJ2GrsiKehFrhN
 ax0UanyupRbyoAIdnc/lsSDpzvRmMyPqlTU6BZ8+EnAQw7CkpVdPpDf/RJOJvcIXj7FW
 BO66rRrHrEJwLn36iTF6cqgqmDcqO5GS5iogtM7zRVdLhabFi0DpLO1tfnuNarxN4/3E
 PLgA==
X-Gm-Message-State: AOAM5326r5YjXs2EM//sA6Mkwq/ZlL1V91X7kwHl4A1pRyRlSj3ulGLq
 8QeiqljKpK2Lr6XPynNBuXI=
X-Google-Smtp-Source: ABdhPJw6wSTFDc52CkEHyfbeW7rPOMyo0PdAgkWOyolQ+UWqTQOBpDH80YT8aLcmo5oQ12wQlPqzlA==
X-Received: by 2002:a19:f704:: with SMTP id z4mr10030812lfe.312.1606010471709; 
 Sat, 21 Nov 2020 18:01:11 -0800 (PST)
Received: from [192.168.2.145] (109-252-193-159.dynamic.spd-mgts.ru.
 [109.252.193.159])
 by smtp.googlemail.com with ESMTPSA id u16sm789992ljd.93.2020.11.21.18.01.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 21 Nov 2020 18:01:11 -0800 (PST)
Subject: Re: [PATCH v5 2/4] staging: media: Introduce NVIDIA Tegra video
 decoder driver
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
References: <cover.1513038011.git.digetx@gmail.com>
 <3d565db80f8dccafd14224924305243b37b75a07.1513038011.git.digetx@gmail.com>
 <CAAEAJfBZD0u6MDxcp3See-agzyCSJS7dKpwK28LMJwPvE9DLtQ@mail.gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <5665b221-04d7-6be9-2377-8006b9563d4b@gmail.com>
Date: Sun, 22 Nov 2020 05:01:09 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <CAAEAJfBZD0u6MDxcp3See-agzyCSJS7dKpwK28LMJwPvE9DLtQ@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, devicetree <devicetree@vger.kernel.org>,
 Stephen Warren <swarren@wwwdotorg.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Vladimir Zapolskiy <vz@mleia.com>,
 Thierry Reding <thierry.reding@gmail.com>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MjIuMTEuMjAyMCAwNDowMiwgRXplcXVpZWwgR2FyY2lhINC/0LjRiNC10YI6Cj4gSGkgRG1pdHJ5
LAo+IAouLi4KPj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS9UT0RPCj4+
IEBAIC0wLDAgKzEsNCBAQAo+PiArVE9ETzoKPj4gKyAgICAgICAtIEltcGxlbWVudCBWNEwyIEFQ
SSBvbmNlIGl0IGdhaW5zIHN1cHBvcnQgZm9yIHN0YXRlbGVzcyBkZWNvZGVycy4KPj4gKwo+PiAr
Q29udGFjdDogRG1pdHJ5IE9zaXBlbmtvIDxkaWdldHhAZ21haWwuY29tPgo+IAo+IFRoZSBBUEkg
Zm9yIEgyNjQgc3RhdGVsZXNzIGRlY29kaW5nIGlzIHJlYWR5Lgo+IFNlZSBodHRwczovL2xrbWwu
b3JnL2xrbWwvMjAyMC8xMS8xOC83OTUuCgpIZWxsbyBFemVxdWllbCwKClRoYW5rIHlvdSBmb3Ig
dGhlIG5vdGlmaWNhdGlvbiEgTXkgbGFzdCBhdHRlbXB0IGF0IGltcGxlbWVudGluZyBWNEwgQVBJ
CnN1cHBvcnQgd2FzIGFib3V0IGEgeWVhciBhZ28gYW5kIGl0IHN0b3BwZWQgb25jZSBJIHJlYWxp
emVkIHRoYXQgdGhlcmUKaXMgbm8gdXNlcnNwYWNlIHdoaWNoIHVzZXMgdGhhdCBBUEkuIEZGTVBF
RyBhbmQgY2hyb21pdW0gYnJvd3NlciBoYWQKc29tZSBraW5kIG9mIFY0TCBzdXBwb3J0LCBidXQg
aXQgYWxsIHdhcyBvcmllbnRlZCBhdCBkb3duc3RyZWFtIGRyaXZlcgpzdGFja3MsIGFuZCB0aHVz
LCBub3QgdXNhYmxlLiBEbyB5b3Uga25vdyB3aGF0IGlzIHRoZSBjdXJyZW50IHN0YXR1cz8KCj4g
T25lIG1pbm9yIGNvbW1lbnQgYmVsb3cuCj4gCi4uLgo+PiArICAgICAgIC8vIFBQUwo+PiArICAg
ICAgIF9fdTggIHBpY19pbml0X3FwOwo+PiArICAgICAgIF9fdTggIGRlYmxvY2tpbmdfZmlsdGVy
X2NvbnRyb2xfcHJlc2VudF9mbGFnOwo+PiArICAgICAgIF9fdTggIGNvbnN0cmFpbmVkX2ludHJh
X3ByZWRfZmxhZzsKPj4gKyAgICAgICBfX3U4ICBjaHJvbWFfcXBfaW5kZXhfb2Zmc2V0Owo+PiAr
ICAgICAgIF9fdTggIHBpY19vcmRlcl9wcmVzZW50X2ZsYWc7Cj4+ICsKPiAKPiBUaGlzIHNlZW1z
IHRvIGJlIGJvdHRvbV9maWVsZF9waWNfb3JkZXJfaW5fZnJhbWVfcHJlc2VudF9mbGFnLAo+IGFz
IHRoZXJlIGlzIG5vICJwaWNfb3JkZXJfcHJlc2VudF9mbGFnIiBzeW50YXggZWxlbWVudC4KCkNv
cnJlY3QsIGxvb2tzIGxpa2UgSSBib3Jyb3dlZCB0aGF0IG5hbWUgZnJvbSB0aGUgbGlidmRwYXUg
QVBJLgoKaHR0cHM6Ly92ZHBhdS5wYWdlcy5mcmVlZGVza3RvcC5vcmcvbGlidmRwYXUvc3RydWN0
X3ZkcF9waWN0dXJlX2luZm9faDI2NC5odG1sI2E0MDVmN2VmMjZlYTc2YmIyYzQ0NmUxNTEwNjJm
YzAwMQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZl
bCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVy
ZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2
ZWwK
