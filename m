Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D88FE2A8F4F
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Nov 2020 07:15:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 679FB857FB;
	Fri,  6 Nov 2020 06:15:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id geiOxX2QVSka; Fri,  6 Nov 2020 06:15:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 49B178584A;
	Fri,  6 Nov 2020 06:15:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E70441BF368
 for <devel@linuxdriverproject.org>; Fri,  6 Nov 2020 06:15:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E2FD88675E
 for <devel@linuxdriverproject.org>; Fri,  6 Nov 2020 06:15:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gvh6NY4Bk5rQ for <devel@linuxdriverproject.org>;
 Fri,  6 Nov 2020 06:15:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id ADDE58673C
 for <devel@driverdev.osuosl.org>; Fri,  6 Nov 2020 06:15:17 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id x23so186942plr.6
 for <devel@driverdev.osuosl.org>; Thu, 05 Nov 2020 22:15:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=F6tmY/1EFEb7yGiRngVYTKYYAOLMtuHBKlHb/X3FBro=;
 b=HzLmr6JaFIcMravMY3wIPry/F1073BkN3VM3cd8Gi2O7jw7et61EBNfNlEzqqyIEDr
 O9QiSB84NaObwQzvoVVuxKeOGt8VndPGxRzphlfH+7cLMvRgCXLb/PtEMTpcP1H83oxY
 b+191SXYF8ylE2gKUBgugVqSge7yMZjugqqrlBWgxtA673su21UfCt+IML3oDpN4vxti
 8gs+7/IuMoCGcBYg+3V7fWv1iCZUsugnMa0A4fQsRR3hvDwRfUGjQ+Urs3m1MNcObuQw
 SCG2Y8JOLZc95bYGIDT0kkK9vrovP4jkrz7oM7qStmXfzFjQgjgOi7MZJht8PgCtGzrM
 RfPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=F6tmY/1EFEb7yGiRngVYTKYYAOLMtuHBKlHb/X3FBro=;
 b=iJ+4TPjIlS7yeVhN1hq6ZsrxwXOWNaiScDw/FFr3aQRPM06uoVHlyI3uTfpeFLAHg7
 eo2IBnrjqttX6k4Df2vC7Kb8u/wXuv56jTLzF7EnqYj1SxIoTOijs+bPvy28WXTBEaPz
 0ZZwMl5h1bhU70EZyBOvLiqBOuSFTHDqpuELgleYOnQcwJPZNwGU3csTSA/upcFtOelw
 HYjdVeN4qeUGZRFU2paLyJ2poQ7x3yrfmOh9pNZhj7JOizFo6cCBHv0VyhUyx1TPNE5V
 VJWn98R/hMVFmNLovVopOFH3AY7ekZmeq7nh3RdGRmeYS5mGomHQGMz6Uj8M1ne8Ctbk
 mgFg==
X-Gm-Message-State: AOAM533HBL5wSQ92AvkBetBZ5E83j4OlIiujF61uamXkmZUQQSB3JS5d
 /pSJiQ1WBi57bfGHht/zoch8Dw==
X-Google-Smtp-Source: ABdhPJxg63tT7kf2/vWsP55uyoDC2lQuTRCTVcejh0K/L0eGZvU7H1zdtru1IjirtMh06PtAF/i6Ug==
X-Received: by 2002:a17:902:9a83:b029:d6:e05e:c7e9 with SMTP id
 w3-20020a1709029a83b02900d6e05ec7e9mr430546plp.49.1604643317224; 
 Thu, 05 Nov 2020 22:15:17 -0800 (PST)
Received: from localhost ([122.172.12.172])
 by smtp.gmail.com with ESMTPSA id h16sm703800pjz.10.2020.11.05.22.15.14
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Nov 2020 22:15:15 -0800 (PST)
Date: Fri, 6 Nov 2020 11:45:13 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v1 17/30] mmc: sdhci-tegra: Support OPP and core voltage
 scaling
Message-ID: <20201106061513.uyys7njcqcdlah67@vireshk-i7>
References: <20201104234427.26477-1-digetx@gmail.com>
 <20201104234427.26477-18-digetx@gmail.com>
 <CAOh2x==sy1w7_oEV8=toC6uQnSN44wyOixbP_X0BrMsnm1AUFg@mail.gmail.com>
 <6fa54ce6-d5ae-d04f-7c77-b62c148d92b7@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6fa54ce6-d5ae-d04f-7c77-b62c148d92b7@gmail.com>
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
 DTML <devicetree@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 driver-dev <devel@driverdev.osuosl.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Alan Stern <stern@rowland.harvard.edu>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-media@vger.kernel.org, linux-pwm@vger.kernel.org,
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

T24gMDUtMTEtMjAsIDE3OjE4LCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4gMDUuMTEuMjAyMCAx
Mjo1OCwgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gPj4gK3N0YXRpYyB2b2lkIHNkaGNpX3Rl
Z3JhX2RlaW5pdF9vcHBfdGFibGUodm9pZCAqZGF0YSkKPiA+PiArewo+ID4+ICsgICAgICAgc3Ry
dWN0IGRldmljZSAqZGV2ID0gZGF0YTsKPiA+PiArICAgICAgIHN0cnVjdCBvcHBfdGFibGUgKm9w
cF90YWJsZTsKPiA+PiArCj4gPj4gKyAgICAgICBvcHBfdGFibGUgPSBkZXZfcG1fb3BwX2dldF9v
cHBfdGFibGUoZGV2KTsKPiA+IFNvIHlvdSBuZWVkIHRvIGdldCBhbiBPUFAgdGFibGUgdG8gcHV0
IG9uZSA6KQo+ID4gWW91IG5lZWQgdG8gc2F2ZSB0aGUgcG9pbnRlciByZXR1cm5lZCBieSBkZXZf
cG1fb3BwX3NldF9yZWd1bGF0b3JzKCkgaW5zdGVhZC4KPiAKPiBUaGlzIGlzIGludGVudGlvbmFs
IGJlY2F1c2Ugd2h5IGRvIHdlIG5lZWQgdG8gc2F2ZSB0aGUgcG9pbnRlciBpZiB3ZSdyZQo+IG5v
dCB1c2luZyBpdCBhbmQgd2Uga25vdyB0aGF0IHdlIGNvdWxkIGdldCB0aGlzIHBvaW50ZXIgdXNp
bmcgT1BQIEFQST8KCkJlY2F1c2UgaXQgaXMgaGlnaGx5IGluZWZmaWNpZW50IGFuZCBpdCBkb2Vz
bid0IGZvbGxvdyB0aGUgcnVsZXMgc2V0CmJ5IHRoZSBPUFAgY29yZS4gSHlwb3RoZXRpY2FsbHkg
c3BlYWtpbmcsIHRoZSBPUFAgY29yZSBpcyBmcmVlIHRvCmFsbG9jYXRlIHRoZSBPUFAgdGFibGUg
c3RydWN0dXJlIGFzIG11Y2ggYXMgaXQgd2FudHMsIGFuZCBpZiB5b3UgZG9uJ3QKdXNlIHRoZSB2
YWx1ZSByZXR1cm5lZCBiYWNrIHRvIHlvdSBlYXJsaWVyICh0aGluayBvZiBpdCBhcyBhIGNvb2tp
ZQphc3NpZ25lZCB0byB5b3VyIGRyaXZlciksIHRoZW4gaXQgd2lsbCBldmVudHVhbGx5IGxlYWQg
dG8gbWVtb3J5IGxlYWsuCgo+IFRoaXMgaXMgZXhhY3RseSB0aGUgc2FtZSB3aGF0IEkgZGlkIGZv
ciB0aGUgQ1BVRnJlcSBkcml2ZXIgWzFdIDopCgpJIHdpbGwgc3Ryb25nbHkgc3VnZ2VzdCB5b3Ug
dG8gc2F2ZSB0aGUgcG9pbnRlciBoZXJlIGFuZCBkbyB0aGUgc2FtZQppbiB0aGUgY3B1ZnJlcSBk
cml2ZXIgYXMgd2VsbC4KCj4gPj4gK3N0YXRpYyBpbnQgZGV2bV9zZGhjaV90ZWdyYV9pbml0X29w
cF90YWJsZShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gPj4gK3sKPiA+PiArICAgICAgIHN0cnVjdCBv
cHBfdGFibGUgKm9wcF90YWJsZTsKPiA+PiArICAgICAgIGNvbnN0IGNoYXIgKnJuYW1lID0gImNv
cmUiOwo+ID4+ICsgICAgICAgaW50IGVycjsKPiA+PiArCj4gPj4gKyAgICAgICAvKiB2b2x0YWdl
IHNjYWxpbmcgaXMgb3B0aW9uYWwgKi8KPiA+PiArICAgICAgIGlmIChkZXZpY2VfcHJvcGVydHlf
cHJlc2VudChkZXYsICJjb3JlLXN1cHBseSIpKQo+ID4+ICsgICAgICAgICAgICAgICBvcHBfdGFi
bGUgPSBkZXZfcG1fb3BwX3NldF9yZWd1bGF0b3JzKGRldiwgJnJuYW1lLCAxKTsKPiA+PiArICAg
ICAgIGVsc2UKPiA+IAo+ID4+ICsgICAgICAgICAgICAgICBvcHBfdGFibGUgPSBkZXZfcG1fb3Bw
X2dldF9vcHBfdGFibGUoZGV2KTsKClRvIG1ha2UgaXQgZnVydGhlciBjbGVhciwgdGhpcyB3aWxs
IGVuZCB1cCBhbGxvY2F0aW5nIGFuIE9QUCB0YWJsZSBmb3IKeW91LCB3aGljaCBpdCBzaG91bGRu
J3QgaGF2ZS4KCj4gPiBOaWNlLiBJIGRpZG4ndCB0aGluayB0aGF0IHNvbWVvbmUgd2lsbCBlbmQg
dXAgYWJ1c2luZyB0aGlzIEFQSSBhbmQgc28gbWFkZSBpdAo+ID4gYXZhaWxhYmxlIGZvciBhbGws
IGJ1dCBzb21lb25lIGp1c3QgZGlkIHRoYXQuIEkgd2lsbCBmaXggdGhhdCBpbiB0aGUgT1BQIGNv
cmUuCgpUbyBiZSBmYWlyLCBJIGFsbG93ZWQgdGhlIGNwdWZyZXEtZHQgZHJpdmVyIHRvIGFidXNl
IGl0IHRvbywgd2hpY2ggSQphbSBnb2luZyB0byBmaXggc2hvcnRseS4KCj4gVGhlIGRldl9wbV9v
cHBfcHV0X3JlZ3VsYXRvcnMoKSBoYW5kbGVzIHRoZSBjYXNlIHdoZXJlIHJlZ3VsYXRvciBpcwo+
IG1pc3NpbmcgYnkgYWN0aW5nIGFzIGRldl9wbV9vcHBfZ2V0X29wcF90YWJsZSgpLCBidXQgdGhl
Cj4gZGV2X3BtX29wcF9zZXRfcmVndWxhdG9ycygpIGRvZXNuJ3QgZG8gaXQuIEhlbmNlIEkgZG9u
J3QgdGhpbmsgdGhpcyBpcwo+IGFuIGFidXNlLCBidXQgdGhlIE9QUCBBUEkgZHJhd2JhY2suCgpJ
IGFtIG5vdCBzdXJlIHdoYXQgeW91IG1lYW50IGhlcmUuIE5vcm1hbGx5IHlvdSBhcmUgcmVxdWly
ZWQgdG8gY2FsbApkZXZfcG1fb3BwX3B1dF9yZWd1bGF0b3JzKCkgb25seSBpZiB5b3UgaGF2ZSBj
YWxsZWQKZGV2X3BtX29wcF9zZXRfcmVndWxhdG9ycygpIGVhcmxpZXIuIEFuZCB0aGUgcmVmY291
bnQgc3RheXMgaW4KYmFsYW5jZS4KCj4gPiBBbnkgaWRlYSB3aHkgeW91IGFyZSBkb2luZyB3aGF0
IHlvdSBhcmUgZG9pbmcgaGVyZSA/Cj4gCj4gVHdvIHJlYXNvbnM6Cj4gCj4gMS4gVm9sdGFnZSBy
ZWd1bGF0b3IgaXMgb3B0aW9uYWwsIGJ1dCBkZXZfcG1fb3BwX3NldF9yZWd1bGF0b3JzKCkKPiBk
b2Vzbid0IHN1cHBvcnQgb3B0aW9uYWwgcmVndWxhdG9ycy4KPiAKPiAyLiBXZSBuZWVkIHRvIGJh
bGFuY2UgdGhlIG9wcF90YWJsZSByZWZjb3VudCBpbiBvcmRlciB0byB1c2UgT1BQIEFQSQo+IHdp
dGhvdXQgcG9sbHV0aW5nIGNvZGUgd2l0aCBpZihoYXZlX3JlZ3VsYXRvciksIGhlbmNlIHRoZQo+
IGRldl9wbV9vcHBfZ2V0X29wcF90YWJsZSgpIGlzIG5lZWRlZCBmb3IgdGFraW5nIHRoZSBvcHBf
dGFibGUgcmVmZXJlbmNlCj4gdG8gaGF2ZSB0aGUgc2FtZSByZWZjb3VudCBhcyBpbiB0aGUgY2Fz
ZSBvZiB0aGUgZGV2X3BtX29wcF9zZXRfcmVndWxhdG9ycygpLgoKSSBhbSBnb2luZyB0byBzZW5k
IGEgcGF0Y2hzZXQgc2hvcnRseSBhZnRlciB3aGljaCB0aGlzIGNhbGwgdG8KZGV2X3BtX29wcF9n
ZXRfb3BwX3RhYmxlKCkgd2lsbCBmYWlsLCBpZiBpdCBpcyBjYWxsZWQgYmVmb3JlIGFkZGluZwp0
aGUgT1BQIHRhYmxlLgoKPiBJIGd1ZXNzIHdlIGNvdWxkIG1ha2UgZGV2X3BtX29wcF9zZXRfcmVn
dWxhdG9ycyhkZXYsIGNvdW50KSB0byBhY2NlcHQKPiByZWd1bGF0b3JzIGNvdW50PTAgYW5kIHRo
ZW4gYWN0IGFzIGRldl9wbV9vcHBfZ2V0X29wcF90YWJsZShkZXYpLCB3aWxsCj4gaXQgYmUgYWNj
ZXB0YWJsZT8KClNldHRpbmcgcmVndWxhdG9ycyBmb3IgY291bnQgYXMgMCBkb2Vzbid0IHNvdW5k
IGdvb2QgdG8gbWUuCgpCdXQsIEkgdW5kZXJzdGFuZCB0aGF0IHlvdSBkb24ndCB3YW50IHRvIGhh
dmUgdGhhdCBpZiAoaGF2ZV9yZWd1bGF0b3IpCmNoZWNrLCBhbmQgaXQgaXMgYSBmYWlyIHJlcXVl
c3QuIFdoYXQgSSB3aWxsIGluc3RlYWQgZG8gaXMsIGFsbG93IGFsbApkZXZfcG1fb3BwX3B1dCoo
KSBBUEkgdG8gc3RhcnQgYWNjZXB0aW5nIGEgTlVMTCBwb2ludGVyIGZvciB0aGUgT1BQCnRhYmxl
IGFuZCBmYWlsIHNpbGVudGx5LiBBbmQgc28geW91IHdvbid0IGJlIHJlcXVpcmVkIHRvIGhhdmUg
dGhpcwp1bndhbnRlZCBjaGVjay4gQnV0IHlvdSB3aWxsIGJlIHJlcXVpcmVkIHRvIHNhdmUgdGhl
IHBvaW50ZXIgcmV0dXJuZWQKYmFjayBieSBkZXZfcG1fb3BwX3NldF9yZWd1bGF0b3JzKCksIHdo
aWNoIGlzIHRoZSByaWdodCB0aGluZyB0byBkbwphbnl3YXlzLgoKLS0gCnZpcmVzaApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxp
c3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJp
dmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
